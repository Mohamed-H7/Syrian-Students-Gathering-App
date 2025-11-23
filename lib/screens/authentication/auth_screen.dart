import 'package:flutter/material.dart';

import '../../widgets/gradient_button.dart';
import '../../widgets/outline_button.dart';
import 'login/login.dart';
import 'signup/signup.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        // Color(0xFF006db7),
                        // Color(0xFFeb5623),
                        Color(0xFFf2b200),
                        Color(0xFF00b39f),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 15,
                        spreadRadius: 1,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Center(
                      child: Text(
                        "مم",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  'تطبيق تجمع الطلاب', //السوريين
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  "منصة طلابية شاملة",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                GradientButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  ),
                  text: "إنتساب جديد",
                  icon: Icons.person_add_alt_1_outlined,
                ),
                SizedBox(height: 10),
                OutlineButtonCustom(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                  text: "تسجيل دخول",
                  icon: Icons.login,
                ),
                SizedBox(height: 40),
                Text(
                  "جميع الحقوق محفوظة © 2025",
                  style: TextStyle(
                    fontSize: 12,
                    color: const Color.fromARGB(255, 127, 127, 127),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
