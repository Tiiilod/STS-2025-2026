import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String username;
  final String password;
  const LoginPage({super.key, required this.username, required this.password});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obsecured = true;
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login Page", style: TextStyle(color: Colors.white, fontSize: 30,))),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("images/photo.jpg"),
              Text("Login ke akun anda", style: TextStyle(fontSize: 20),),
              SizedBox(height: 25),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: passwordController,
                obscureText: _obsecured,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obsecured = !_obsecured;
                      });
                    },
                    icon: Icon(
                      _obsecured ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 45, 
                width: 500, 
                decoration: BoxDecoration(
                  color: Colors.lightBlue, 
                  borderRadius: BorderRadius.circular(100)), 
                  child: Center(
                    child: Text(
                      "Login", 
                      style: TextStyle(
                        fontSize: 18, 
                        color: Colors.white),
              ),
              ),
              ),
              SizedBox(height: 25,),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text("Belum punya akun? "), 
                Text("Sign Up", 
                style: TextStyle(
                  color: Colors.deepPurple,),),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
