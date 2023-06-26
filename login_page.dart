import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            height: 20,),
        Text("Welcome",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  icon: Icon(Icons.adjust_sharp),
                  hintText: "Enter Username",
                  labelText: "Username"
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    icon: Icon(Icons.password),
                    hintText: "Enter Password",
                    labelText: "Password"
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed: (){},
              child: Text("Login"),
              style: TextButton.styleFrom(),
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}