import 'package:flutter/material.dart';
import 'package:quize_app/inputField.dart';
import 'style.dart';

void main() {
  runApp(Quize());
}

class Quize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Verfication(),
    );
  }
}

class Verfication extends StatefulWidget {
  @override
  _VerficationState createState() => _VerficationState();
}

class _VerficationState extends State<Verfication> {
  bool _showPass1 = true;
  bool _showPass2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          children: [
            InputField(
              labeltext: "Name",
              hinttext: "ex: metwaly",
              kType: TextInputType.text,
              pIcon: Icons.person,
              visability: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              labeltext: "Email",
              hinttext: "ex: metwaly@example.com",
              kType: TextInputType.emailAddress,
              pIcon: Icons.email_rounded,
              visability: false,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              labeltext: "Password",
              hinttext: "ex: M_5w79@p",
              kType: TextInputType.visiblePassword,
              sIcon: IconButton(
                icon: _showPass1 == true
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    if (_showPass1 == true)
                      _showPass1 = false;
                    else
                      _showPass1 = true;
                  });
                },
              ),
              visability: _showPass1,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
              labeltext: "Confirm Password",
              hinttext: "ex: M_5w79@p",
              kType: TextInputType.visiblePassword,
              sIcon: IconButton(
                icon: _showPass2 == true
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    if (_showPass2 == true)
                      _showPass2 = false;
                    else
                      _showPass2 = true;
                  });
                },
              ),
              visability: _showPass2,
            ),
            SizedBox(
              height: 15,
            ),
            InputField(
                labeltext: "Phone",
                hinttext: "ex: 1234567890",
                kType: TextInputType.number,
                visability: false),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Submit"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(sBluegay),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
