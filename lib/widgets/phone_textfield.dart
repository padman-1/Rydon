import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({super.key});

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
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          hintStyle: TextStyle(color: AppColors.textFieldHint),
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  value: "+91",
                  items: [
                    "+1", // USA
                    "+233", // Ghana
                    "+44", // UK
                    "+91", // India
                  ].map((code) {
                    return DropdownMenuItem<String>(
                      value: code,
                      child: Text(code),
                    );
                  }).toList(),
                  onChanged: (value) {}),
            ),
          ),
        ),
      ),
    );
  }
}
