import 'package:flutter/material.dart';
import 'package:rydon/counter/counter.dart';
import 'package:rydon/l10n/l10n.dart';
import 'package:rydon/pages/widgets/custom_textfield.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CustomTextField(
        hintext: 'Ex: John',
        isPassword: true,
      ),
    );
  }
}
