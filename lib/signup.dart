import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
import 'package:project/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: size.height, // Ensures the content fits on smaller screens
            ),
            child: IntrinsicHeight(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/images/img_27.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Top right image
                    Padding(
                      padding: EdgeInsets.only(top: 110, left: size.width * 0.10),
                      child: Image.asset(
                        'assest/images/img_26.png',
                        height: size.height * 0.10,
                        width: size.width * 0.6,
                      ),
                    ),
                    Image.asset(
                      'assest/images/img_28.png',
                      height: size.height * 0.08,
                      width: size.width * 0.3,
                    ),
                    Image.asset(
                      'assest/images/img_29.png',
                      height: size.height * 0.01,
                      width: size.width * 0.6,
                    ),
                    // Form fields and elements
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            SizedBox(height: size.height * 0.05),
                            // Full Name TextField
                            TextFormField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                hintText: 'Enter your username',
                                labelText: 'Full Name',
                                prefixIcon: const Icon(
                                    Icons.person, color: Colors.green),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            // Email TextField
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                labelText: 'Email',
                                prefixIcon: const Icon(Icons.email,
                                    color: Colors.green),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(
                                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            // Password TextField
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                labelText: 'Password',
                                prefixIcon: const Icon(Icons.lock,
                                    color: Colors.green),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            // Confirm Password TextField
                            TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Confirm password',
                                labelText: 'Confirm Password',
                                prefixIcon: const Icon(Icons.lock,
                                    color: Colors.green),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                } else if (value != _passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            // Checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  activeColor: Colors.green,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isChecked = value ?? false;
                                    });
                                  },
                                ),
                                const Text('I accept the policy and terms'),
                              ],
                            ),
                            if (!_isChecked)
                              const Text(
                                'You must accept the terms and policy',
                                style: TextStyle(color: Colors.red),
                              ),
                            const SizedBox(height: 20),
                            // Signup Button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff08A562),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 15),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate() &&
                                    _isChecked) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Homepage()),
                                  );
                                }
                              },
                              child: const Text("Signup"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
