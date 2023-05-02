import 'package:flutter/material.dart';
import 'package:viacryptoapp_1/login%20page/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 66, 70),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 10.5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const MyLoginPage();
                    },
                  ));
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white70,
                  size: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              'Please fill the input below here',
              style: TextStyle(
                  color: Colors.white30,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 30,
            ),
            detailsField(),
          ],
        ),
      ),
    );
  }

  detailsField() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: const Text(
                  'Full Name',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.person_outlined,
                  color: Colors.white70,
                ),
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: const Text(
                  'Phone',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: Colors.white70,
                ),
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.mail_outlined,
                  color: Colors.white70,
                ),
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: const Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.lock_outlined,
                  color: Colors.white70,
                ),
                fillColor: Colors.white12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.1),
                ),
              ),
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(295, 50),
                  backgroundColor: Colors.orange[900]),
              onPressed: null,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'already have a account?',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyLoginPage();
                    },
                  ));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
