import 'package:flutter/material.dart';

import '../../../model/news_model.dart';
import '../../../widgets/details_container.dart';
import '../../../widgets/details_item_card.dart';
import '../../../widgets/layouts/details_page_layout.dart';
import '../../../widgets/promo_slider.dart';
import '../../../widgets/sub_title_container.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key, required this.color, required this.obj});

  final Color color;
  final NewsModel obj;

  @override
  Widget build(BuildContext context) {
    return DetailsPageLayout(
      title: "تفاصيل الخبر",
      child: Column(
        children: [
          DetailsItemCard(
            padding: 0,
            color: color,

            child: Column(
              children: [
                PromoSlider(images: obj.images, color: color),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        obj.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            color: color,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(obj.date, style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SubTitleContainer(color: color, subtitle: obj.subtitle),
          SizedBox(height: 15),
          DetailsContainer(
            child: Text(
              obj.details,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
