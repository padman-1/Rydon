import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rydon/app/app.dart';
import 'package:rydon/widgets/custom_textfield.dart';
import 'package:rydon/util/colors.dart';
import 'package:rydon/extensions/build_context_extensions.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final devSize = MediaQuery.of(context).size;
          final double maxHeight = constraints.maxHeight;
          final double maxWidth = constraints.maxWidth;
          return Center(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create Account',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Fill your information below or register with your social account',
                            textAlign: TextAlign.center,
                            // style: context.getTextTheme.bodyLarge,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: AppColors.signUpWith,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Name',
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const CustomTextField(
                                hintext: 'Ex: John',
                              ),
                              const Text(
                                'Email',
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const CustomTextField(
                                hintext: 'example@gmail.com',
                              ),
                              const Text(
                                'Password',
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const CustomTextField(
                                hintext: '123456789',
                                isPassword: true,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: isChecked,
                                      checkColor: Colors.white,
                                      activeColor: AppColors.signUpWith,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      }),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Agree with ',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall),
                                        TextSpan(
                                          text: 'Terms & Conditions',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: AppColors.signUpWith,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: devSize.width / 2,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign Up',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: devSize.width / 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Expanded(
                                      child: Divider(
                                        color: AppColors.divider, // Line color
                                        thickness: 1, // Line thickness
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Text(
                                        'or sign up with',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                color: AppColors.signUpWith),
                                      ),
                                    ),
                                    const Expanded(
                                      child: Divider(
                                        color: Colors.grey, // Line color
                                        thickness: 1, // Line thickness
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Already have an account? ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    TextSpan(
                                      text: 'Sign in',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            color: AppColors.signUpWith,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
