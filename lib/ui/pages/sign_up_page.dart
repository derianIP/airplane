import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget inputSaction() {
      Widget fullNameInput() {
        return const CustomTextFormField(
          label: 'Full Name',
          hintText: 'Your full name',
        );
      }

      Widget emailInput() {
        return const CustomTextFormField(
          label: 'Email Address',
          hintText: 'Your email address',
        );
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          label: 'Password',
          hintText: 'Your password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return const CustomTextFormField(
          label: 'Hobby',
          hintText: 'Your hobby',
        );
      }

      Widget btnGetStarted() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
          margin: const EdgeInsets.only(
            top: 20,
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            fullNameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            btnGetStarted(),
          ],
        ),
      );
    }

    Widget tnC() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontWeight: light,
            fontSize: 16,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSaction(),
            tnC(),
          ],
        ),
      ),
    );
  }
}
