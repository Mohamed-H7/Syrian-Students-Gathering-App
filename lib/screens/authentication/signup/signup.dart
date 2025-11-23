import 'package:flutter/material.dart';

import '../../../widgets/gradient_button.dart';
import '../../../widgets/text_field.dart';
import '../login/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("إنشاء حساب"), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF006db7),

                          Color(0xFF00b39f),
                          Color(0xFF00b39f),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person_add_alt_1_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    'تسجيل جديد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF00b39f),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'انضم إلى مجتمع الطلاب',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  //
                  SizedBox(height: 20),
                  CustomTextField(label: "الإسم الكامل"),
                  SizedBox(height: 15),
                  CustomTextField(label: "الرقم الجامعي"),
                  SizedBox(height: 15),
                  CustomTextField(label: "التخصص"), SizedBox(height: 15),
                  CustomTextField(label: "رقم الهاتف"), SizedBox(height: 15),
                  CustomTextField(label: "كلمة المرور"),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow.shade500),
                      color: Color(0xFFfffbeb),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "* يتطلب موافقة الإدارة",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.red.shade500,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: 15),
                  GradientButton(
                    onTap: () {},
                    text: "تسجيل",
                    icon: Icons.clear,
                    iconSize: 0,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" لديك حساب بالفعل؟"),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                        child: const Text("تسجيل دخول"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
