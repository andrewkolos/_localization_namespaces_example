import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('es'), // Override locale to always be Spanish
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            final localizations = AppLocalizations.of(context)!;
            return Column(
              children: [
                Text("heading: ${localizations.home_heading}"),
                Text("instructions: ${localizations.login_instructions}"),
                Text("back: ${localizations.back}"),
              ],
            );
          },
        )
      ),
    );
  }
}
