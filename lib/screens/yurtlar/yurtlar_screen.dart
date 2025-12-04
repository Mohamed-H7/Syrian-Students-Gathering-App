import 'package:flutter/material.dart';
import 'package:studentsyrianapp/model/yurt_model.dart';

import '../../widgets/layouts/base_page_layout.dart';
import 'widgets/yurt_details_screen.dart';
import 'widgets/yurtlar_item_card.dart';

class YurtlarScreen extends StatelessWidget {
  const YurtlarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final YurtModel yurt = YurtModel(
      title: 'سكن الطلاب - المبنى A',
      personelData: 'غرف مزدوجة',
      durum: "متاح",
      konum: 'بالقرب من الحرم الجامعي',
      konumLink: '',
      details:
          'سكن طلابي حديث ومجهز بالكامل يقع على بعد ٥ دقائق سيراً على الأقدام من الحرم الجامعي الرئيسي. يوفر بيئة آمنة ومريحة للطلاب مع كافة المرافق الضرورية.',
      images: ['assets/img/BG.png', 'assets/img/BG.png', 'assets/img/BG.png'],
      fiyat: '11,000 ليرة شهريًا',
      telefone: "05555555555",
    );
    return BasePageLayout(
      title: "السكنات",
      child: Column(
        children: [
          ListView.separated(
            itemCount: 6,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return YurtlarItemCard(
                iconData: Icons.article,
                color: Color(0xFFeb5623),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        YurtDetailsScreen(color: Color(0xFFeb5623), obj: yurt),
                  ),
                ),
                obj: yurt,
              );
            },
          ),
        ],
      ),
    );
  }
}
