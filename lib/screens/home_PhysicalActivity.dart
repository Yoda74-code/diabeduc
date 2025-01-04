import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/timezone.dart' as tz;

class PhysicalActivity extends StatefulWidget {
  const PhysicalActivity({Key? key}) : super(key: key);

  @override
  State<PhysicalActivity> createState() => _PhysicalActivityState();
}

class _PhysicalActivityState extends State<PhysicalActivity> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  double _progress = 0;
  String _activity = '';
  int _stepCount = 0;
  int _cupsGoal = 8; // Goal for number of cups drank
  int _cupsDrank = 0; // Number of cups drank
  Stream<StepCount>? _stepCountStream;

  DateTime? _startTime;
  double _bpm = 0;

  // Define the daily goal for steps
  late int dailyStepGoal;

  // track the total steps taken
  int _totalSteps = 0;

  @override
  void initState() {
    super.initState();
    _requestPermission();
    _initPlatformState();
    _initializeNotifications();
    dailyStepGoal = 10000; // Initialize dailyStepGoal
  }

  Future<void> _requestPermission() async {
    final sensorsStatus = await Permission.sensors.request();
    print('Sensor permission status: $sensorsStatus');
    if (sensorsStatus != PermissionStatus.granted) {
      print('Permission denied for activity recognition');
    }

    final notificationStatus = await Permission.notification.request();
    print('Notification permission status: $notificationStatus');
    if (notificationStatus != PermissionStatus.granted) {
      print('Permission denied for notifications');
    }
  }

  Future<void> _initPlatformState() async {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream?.listen((StepCount event) {
      setState(() {
        _stepCount = event.steps;
        _updateBPMValue();
        _updateStepCount(1); // Update total steps whenever new step data is received
      });
    }).onError((dynamic error) {
      print("Error reading step count data: $error");
    });
  }

  Future<void> _initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('splash');
    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _updateProgress(String activity, double progress) {
    setState(() {
      _progress = progress;
      _activity = activity;
    });
  }

  void _updateBPMValue() {
    if (_startTime == null) {
      _startTime = DateTime.now();
      return;
    }
    final duration = DateTime.now().difference(_startTime!);
    final minutes = duration.inSeconds / 60;
    final stepsPerMinute = _stepCount / minutes;
    setState(() {
      _bpm = stepsPerMinute * 0.7; // Adjust this value based on your logic
    });
  }

  void _updateCupsDrank(int cups) {
  setState(() {
    _cupsDrank += cups;
    _progress = (_cupsDrank / _cupsGoal).clamp(0.0, 1.0); // Update progress based on cups drank and goal
  });

  print('Cups drank: $_cupsDrank');
  print('Progress: $_progress');

  if (_cupsDrank >= _cupsGoal) {
    print('Cups goal reached, showing notification');
    _showGoalReachedNotification('water'); // Call notification method when water goal is met
  }
}





void _handleCupButtonClick() {
 

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Did you drink a cup?'.tr),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            setState(() {
              _cupsDrank += 1; // Increment the cups drank count
              _updateCupsDrank(0); // Call _updateCupsDrank method after incrementing the cups drank count
              _progress = (_cupsDrank / _cupsGoal).clamp(0.0, 1.0); // Update progress based on cups drank and goal
              _updateProgress('Water', _progress); // Update the progress indicator with cups drank
              
            });
            Navigator.pop(context); // Close the dialog
          },
          child: Text('Yes'.tr),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context), // Close the dialog without updating
          child: Text('No'.tr),
        ),
      ],
    ),
  );
}




  

