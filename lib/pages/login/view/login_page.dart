import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rydon/pages/new_password/view/new_password_page.dart';
import 'package:rydon/pages/otp_verification/view/otp_verification.dart';
import 'package:rydon/pages/sign%20up/view/sign_up_page.dart';
import 'package:rydon/util/colors.dart';
import 'package:rydon/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi Welcome back, you've been missed",
                  textAlign: TextAlign.center,
                  // style: context.getTextTheme.bodyLarge,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.signUpWith,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NewPasswordPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Forgot Password?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.signUpWith,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: devSize.width / 2,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OTPVerification(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
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
                                      horizontal: 5,
                                    ),
                                    child: Text(
                                      'or sign up with',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: AppColors.signUpWith,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Divider(
                                      color: AppColors.divider, // Line color
                                      thickness: 1, // Line thickness
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: devSize.width / 2,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.socialsBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child:
                                        Image.asset('assets/images/apple.png'),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.socialsBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child:
                                        Image.asset('assets/images/google.png'),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.socialsBorder,
                                      ),
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    child: Image.asset(
                                        'assets/images/facebook.png'),
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
                                      text: "Don't have an account? ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  TextSpan(
                                    text: 'Sign Up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: AppColors.signUpWith,
                                          decoration: TextDecoration.underline,
                                        ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage(),
                                          ),
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
