import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rydon/pages/location/view/allow_location.dart';
import 'package:rydon/util/colors.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
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
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Center(
          child: Column(
            children: [
              Text(
                'Verify Code',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please enter the code we justsent to email example@gmail.com',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.signUpWith,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Pinput(
                defaultPinTheme: defaultPinTheme,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Didn\'t receive OTP?',
                style: TextStyle(
                  color: AppColors.signUpWith,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Resend OTP',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: devSize.width / 2.4,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AllowLocation(),
                      ),
                    );
                  },
                  child: Text(
                    'Verify',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
    height: 48,
    width: 48,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17),
      border: Border.all(
        color: AppColors.socialsBorder,
        width: 1,
      ),
    ));
