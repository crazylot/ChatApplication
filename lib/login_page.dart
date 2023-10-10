import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void loginuser() {

    if (_formKey.currentState!=null && _formKey.currentState!.validate()) {
      print(usernamecontroller.text);
      print(passwordcontroller.text);
      print("login successful");
    } else {
      print("login unsuccessfull");
    }
  }

  /*void OnFlutterLogoHover() {
    Fluttertoast.showToast(msg: "This is a Flutter App!");
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                SizedBox(height: 24),
                Form(
                  key: _formKey,
                  child: Column(

                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.length < 5) {
                            return "please enter username with characters greater than 5";
                          } else if (value == null && value!.isEmpty) {
                            return "Please type your username";
                          }
                          return null;
                        },
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                            hintText: "Type your username",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 24),
                      TextFormField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Type your password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                    onPressed: () {
                      loginuser();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w800),
                    )),
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
