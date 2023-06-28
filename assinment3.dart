import 'package:flutter/material.dart';
//import 'package:practice1/screens/home_page.dart';
//import 'package:practice1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "karan";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.adjust_sharp),
                      hintText: "Enter Username",
                      labelText: "Username"
                    ),
                    onChanged: (value) {
                      name = value;
                      SizedBox(height: 10,);
                      setState(() {
                        
                      });
                    }
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      icon: Icon(Icons.password) ,
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton?50:8),
                    child: InkWell(
                      splashColor: Colors.red,
                      onTap: () => {Navigator.pushNamed(context, "/home")},
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton?50:150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton?
                        Icon(Icons.done,color: Colors.white,): Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
