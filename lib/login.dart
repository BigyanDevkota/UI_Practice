import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 204, 206, 208),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                  bottomRight: Radius.circular(64),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 80),
                  const CircleAvatar(
                    radius: 50,
                    foregroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/006/240/761/small/initial-letter-b-tech-logo-design-template-element-eps10-vector.jpg'),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 34.0,
                      right: 34.0,
                      bottom: 22.0,
                      top: 34.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      height: 450,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 30),
                              ),
                              SizedBox(height: 32),
                              const TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_rounded,
                                  ),
                                  prefixIconColor: Colors.blue,
                                  hintText: 'Email',
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  focusColor: Colors.blue,
                                  // border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 12),
                              const TextField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock,
                                  ),
                                  prefixIconColor: Colors.blue,
                                  hintText: 'Password',
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold),
                                  focusColor: Colors.blue,
                                  // border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 12),
                               const Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 18),
                              ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.blue),
                                ),
                                onPressed: () {
                                },
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 30, right: 30),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              Text("- OR -"),
                              SizedBox(height: 12),
                              const CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 26,
                                child: Text(
                                  'G',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Don't have an Account ?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
