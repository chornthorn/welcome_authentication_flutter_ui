import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thorn_auth_ui/components/already_have_an_account_check.dart';
import 'package:thorn_auth_ui/components/rounded_button.dart';
import 'package:thorn_auth_ui/components/rounded_input_field.dart';
import 'package:thorn_auth_ui/components/rounded_password_field.dart';
import 'package:thorn_auth_ui/constants.dart';
import 'package:thorn_auth_ui/screens/login/components/background.dart';
import 'package:thorn_auth_ui/screens/sign_up/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              icon: Icons.person,
              onChanged: (value) {
                print(value);
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              textColor: Colors.white,
              text: 'LOGIN',
              color: kPrimaryColor,
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
