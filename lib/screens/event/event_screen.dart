import 'package:flutter/material.dart';

import '../../model/event_model.dart';
import '../../widgets/layouts/base_page_layout.dart';
import 'widgets/event_details_screen.dart';
import 'widgets/event_item_card.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final EventModel event = EventModel(
      title: 'ملتقى التوظيف السنوي',
      date: '٢٠٢٥/٠٦/٠١',
      time: '٠٩:٠٠ صباحاً - ٠٥:٠٠ مساءً',
      konum: 'القاعة الكبرى - مبنى الإدارة',
      kayitLink: "",
      konumLink: "",
      details:
          'يسر مكتب التوظيف الجامعي دعوتكم للمشاركة في ملتقى التوظيف السنوي، حيث يجتمع أكثر من ٥٠ شركة رائدة من مختلف القطاعات للقاء الطلاب والخريجين. ستتاح لكم فرصة التعرف على فرص العمل المتاحة، وتقديم السير الذاتية، وإجراء المقابلات الأولية.',
      images: ['assets/img/BG.png', 'assets/img/BG.png', 'assets/img/BG.png'],
      eventTable: [
        {"٠٩:٠٠ - ١٠:٠٠": "التسجيل والاستقبال"},
        {"١٠:٠٠ - ١١:٣٠": "جلسة افتتاحية: كيف تستعد لسوق العمل"},
      ],
      maxRegisteredUsers: 100,
      registeredUsers: 45,
    );
    return BasePageLayout(
      title: "الفعاليات",
      child: Column(
        children: [
          ListView.separated(
            itemCount: 6,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return EventItemCard(
                color: Color(0xFFf2b200),
                obj: event,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetailsScreen(
                      color: Color(0xFFf2b200),
                      obj: event,
                    ),
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
