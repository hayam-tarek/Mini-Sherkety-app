import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_fonts.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view/register_view.dart';

void main() {
  runApp(const SherketyApp());
}

class SherketyApp extends StatelessWidget {
  const SherketyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sherkety App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: AssetColors.brandDefault,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AssetColors.brandDefault,
        ),
        useMaterial3: true,
        fontFamily: AssetFonts.primaryFont,
      ),
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: RegisterView(),
    );
  }
}
// nx run sherkety_flutter_app:serve
// cd apps/sherkety_flutter_app
// flutter attach -d emulator-5554
