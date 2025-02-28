import 'package:flutter/material.dart';
import 'package:rydon/pages/profile/view/complete_profile.dart';
import 'package:rydon/util/colors.dart';

class ManualLocation extends StatefulWidget {
  const ManualLocation({super.key});

  @override
  State<ManualLocation> createState() => _ManualLocationState();
}

class _ManualLocationState extends State<ManualLocation> {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: Text(
          'Enter Your Location',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            // width: MediaQuery.of(context).size.width * 0.8,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.textField,
              borderRadius: BorderRadius.circular(13),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.textFieldHint,
                  ),
                  hintText: 'Enter your location',
                  hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textFieldHint,
                      fontWeight: FontWeight.bold),
                  border: InputBorder.none),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(Icons.my_location),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Use my current location',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Align(
            child: SizedBox(
              width: devSize.width / 2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompleteProfile(),
                    ),
                  );
                },
                child: const Text('Continue'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
