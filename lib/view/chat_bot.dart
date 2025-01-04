// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/controller/chat_bot.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import '../theme/main_colors.dart';
// import 'widgets/message.dart';

// class ChatBot extends StatefulWidget {
//   const ChatBot({super.key});

//   @override
//   State<ChatBot> createState() => _ChatBotState();
// }

// class _ChatBotState extends State<ChatBot> {
//   // final List<Message> messages = [];
//   // TextEditingController userInput = TextEditingController();
//   // Future talk(String text) async {
//   //   final model = GenerativeModel(
//   //       model: 'gemini-pro', apiKey: );
//   //   final prompt = text;
//   //   setState(() {
//   //     messages
//   //         .add(Message(isUser: true, message: prompt, date: DateTime.now()));
//   //     userInput.clear();
//   //   });
//   //   final content = [Content.text(prompt)];
//   //   final response = await model.generateContent(content);
//   //   setState(() {
//   //     messages.add(Message(
//   //         isUser: false, message: response.text ?? "", date: DateTime.now()));
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     ChatBotController chatBotController = Get.find();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.bg,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               navigator!.pop();
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios_outlined,
//               color: Colors.black,
//             )),
//         title: const Text(
//           "ChatBot",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//             color: Colors.white,
//             image: DecorationImage(
//                 image: AssetImage("assets/images/logo.png"),
//                 fit: BoxFit.cover)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             GetBuilder<ChatBotController>(
//               builder: (contx) => Expanded(
//                   child: ListView.builder(
//                       itemCount: chatBotController.messages.length,
//                       itemBuilder: (context, index) {
//                         final message = chatBotController.messages[index];
//                         return Messages(
//                             isUser: message.isUser,
//                             message: message.message,
//                             date: DateFormat('HH:mm').format(message.date));
//                       })),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 15,
//                     child: TextFormField(
//                       textInputAction: TextInputAction.next,
//                       keyboardType: TextInputType.emailAddress,
//                       validator: (val) {
//                         if (val!.isEmpty) {
//                           return "fname".tr;
//                         }
//                         return null;
//                       },
//                       controller: chatBotController.userInput,
//                       onSaved: (text) {
//                         chatBotController.text = text;
//                       },
//                       onChanged: (text) {
//                         chatBotController.text = text.trim();
//                       },
//                       decoration: InputDecoration(
//                         hintText: "Text.....",
//                         hintStyle: const TextStyle(color: Colors.black),
//                         errorMaxLines: 2,
//                         prefixIcon: const Icon(
//                           Icons.message,
//                           color: Colors.black,
//                           size: 35,
//                         ),
//                         contentPadding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 16),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: AppColors.kLine),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         fillColor: Colors.white,
//                         filled: true,
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.black),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(color: AppColors.kLine),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: AppColors.KError),
//                           borderRadius: BorderRadius.circular(40),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   IconButton(
//                       padding: const EdgeInsets.all(12),
//                       iconSize: 30,
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.black),
//                           foregroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                           shape:
//                               MaterialStateProperty.all(const CircleBorder())),
//                       onPressed: () {
//                         chatBotController.talk(chatBotController.text!);
//                       },
//                       icon: const Icon(
//                         Icons.send,
//                         size: 25,
//                       ))
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//