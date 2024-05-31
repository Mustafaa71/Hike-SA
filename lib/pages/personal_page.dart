import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/account_setting.dart';
import 'package:flutter_project_2/components/logout_button.dart';
import 'package:flutter_project_2/components/other_setting.dart';
import 'package:flutter_project_2/models/event.dart';
import 'package:flutter_project_2/pages/feedback_page.dart';
import 'package:flutter_project_2/pages/terms_page.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  // final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Personal Info',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            /// Setting First Section .....
            AccountSetting(
              userName: Registration.information.name,
              userNameId: Registration.information.id,
            ),
            const SizedBox(height: 40.0),

            /// Account Setting ....
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Account',
                    style: TextStyle(color: Color(0xFF7e7f81), fontSize: 17.0),
                  ),
                ),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                const OtherSetting(icon: Icons.person_outline, label: 'Edit Personal Details'),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                const OtherSetting(icon: Icons.color_lens_outlined, label: 'Theme'),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                const OtherSetting(icon: Icons.account_balance_wallet_outlined, label: 'Invoice'),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push<void>(MaterialPageRoute(builder: ((context) => const TermsPage())));
                    },
                    child: const OtherSetting(icon: Icons.privacy_tip_outlined, label: 'Terms and Conditions')),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                InkWell(
                    onTap: (() {
                      Navigator.of(context).push<void>(MaterialPageRoute(builder: ((context) => const FeedbackPage())));
                    }),
                    child: const OtherSetting(icon: Icons.contact_support_outlined, label: 'Contact Us')),
                const Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
              ],
            ),
            const SizedBox(height: 230.0),

            ///Logout Button ....
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
