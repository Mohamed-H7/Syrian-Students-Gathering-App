import 'package:flutter/material.dart';
import 'package:studentsyrianapp/navigation_menu.dart';

import '../../../widgets/gradient_button.dart';
import '../../../widgets/text_field.dart';
import '../signup/signup.dart';
import 'admin_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تسجيل دخول"), centerTitle: true),
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
                      child: Icon(Icons.login, color: Colors.white, size: 30),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'مرحبًا بعودتك',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF00b39f),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'سجل دخولك للمتابعة',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  //
                  SizedBox(height: 20),
                  CustomTextField(label: "اسم المستخدم او البريد الإلكتروني"),
                  SizedBox(height: 15),
                  CustomTextField(label: "كلمة المرور"),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text("هل نسيت كلمة المرور؟"),
                    ),
                  ),
                  //
                  SizedBox(height: 15),
                  GradientButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NavigationMenu()),
                    ),
                    text: "تسجيل دخول",
                    icon: Icons.clear,
                    iconSize: 0,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ليس لديك حساب؟"),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        ),
                        child: const Text("إنشاء حساب"),
                      ),
                    ],
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminLoginScreen(),
                      ),
                    ),
                    child: const Text("دخول الإداريين"),
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
