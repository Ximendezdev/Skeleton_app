import 'package:flutter/material.dart';
import 'package:skeleton_app/pages/reset-password.page.dart';
import 'package:skeleton_app/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60.0,
          left: 40.0,
          right: 40.0,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128.0,
              height: 128.0,
              child: Image.asset("assets/login-avatar.png"),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Container(
              height: 40.0,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  "Recovery Password",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.grey,
                    Colors.black87,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login with Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/fb-icon.png"),
                          width: 28.0,
                          height: 28.0,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 40.0,
              child: FlatButton(
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
