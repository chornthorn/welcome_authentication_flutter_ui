import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thorn_auth_ui/components/already_have_an_account_check.dart';
import 'package:thorn_auth_ui/components/rounded_button.dart';
import 'package:thorn_auth_ui/components/rounded_input_field.dart';
import 'package:thorn_auth_ui/components/rounded_password_field.dart';
import 'package:thorn_auth_ui/constants.dart';
import 'package:thorn_auth_ui/screens/login/login_screen.dart';
import 'package:thorn_auth_ui/screens/sign_up/components/background.dart';
import 'package:thorn_auth_ui/screens/sign_up/components/or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'SIGN UP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/signup.svg',
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
            text: 'SIGN UP',
            color: kPrimaryColor,
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: kPrimaryColor,
                    ),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/facebook.svg',
                  height: 20,
                  width: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: kPrimaryColor,
                    ),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/twitter.svg',
                  height: 20,
                  width: 20,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: kPrimaryColor,
                    ),
                    shape: BoxShape.circle),
                child: SvgPicture.asset(
                  'assets/icons/google-plus.svg',
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
