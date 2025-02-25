import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rydon/counter/counter.dart';
import 'package:rydon/l10n/l10n.dart';
import 'package:rydon/pages/sign%20up/view/sign_up_page.dart';
import 'package:rydon/widgets/custom_textfield.dart';
import 'package:rydon/util/colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            // displayLarge: GoogleFonts.poppins(
            //   fontSize: 12,
            //   color: AppColors.signUpWith,
            // ),
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.divider,
            foregroundColor: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SignUpPage(),
      // home: const CustomTextField(
      //   hintext: 'Ex: John',
      //   isPassword: true,
      // ),
    );
  }
}
