import 'package:flutter/material.dart';
import 'package:medicare/core/constants/app_spacing.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add a global form key to control validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicare"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ), // Add more padding for better spacing
          child: SingleChildScrollView(
            // Prevent overflow on smaller screens
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Image.asset("assets/images/google.png"),
                AppSpacing.h18,
                Text(
                  'Login with your number and password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 25),
                Form(
                  key: _formKey, // Assign the global form key
                  child: Column(
                    children: [
                      // Phone number input field
                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          } else if (value.length != 11) {
                            return 'Please enter a valid mobile number.';
                          }
                          return null;
                        },
                      ),
                      AppSpacing.h12,
                      // Password input field
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: Icon(Icons.lock),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length <= 6) {
                            return 'Password must be at least 6 characters.';
                          }
                          return null;
                        },
                      ),
                      AppSpacing.h22,
                      // Login button with validation
                      Container(height: 52, width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          onPressed: () {
                            // Check if the form is valid
                            if (_formKey.currentState?.validate() ?? false) {
                              // If valid, show a Snackbar
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Processing Login...')),
                              );
                            }
                            print(phoneController.text);
                            print(passwordController.text);
                            phoneController.clear();
                            passwordController.clear();
                          },
                          child: Text("Login", style: TextStyle(fontSize: 18),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
