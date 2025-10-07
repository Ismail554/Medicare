import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare/data/remote/api/urls.dart';
import 'package:medicare/data/remote/api_helper.dart';
import 'package:medicare/utils/util_helper.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final TextEditingController promptController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: const Icon(Icons.smart_toy_outlined, color: Colors.black),
            ),
            const SizedBox(width: 10),
            const Text(
              "Medicare Bot",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.black87)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),

                controller: promptController,
                enableSuggestions: true,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 188, 188, 208),
                  filled: true,
                  hintText: 'Write your thoughts.',
                  hintStyle: mTextStyle16(mColor: AppColors.mGreyColor),
                  prefixIcon: Icon(Icons.mic_rounded),
                  suffixIcon: InkWell(
                    onTap: () {
                      ApiHelper().generateAImsg(
                        url: Urls.CHAT_COMPLETION_API,
                        prompt: promptController.text,
                      );
                      promptController.clear();
                    },
                    child: Icon(Icons.send_sharp),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
