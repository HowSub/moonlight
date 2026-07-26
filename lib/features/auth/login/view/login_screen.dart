import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moonlight/core/service/auth_service.dart';
import 'package:moonlight/core/ui/main_decoration.dart';
import 'package:moonlight/features/auth/login/view/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();
  }

  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isShow = true;

  bool getIsShow() {
    return _isShow;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: mainDecoration,
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
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: .w600,
                          ),
                        ),
                        const SizedBox(height: 20),

                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              emailInput(_emailController),

                              const SizedBox(height: 20),

                              passwordField(_passwordController),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),

                        signInButton(),

                        const SizedBox(height: 20),

                        withGoogleButton(),

                        SizedBox(height: 20),

                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: .w600,
                            ),
                            children: [
                              TextSpan(text: "Don't have an account yet? "),
                              TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.go('/register');
                                  },
                              ),
                            ],
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
    );
  }

  // METHODS

  TextFormField passwordField(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter password';
        }
        if (value.length < 6) {
          return 'At least 6 characters';
        }
        return null;
      },
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xFFFD5E52)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        errorStyle: TextStyle(color: Color(0xFFFD5E52)),
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

  SizedBox signInButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            String email = _emailController.text.trim().toLowerCase();
            String password = _passwordController.text.trim().toLowerCase();

            try {
              await _authService.signIn(email, password);
            } catch (e) {
              SnackBar(content: Text(e.toString()));
            }
          }
        },
        child: const Text('SignIn', style: TextStyle(color: Color(0xFF002A4D))),
      ),
    );
  }
}
