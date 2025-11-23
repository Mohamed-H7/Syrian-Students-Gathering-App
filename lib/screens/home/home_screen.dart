import 'package:flutter/material.dart';

import '../../model/notification_item.dart';
import '../../widgets/layouts/grid_layout.dart';
import '../../widgets/section_heading.dart';
import 'widgets/main_section.dart';
import 'widgets/notifications_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      NotificationItem(
        title: "فعالية جديدة: ملتقى التوظيف",
        subtitle: "اليوم الساعة 2:00 مساءً",
        dotColor: Colors.blue,
      ),
      NotificationItem(
        title: "إعلان سكن: البحث عن زميل غرفة",
        subtitle: "منذ ساعتين",
        dotColor: Colors.green,
      ),
      NotificationItem(
        title: "خبر: تحديث مواعيد المكتبة",
        subtitle: "أمس",
        dotColor: Colors.red,
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(17.0),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF006db7),
                        Color(0xFF00b39f),
                        Color(0xFF00b39f),
                        Color(0xFFFFC107),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    // image: DecorationImage(
                    //   image: AssetImage('assets/img/ustslider.png'),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "مرحبًا،",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "محمد الحمدو!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                //
                const SizedBox(height: 20.0),
                SectionHeading(title: 'الأقسام الرئيسية'),
                const SizedBox(height: 5.0),
                GridLayout(
                  itemCount: 4,
                  mainAxisExtent: 140,
                  itemBuilder: (context, index) {
                    return MainSection(
                      onTap: () {},
                      title: "الأخبار",
                      subtitle: "أخبار الجامعة",
                      iconData: Icons.article_outlined,
                      color: Colors.blue,
                    );
                  },
                ),

                const SizedBox(height: 20.0),
                SectionHeading(title: 'آخر النشاطات'),
                const SizedBox(height: 5.0),
                NotificationsCard(items: notifications),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
