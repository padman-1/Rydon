import 'package:flutter/material.dart';
import 'package:rydon/util/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.hintext,
      this.maxLines = 1,
      this.controller,
      this.isPassword = false,
      this.onChanged,
      // required this.label,
      // required this.icon,
      // required this.focusNode,
      this.validator});

  final String hintext;
  final int maxLines;
  final TextEditingController? controller;
  final bool isPassword;
  final ValueChanged<String>? onChanged;
  // final Widget label;
  // final Widget icon;
  // final FocusNode focusNode;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isVisible;

  @override
  void initState() {
    isVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.textField,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              obscureText: widget.isPassword ? !isVisible : false,
              decoration: InputDecoration(
                hintText: widget.hintext,
                hintStyle: TextStyle(color: AppColors.textFieldHint),
                border: InputBorder.none,
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: isVisible
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
