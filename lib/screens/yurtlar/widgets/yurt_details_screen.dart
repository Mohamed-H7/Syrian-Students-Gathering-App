import 'package:flutter/material.dart';

import '../../../model/yurt_model.dart';
import '../../../widgets/contact_information.dart';
import '../../../widgets/details_container.dart';
import '../../../widgets/details_item_card.dart';
import '../../../widgets/layouts/details_page_layout.dart';
import '../../../widgets/promo_slider.dart';

class YurtDetailsScreen extends StatelessWidget {
  const YurtDetailsScreen({super.key, required this.color, required this.obj});

  final Color color;
  final YurtModel obj;

  @override
  Widget build(BuildContext context) {
    return DetailsPageLayout(
      title: "تفاصيل السكن",
      child: Column(
        children: [
          PromoSlider(images: obj.images, color: color),
          SizedBox(height: 15),
          DetailsItemCard(
            padding: 0,
            color: color,
            child: Column(
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              obj.title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Spacer(),
                          SizedBox(width: 5),
                          Container(
                            // margin: EdgeInsets.only(left: 6),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              obj.durum,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined, color: color),
                          SizedBox(width: 4),
                          Text(obj.konum),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person_outline_sharp, color: color),
                          SizedBox(width: 4),
                          Text(obj.personelData),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.attach_money_rounded, color: color),
                          SizedBox(width: 4),
                          Text(obj.fiyat),
                        ],
                      ),

                      // const SizedBox(height: 16),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: color,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            // minimumSize: Size(50, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            // alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {},
                          child: Text(
                            "الموقع",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      //
                    ],
                  ),
                ),
              ],
            ),
          ),

          // SubTitleContainer(color: color, subtitle: obj.subtitle),
          SizedBox(height: 15),
          DetailsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "نبذة عن السكن",
                  style: const TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  obj.details,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          DetailsContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "معلومات التواصل",
                  style: const TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                ContactInformation(
                  color: color,
                  icon: Icons.phone_enabled,
                  data: obj.telefone,
                ),

                SizedBox(height: 10),
                ContactInformation(
                  color: color,
                  icon: Icons.location_on,
                  data: obj.konum,
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
