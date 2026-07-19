import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login/features/register/widgets/rich_text_link.dart';
import 'package:login/features/register/widgets/signup_button.dart';
import 'package:login/features/register/widgets/with_google_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();

    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  bool _isShow = true;

  dynamic emailController;
  dynamic passwordController;
  dynamic repeatPasswordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000e5e), Color(0xFF141C48), Color(0xFF485A6E)],
            begin: AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Image.asset('assets/images/logo.png')),

                Center(
                  child: Container(
                    padding: EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: const Color(0x40FFFFFF),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: .w600,
                          ),
                        ),
                        const SizedBox(height: 30),

                        emailInput(),

                        const SizedBox(height: 30),

                        passwordField(),

                        const SizedBox(height: 30),

                        repeatPasswordField(),

                        const SizedBox(height: 30),

                        signUpButton(),

                        const SizedBox(height: 20),

                        withGoogleButton(),

                        SizedBox(height: 20),

                        richTextLink(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // METHODS

  TextField emailInput() {
    return TextField(
      controller: emailController,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'example@gmail.com',
        label: Text('Email', style: TextStyle(color: Colors.white)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.email, color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintStyle: TextStyle(color: const Color.fromARGB(121, 255, 255, 255)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  TextField passwordField() {
    return TextField(
      controller: passwordController,
      obscureText: _isShow,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Enter password...',
        label: Text('Password', style: TextStyle(color: Colors.white)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: () => setState(() {
            _isShow = !_isShow;
          }),
          icon: Icon(
            _isShow ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
        ),
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintStyle: TextStyle(color: const Color.fromARGB(121, 255, 255, 255)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  TextField repeatPasswordField() {
    return TextField(
      controller: repeatPasswordController,
      obscureText: _isShow,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Repeat password...',
        label: Text('Repeat Password', style: TextStyle(color: Colors.white)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: () => setState(() {
            _isShow = !_isShow;
          }),
          icon: Icon(
            _isShow ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
        ),
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintStyle: TextStyle(color: const Color.fromARGB(121, 255, 255, 255)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
