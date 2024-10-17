import 'package:flutter/material.dart';

import '../widgets/app_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  double? _deviceHeight, _deviceWidth;
  String? _user;
  String? _password;
  String? _confirmpassword;
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth! * 0.05,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _titleWidget(),
              _registrationForm(),
              _registerbutton(),
              _registerPageLink()
            ],
          ),
        ),
      ),
    ));
  }

  Widget _titleWidget() {
    return const Text(
      "Chatify",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    );
  }

  Widget _registrationForm() {
    return Container(
      height: _deviceHeight! * 0.50,
      child: Form(
        key: _registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _nameTextField(),
            _passwordTextField (),
            _confirmPassword()
          ],
        ),
      ),
    );

  }
  Widget _nameTextField () {
    return AppTextFormField(
      hintText: "Enter username",
      onSaved: (_value) {
        setState(() {
          _user=_value;
        });
      },
      validator: (_value) {
        bool _result = _value!.contains(
            RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"));
        return _result ? null : "Please enter a valid email";
      },
    );
  }
  Widget _passwordTextField () {
    return AppTextFormField(
      hintText: "Enter password",
      onSaved: (_value) {
        setState(() {
          _password=_value;
        });
      },
      validator: (_value) {
        bool _result = _value!.contains(
            RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"));
        return _result ? null : "Please enter a valid email";
      },
    );
  }
  Widget _confirmPassword() {
    return AppTextFormField(
      hintText: "Enter confirm password",
      onSaved: (_value) {
        setState(() {
          _confirmpassword=_value;
        });
      },
      validator: (_value) {
        bool _result = _value!.contains(
            RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"));
        return _result ? null : "Please enter a valid email";
      },
    );
  }


  Widget _registerbutton() {
    return MaterialButton(
      onPressed: () {},
      minWidth: _deviceWidth! * 0.50,
      height: _deviceHeight! * 0.05,
      color: Colors.blue,
      child: const Text(
        'Register',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _registerPageLink() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'Login'),
      child: const Text("Already have an account?",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
