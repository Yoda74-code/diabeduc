import 'package:flutter_application_1/controller/chat_bot.dart';
import 'package:get/get.dart';

class ChatBotBinding implements Bindings {
@override
void dependencies() {
  Get.put(ChatBotController());
  }
}