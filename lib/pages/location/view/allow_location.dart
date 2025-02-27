import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';

class AllowLocation extends StatefulWidget {
  const AllowLocation({super.key});

  @override
  State<AllowLocation> createState() => _AllowLocationState();
}

class _AllowLocationState extends State<AllowLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.textField,
              child: Icon(
                Icons.location_on_sharp,
                color: AppColors.signUpWith,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'What is Your Location?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We need to know your location in order to suggest nearby services',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.signUpWith,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const AllowLocation(),
                //   ),
                // );
              },
              child: Text(
                'Allow Location access',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Enter Location manually',
              style: TextStyle(
                  color: AppColors.signUpWith, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
