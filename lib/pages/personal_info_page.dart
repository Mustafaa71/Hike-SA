import 'package:flutter/material.dart';
import 'package:flutter_project_2/components/account_setting.dart';
import 'package:flutter_project_2/components/logout_button.dart';
import 'package:flutter_project_2/components/other_setting.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          "Personal Info",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            /// Setting First Section .....
            const AccountSetting(),
            const SizedBox(height: 40.0),

            /// Account Setting ....
            Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Account',
                    style: TextStyle(color: Color(0xFF7e7f81), fontSize: 17.0),
                  ),
                ),
                Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                OtherSetting(label: 'Edit Personal Details', icon: Icons.person_outline),
                Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                OtherSetting(label: 'Theme', icon: Icons.color_lens_outlined),
                Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
                OtherSetting(label: 'Invoice', icon: Icons.account_balance_wallet_outlined),
                Divider(thickness: 0.5, color: Color(0xFF7e7f81)),
              ],
            ),
            const SizedBox(height: 300.0),

            ///Logout Button ....
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
