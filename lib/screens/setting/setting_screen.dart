import 'package:flutter/material.dart';
import 'package:studentsyrianapp/model/user_model.dart';

import '../../widgets/gradient_button.dart';
import 'widgets/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel user = UserModel(
      name: 'محمد الحمدو',
      email: "Mohamed@gmail.com",
      img: '',
      studentNumber: '200000000000',
      major: 'مهندس كمبيوتر',
      telefon: "0555555555",
      sinif: "السنة الثالثة",
      fakulte: "كلية الهندسة",
    );
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GradientButton(
          text: 'الملف الشخصي',
          icon: Icons.person,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProfileScreen(title: 'الملف الشخصي', obj: user),
            ),
          ),
        ),
      ),
    );
  }
}
