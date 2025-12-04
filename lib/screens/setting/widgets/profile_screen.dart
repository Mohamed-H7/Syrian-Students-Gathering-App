import 'package:flutter/material.dart';

import '../../../model/user_model.dart';
import 'info_card.dart';
import 'profile_header_card.dart';

class ProfileScreen extends StatelessWidget {
  final String title;
  final UserModel obj;

  const ProfileScreen({super.key, required this.title, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.edit_outlined), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  ProfileHeaderCard(
                    name: obj.name,
                    studentNumber: obj.studentNumber,
                    major: obj.major,
                  ),
                  SizedBox(height: 10),

                  InfoCard(
                    child: Column(
                      // textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "المعلومات الشخصية",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 16),

                        InfoRowItem(
                          label: 'البريد الإلكتروني',
                          value: obj.email,
                          icon: Icons.email_outlined,
                        ),
                        const SizedBox(height: 10),

                        InfoRowItem(
                          label: 'رقم الجوال',
                          value: obj.telefon,
                          icon: Icons.phone_outlined,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  InfoCard(
                    child: Column(
                      // textDirection: TextDirection.rtl,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "المعلومات الأكاديمية",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 16),

                        InfoRowItem(
                          color: Colors.grey,
                          label: 'الكلية',
                          value: obj.fakulte,
                          icon: Icons.school_outlined,
                        ),
                        const SizedBox(height: 10),

                        InfoRowItem(
                          color: Colors.grey,
                          label: "المستوى الدراسي",
                          value: obj.sinif,
                          icon: Icons.numbers_outlined,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
