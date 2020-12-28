import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double dWidth = MediaQuery.of(context).size.width;
    final double dHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: dHeight,
        width: dWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFE7048),
              Color(0xFFD24886),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            tileMode: TileMode.clamp,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: dHeight / 9,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "hello".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Login to continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white10,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.all(
                            new Radius.circular(14.0),
                          ),
                        ),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.all(24),
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white10,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.all(
                            new Radius.circular(14.0),
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.all(24),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        suffixText: "forget?".toUpperCase(),
                        // suffixIcon: IconButton(
                        //   icon: Text(
                        //     "Forgot?".toUpperCase(),
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //     ),
                        //   ),
                        //   onPressed: () {},
                        // ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: const StadiumBorder(),
                    gradient: LinearGradient(
                        colors: <Color>[Color(0xffF87056), Color(0xffD44881)]),
                  ),
                  child: FlatButton(
                    padding:
                        EdgeInsets.fromLTRB(dWidth / 4, 24, dWidth / 4, 24),
                    onPressed: () {},
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(color: Colors.white),
                    ),
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.google),
                      color: Colors.white,
                      iconSize: 36,
                      onPressed: () {
                        print("Pressed");
                      },
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      color: Colors.white,
                      iconSize: 36,
                      onPressed: () {
                        print("Pressed");
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "sing up now".toUpperCase(),
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xffFF7750),
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
