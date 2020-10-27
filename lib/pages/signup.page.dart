import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10.0,
          left: 40.0,
          right: 40.0,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              alignment: Alignment(
                0.0,
                1.15,
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/login-avatar.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Container(
                height: 56.0,
                width: 56.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Colors.black87,
                      Colors.grey,
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(56.0),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Name",
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
              autofocus: true,
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
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1.0],
                  colors: [
                    Colors.black87,
                    Colors.grey,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancel",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