Future<void> _showCupNotification() async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'Cup Notification',
    'Reminds you to drink a cup of water',
    importance: Importance.high,
    priority: Priority.high,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  // Calculate the next notification time, starting from now
  tz.TZDateTime scheduledTime = tz.TZDateTime.now(tz.local).add(const Duration(hours: 2));

  // Schedule the notification to repeat every 2 hours
  await flutterLocalNotificationsPlugin.zonedSchedule(
    0,
    'Drink a Cup',
    'Remember to drink a cup of water!',
    scheduledTime,
    platformChannelSpecifics, // Use platformChannelSpecifics instead of const NotificationDetails
    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
    payload: 'cup_notification',
    androidScheduleMode: AndroidScheduleMode.exact,
    //androidAllowWhileIdle: true, 
  );

  // Calculate the remaining time until the notification triggers
  Duration remainingTime = scheduledTime.difference(tz.TZDateTime.now(tz.local));
  print('Next cup notification scheduled at: $scheduledTime');
  print('Remaining time until notification: ${remainingTime.inHours} hours, ${remainingTime.inMinutes.remainder(60)} minutes');
}




  // Method to update total steps and check if daily goal is met
  void _updateStepCount(int steps) {
  setState(() {
    _totalSteps += steps;
  });

  if (_totalSteps >= dailyStepGoal) {
    _showGoalReachedNotification('steps'); // Call notification method when step goal is met
  }
}

  // Method to change the daily goals
void _changeGoal() {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Change Goals'.tr),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Daily Water Goal'.tr),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _cupsGoal = int.tryParse(value) ?? _cupsGoal;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Daily Step Goal'.tr),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                dailyStepGoal = int.tryParse(value) ?? dailyStepGoal;
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context), // Close the dialog without updating
          child: Text('Cancel'.tr),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _cupsDrank = 0; // Reset cups drank count
              _totalSteps = 0; // Reset total steps count
            });
            Navigator.pop(context); // Close the dialog
          },
          child: Text('Save'.tr),
        ),
      ],
    ),
  );
}


Future<void> _showGoalReachedNotification(String goalType) async {
  String message;
  if (goalType == 'water' || goalType == 'cups') {
    message = 'Congratulations! You have reached your daily goal.'.tr;
  } else if (goalType == 'steps') {
    message = 'Congratulations! You have reached your daily step goal.'.tr;
  } else {
    message = 'Congratulations! You have reached your daily goal.'.tr;
  }

  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'Goal Reached Notification',
    'Notifies you when you reach your daily goal',
    importance: Importance.high,
    priority: Priority.high,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
    0,
    'Goal Reached',
    message,
    platformChannelSpecifics,
  );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Tracker'.tr),
        actions: <Widget>[
          IconButton(
            onPressed: _changeGoal,
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Activity: $_activity'.tr,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 7.0,
                percent: _progress,
                center: Text(
                  '${(_progress * 100).toStringAsFixed(1)}%',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                progressColor: Colors.blue,
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: <Widget>[
                  _buildActivityCard('Calories Burned'.tr, (_stepCount * 0.1).toInt(), Icons.local_fire_department),
                  _buildActivityCard('BPM', _bpm.toInt(), Icons.favorite),
                  GestureDetector(
                    onTap: _handleCupButtonClick,
                    child: _buildActivityCard('Cups'.tr, _cupsDrank, Icons.local_drink),
                  ),
                  _buildActivityCard('Steps'.tr, _totalSteps, Icons.directions_walk),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivityCard(String activity, int value, IconData iconData) {
    // Calculate calories burned
    int caloriesBurned = (value * 0.1).toInt();

    // Determine the value to display based on the activity
    String displayValue;
    if (activity == 'Cups') {
      displayValue = '$_cupsDrank'; // Display cups drank
    } else {
      displayValue = '$value'; // Display other activity values
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          if (activity == 'Calories Burned') {
            _activity = 'Calories Burned';
            _progress = caloriesBurned / 1000; // Assuming value is in calories, converting to kilocalories (Kcal) for better visualization
          } else if (activity == 'BPM') {
            _activity = 'Heart Rate (BPM)';
            _progress = value.toDouble(); // BPM value
          } else if (activity == 'Cups') {
            _handleCupButtonClick();
          } else if (activity == 'Steps') {
            _activity = 'Steps';
            _progress = value.toDouble();
          }
        });
      },
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                iconData,
                size: 40,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Text(
                activity,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              Text(
                displayValue,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PhysicalActivity(),
  ));
}
