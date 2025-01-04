import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';


class ChatBott extends StatefulWidget {
  const ChatBott({super.key});

  @override
  State<ChatBott> createState() => _ChatBottState();
}

class _ChatBottState extends State<ChatBott> {
  ChatUser muself = ChatUser(id: "1", firstName: "SHARJEEL");
  ChatUser bot = ChatUser(id: "2", firstName: "Chat GPT");
  List<ChatMessage> allMassages = [];
  List<ChatUser> typing = [];
  final String apiKey = dotenv.get('API_KEY');

  // AIzaSyBZqCqRiYQmWsjxE2aQdssPz91JMTd9IjQ
  final ourUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyCggHDYdtY61p4klwLoiHPNreVwmhhFFNU";
  final header = {'Content-Type': 'application/json'};

  getData(ChatMessage m) async {
    typing.add(bot);
    allMassages.insert(0, m);
    setState(() {});
    var data = {
      "contents": [
        {
          "parts": [
            {"text": m.text}
          ]
        }
      ]
    };

    await http
        .post(Uri.parse(ourUrl), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);
        (result["candidates"][0]["content"]["parts"][0]["text"]);
        ChatMessage m1 = ChatMessage(
          user: bot,
          createdAt: DateTime.now(),
          text: result["candidates"][0]["content"]["parts"][0]["text"],
        );
        allMassages.insert(0, m1);
      } else {
        ("Error occurred");
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashChat(
        messageOptions: const MessageOptions(
            showTime: true,
            textColor: Colors.blue,
            containerColor: Colors.black),
        typingUsers: typing,
        currentUser: muself,
        onSend: (ChatMessage m) {
          getData(m);
        },
        messages: allMassages,
      ),
    );
  }
}
