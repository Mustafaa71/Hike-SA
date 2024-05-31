import 'package:elegant_notification/elegant_notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/constants.dart';
import 'package:flutter_project_2/models/event.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future signUp() async {
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passController.text.trim(),
      );
      print('$result');
    } catch (e) {
      print('$e');
    }
    ElegantNotification.error(
      title: const Text('Wrong access'),
      description: const Text('You enter a wrong information try again'),
      animationDuration: const Duration(seconds: 2),
    ).show(context);

    Navigator.of(context).pushNamed('/');
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    userIdController.dispose();
    passController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/hike-sa-low-resolution-logo-black-on-transparent-background.png',
                  color: Constants.kIconsColor,
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    controller: userIdController,
                    decoration: const InputDecoration(
                      hintText: 'User Id',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    controller: passController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20.0),
                      contentPadding: EdgeInsets.all(15.0),
                      border: InputBorder.none,
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20.0),
                InkWell(
                  onTap: (() {
                    signUp();
                    setState(() {
                      Registration.information = Registration(
                        name: nameController.text,
                        email: emailController.text,
                        id: userIdController.text,
                      );
                    });
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: Constants.kIconsColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    width: double.infinity,
                    child: const Row(
                      children: [
                        Text(
                          'Enter',
                          style: TextStyle(color: Constants.kFontsColor, fontSize: 25.0),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 40.0,
                          color: Constants.kFontsColor,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?  ',
                      style: TextStyle(color: Constants.kIconsColor, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      onPressed: () {},
                      mini: true,
                    ),
                    const SizedBox(width: 12.0),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.g_mobiledata_rounded,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
