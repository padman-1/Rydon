import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';
import 'package:rydon/widgets/custom_textfield.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: Container(
          // padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.backButtonBorder,
              ),
              shape: BoxShape.circle),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: devSize.width / 1.5,
              child: Column(
                children: [
                  Text(
                    'New Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your new password must be different from previously used password',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.signUpWith,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Confirm Password',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(
                      hintext: '123456789',
                      isPassword: true,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Create New Password',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
