import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';
import 'package:rydon/widgets/custom_textfield.dart';
import 'package:rydon/widgets/gender_dropdown.dart';
import 'package:rydon/widgets/phone_textfield.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.backButtonBorder,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Complete Your Profile',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Don\'t worry, only you can see your personal data. No one else will be able to see it',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.signUpWith,
                    ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  // Circle Avatar (Profile Picture)
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.textField, // Background color
                    child: Icon(
                      Icons.person_outline, // Profile icon
                      size: 60,
                      color: AppColors.signUpWith, // Icon color
                    ),
                  ),

                  // Edit Button Positioned at Bottom Right
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.signUpWith,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white,
                            width: 2), // Border for better visibility
                      ),
                      child: const Icon(
                        Icons.edit_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),
                  CustomTextField(hintext: 'Ex: John'),
                  Text('Phone Number'),
                  PhoneNumberTextField(),
                  Text('Gender'),
                  GenderDropdown(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Complete Profile',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
