import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      // width: MediaQuery.of(context).size.width * 0.8,
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.textField,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        hint: const Text(
          'Select',
          style: TextStyle(color: AppColors.textFieldHint),
          // style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          //       color: AppColors.textFieldHint,
          //     ),
        ),
        items: const [
          DropdownMenuItem(
            child: Text('Male'),
            value: 'Male',
          ),
          DropdownMenuItem(
            child: Text('Female'),
            value: 'Female',
          ),
        ],
        onChanged: (String? value) {},
      ),
    );
  }
}
