import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
    name: 'terms of service privacy policy', type: TermsOfServicePrivacyPolicy)
Widget termsOfServicePrivacyPolicy(BuildContext context) =>
    TermsOfServicePrivacyPolicy(
      label: context.knobs.string(
        label: 'Initial Label Text',
        initialValue: 'لقد قراءت وفهمت',
      ),
      termsText: context.knobs.string(
        label: 'Terms Text',
        initialValue: 'شروط الخدمة',
      ),
      andText: context.knobs.string(
        label: 'And Text',
        initialValue: 'و',
      ),
      privacyPolicyText: context.knobs.string(
        label: 'Privacy Policy Text',
        initialValue: 'سياسة الخصوصية',
      ),
      agreementText: context.knobs.string(
        label: 'Agreement Text',
        initialValue: 'وأوافق عليها',
      ),
    );

class TermsOfServicePrivacyPolicy extends StatelessWidget {
  final String label;
  final String termsText;
  final String andText;
  final String privacyPolicyText;
  final String agreementText;

  const TermsOfServicePrivacyPolicy({
    super.key,
    this.label = 'لقد قراءت وفهمت',
    this.termsText = 'شروط الخدمة',
    this.andText = 'و',
    this.privacyPolicyText = 'سياسة الخصوصية',
    this.agreementText = 'وأوافق عليها',
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Text(
            label,
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              termsText,
              style: Styles.paragraph100Heavy,
            ),
          ),
          Text(
            andText,
            style: Styles.paragraph200Light,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              privacyPolicyText,
              style: Styles.paragraph100Heavy,
            ),
          ),
          Text(
            agreementText,
            style: Styles.paragraph200Light,
          ),
        ],
      ),
    );
  }
}
