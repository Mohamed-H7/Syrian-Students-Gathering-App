import 'package:flutter/material.dart';
import 'package:studentsyrianapp/model/news_model.dart';

import '../../widgets/layouts/base_page_layout.dart';
import 'widgets/news_details_screen.dart';
import 'widgets/news_item_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
    return BasePageLayout(
      title: "الأخبار",
      child: Column(
        children: [
          ListView.separated(
            itemCount: 6,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return NewsItemCard(
                obj: news,
                iconData: Icons.article,
                color: Color(0xFF006db7),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NewsDetailsScreen(color: Color(0xFF006db7), obj: news),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
