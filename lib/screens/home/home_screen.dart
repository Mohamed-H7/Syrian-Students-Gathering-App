import 'package:flutter/material.dart';

import '../../model/news_model.dart';
import '../../model/notification_item.dart';
import '../../widgets/layouts/grid_layout.dart';
import '../../widgets/section_heading.dart';
import '../news/widgets/news_details_screen.dart';
import 'widgets/news_item.dart';
import 'widgets/notifications_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsModel news = NewsModel(
      title: 'افتتاح مركز الابتكار الجديد',
      subtitle:
          'تم افتتاح مركز الابتكار التكنولوجي في الحرم الجامعي لدعم مشاريع الطلاب والبحث العلمي',
      date: DateTime.now().toString().substring(0, 10),
      details: '''
في خطوة نوعية لتعزيز ثقافة الابتكار والإبداع، افتتحت الجامعة مركز الابتكار التكنولوجي الجديد في الحرم الجامعي الرئيسي. يأتي هذا المشروع ضمن رؤية الجامعة الاستراتيجية لتمكين الطلاب والباحثين من تحويل أفكارهم الإبداعية إلى واقع ملموس.

يضم المركز أحدث التقنيات والمعدات المتطورة، بما في ذلك مختبرات متخصصة في الذكاء الاصطناعي، وإنترنت الأشياء، والواقع الافتراضي والمعزز. كما يوفر المركز بيئة عمل مشتركة مجهزة بالكامل لاستضافة فرق العمل والشركات الناشئة.

وقد أكد معالي مدير الجامعة في كلمة الافتتاح على أهمية هذا المركز في تحقيق رؤية المملكة ٢٠٣٠، مشيراً إلى أن المركز سيكون بمثابة حاضنة للمواهب الوطنية ومنصة لتطوير الحلول التقنية المبتكرة.

يقدم المركز مجموعة متنوعة من البرامج التدريبية وورش العمل المتخصصة، إلى جانب توفير الإرشاد والتوجيه من قبل خبراء ومتخصصين في مجالات التكنولوجيا وريادة الأعمال.
''',
      images: ['assets/img/BG.png', 'assets/img/BG.png', 'assets/img/BG.png'],
    );
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
                  itemCount: 2,
                  crossAxisCount: 1,
                  mainAxisExtent: 140,
                  itemBuilder: (context, index) {
                    return NewsItem(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsDetailsScreen(
                            color: Color(0xFF006db7),
                            obj: news,
                          ),
                        ),
                      ),
                      title: "عنوان الخبر",
                      subtitle: " وصف مختصر للخبر",

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
