import 'package:flutter/material.dart';

import '../../widgets/layouts/base_page_layout.dart';
import 'widgets/news_item_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                title: "عنوان الخبر رقم ${index + 1}",
                subtitle:
                    "هذا هو ملخص الخبر رقم ${index + 1}، وهو يحتوي على معلومات مختصرة حول محتوى الخبر.",
                iconData: Icons.article,
                color: Color(0xFF006db7),
                onTap: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
