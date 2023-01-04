import 'package:flutter/material.dart';
import 'package:login_form_task/forgot_pass.dart';
import 'package:login_form_task/login_now.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login_Form',
      home: login_form(),
    );
  }
}

class login_form extends StatefulWidget {
  const login_form({Key? key}) : super(key: key);

  @override
  State<login_form> createState() => _login_formState();
}

class _login_formState extends State<login_form> {
  final Email_controller = TextEditingController();
  final Password_controller = TextEditingController();

  bool status = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shape: const OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(20),
        //       bottomRight: Radius.circular(20),
        //     ),
        //     borderSide: BorderSide(width: 1)),
        bottomOpacity: 0.5,
        backgroundColor: Colors.green,
        title: const Text('Login Form Task',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  children:
              const [
                Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Login to your account',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                  counterText: null,
                  hintText: 'Enter your email',
                  // icon: const Icon(
                  //   Icons.email_outlined,
                  // ),
                  //errorText: 'Please enter valid email',
                  iconColor: Colors.black,
                ),
                controller: Email_controller,
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  //   keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    counterText: null,
                    hintText: 'Enter password',
                    // icon: const Icon(
                    //   Icons.password,
                    // ),
                    //errorText: 'Please enter valid email',
                    iconColor: Colors.black,
                  ),
                  controller: Password_controller),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value!;
                      });
                    },
                  ),
                  const Text('Remember me',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                  SizedBox(
                    width: 45,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => forgotpassword(),
                            ));
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login_now(),
                          ));
                    },
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login_now(),
                          ));
                    },
                    child: const Text(
                      'Continue with Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
