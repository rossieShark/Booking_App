import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:booking/widgets/peculiarities_list.dart';
import 'package:flutter/material.dart';

class SecondBlocWidgets extends StatelessWidget {
  const SecondBlocWidgets({
    super.key,
    required this.hotelInfo,
  });

  final HotelResponse hotelInfo;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 428,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Об отеле',
                  style: TextStyleService.headline1(),
                ),
                const SizedBox(
                  height: 16,
                ),
                CreatePeculiaritiesSection(peculiarities: peculiarities),
                const SizedBox(
                  height: 12,
                ),
                Text(hotelInfo.aboutTheHotel.description,
                    style: TextStyleService.headline2(color: AppColors.black)),
                const SizedBox(
                  height: 16,
                ),
                const _CreateConditionsSection()
              ],
            ),
          )),
    );
  }
}

class _CreateConditionsSection extends StatelessWidget {
  const _CreateConditionsSection();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        color: AppColors.background,
        height: 184,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: conditions.length,
            itemBuilder: (BuildContext context, int index) {
              return _ConditionsCard(
                index: index,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(left: 24 + 12),
                child: Divider(
                  thickness: 1,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ConditionsCard extends StatelessWidget {
  const _ConditionsCard({
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Image.asset(
        conditions[index].image,
        width: 24,
        height: 24,
        fit: BoxFit.fill,
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(conditions[index].title,
                      style: TextStyleService.headline2(
                          color: AppColors.graphyte)),
                  Text(conditions[index].description,
                      style: TextStyleService.headline3(
                          fontweight: FontWeight.w400)),
                ],
              ),
            ),
            Image.asset(conditions[index].icon),
          ],
        ),
      ),
    ]);
  }
}
