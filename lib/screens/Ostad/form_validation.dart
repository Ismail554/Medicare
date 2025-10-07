import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class -3"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/google.png"),
          Text('Login with your number and password.'),
          SizedBox(height: 25),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Phone Number'),
                  validator: (value) => ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
