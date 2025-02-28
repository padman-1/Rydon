import 'package:flutter/material.dart';
import 'package:rydon/my_icons/custom_icons_icons.dart';
import 'package:rydon/util/colors.dart';

class EnableNotification extends StatefulWidget {
  const EnableNotification({super.key});

  @override
  State<EnableNotification> createState() => _EnableNotificationState();
}

class _EnableNotificationState extends State<EnableNotification> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.textField,
              child: Icon(
                Icons.notifications_none_outlined,
                color: AppColors.signUpWith,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enable Notification Access',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enable notifications to receive real-time updates',
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
                'Allow Notification access',
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
              'Maybe Later',
              style: TextStyle(
                  color: AppColors.signUpWith, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
