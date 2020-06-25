import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
 
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _passwordController = TextEditingController();

  void _signInWithEmailAndPassword() async {
    final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                            )   
    ).user;
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    
    final logintext = Text('Login', style: TextStyle(fontSize:40),);
    final usernameTxtfield = TextField(
      controller: _emailController,
      decoration: InputDecoration(
        labelText: 'Enter email',
        icon: Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), 
        ),
      ),
    );

    final passwordTxtfield = TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        labelText: 'Enter password',
        icon: Icon(Icons.security),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

    final submitbutton = RaisedButton(
      color: Colors.orangeAccent,
      child: Text('Login Now'),
      onPressed: () {
        //code
        _signInWithEmailAndPassword();
      },
    );

    final bgcontainer = Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightGreen],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget> [
              SizedBox(height:200),
              logintext,

              Padding(
                padding: EdgeInsets.fromLTRB(70, 20, 20, 0),
                child: usernameTxtfield,
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(70, 20, 20, 0),
                child: passwordTxtfield,
              ),

              Container(
                margin: EdgeInsets.fromLTRB(70, 20, 20, 0),
                width: 300,
                height: 50,
                child: submitbutton),
            ]
          ),
    );

    

    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Login'),
        // ),
        body: bgcontainer,
     
    );
  }
}