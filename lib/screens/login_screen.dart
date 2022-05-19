import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verum_flutter/utils/colors.dart';
import 'package:verum_flutter/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _pwController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              
              // svg logo
              const Text('WELCOME TO VERUM', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 24
                )
              ),
              // SvgPicture.asset('assets/<foo>.svg', color: primaryColor, height: 64)
              const SizedBox(height: 24),

              // text fields
              TextFieldInput(
                textEditingController: _emailController, 
                hintText: "Email", 
                textInputType: TextInputType.emailAddress
                ),       

              const SizedBox(height: 24),

              TextFieldInput(
                textEditingController: _pwController, 
                hintText: "Password", 
                textInputType: TextInputType.text,
                isPassword: true,
              ),              

              const SizedBox(height: 24),
              // Login button
              InkWell(
                child: Container(
                  child: const Text('Login'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                    color: blueColor
                  ),
                ),
              ),
              
              const SizedBox(height: 12),
              
              Flexible(child: Container(), flex: 2),

              // Transition to Sign Up 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Don't have an account? "),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Sign up.", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ))
    );
  }
}