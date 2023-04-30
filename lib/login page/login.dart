import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 59, 66, 70),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _card(),
            SizedBox(
              height: 48,
            ),
            _bottomSide(),
          ],
        ),
      ),
    );
  }

  _card() {
    return Container(
      height: 270,
      width: 400,
      child: Card(
        margin: EdgeInsets.all(0.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.0)),
        child: Image(
          image: AssetImage(
              'assets/WhatsApp_Image_2023-04-25_at_2.59.57_PM-removebg-preview.png'),
        ),
      ),
    );
  }

  _bottomSide() {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 210),
            child: Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 13,),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextFormField(
              decoration: InputDecoration(
                  label: const Text(
                    'Email',
                    style: TextStyle(color: Colors.white70),
                  ),
                  fillColor: Colors.white12,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(6.0))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextFormField(
              decoration: InputDecoration(
                  label: const Text(
                    'Password',
                    style: TextStyle(color: Colors.white70),
                  ),
                  fillColor: Colors.white12,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(6.0))),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(295, 50),
              backgroundColor: Colors.orange[900]
            ),
            onPressed: null, child:const Text('Login',style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),)),
            const SizedBox(height: 9.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do not have an account?',style: TextStyle(
                  color: Colors.white70,
                  fontSize: 10,
                ),),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  // onDoubleTap: () {
                  //   showDialog(context: context, builder: (context) => ,)
                  // },
                  child: Text('Sign Up', style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 10,
                  ),),
                )
              ],
            )
        ],
      ),
    );
  }
}
