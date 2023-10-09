import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void loginuser() {
    print("login successful");
  }

  void OnFlutterLogoHover() {
    Fluttertoast.showToast(msg: "This is a Flutter App!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text("Let's sign you in",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5)),
            ),
            Text('Welcome back!\nYou\'ve have been missed',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w800)),
            Image.network(
              "https://picsum.photos/250?image=9",
              width: 200,
              height: 200,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Type your username",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder()),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Type your password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  loginuser();
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                )),
            OutlinedButton(onPressed: null, child: FlutterLogo()),
            GestureDetector(
              onTap: () {
                //To do - to navigate to browser with given text
                print("text clicked");
              },
              child: Column(
                children: [
                  Text('Find me at'),
                  Text('muskankansal.hashnode.dev')
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
