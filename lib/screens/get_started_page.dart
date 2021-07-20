import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('#f5f6f8'),
        child: Column(children: [
          Spacer(),
          Text(
            'BookTracker',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 15,
          ),
          Text(' "Read. Change. Yourself"',
              style: TextStyle(
                color: Colors.black26,
                fontSize: 29,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 50,
          ),
          TextButton.icon(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: HexColor('#69639f'),
                  textStyle: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              icon: Icon(Icons.login_rounded),
              label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sign in to get started'))),
          Spacer()
        ]),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#cedeed'),
              )),
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Text('Form goes here'),
                ),
                TextButton.icon(
                  onPressed: () {}, 
                  icon: Icon(Icons.portrait_rounded),
                  style: TextButton.styleFrom(
                      primary: HexColor('#fd5b28')
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                      ) 
                  ),
                  label:Text('Create Account'))
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#b9c2d1'),
              ))
        ],
      )),
    );
  }
}
