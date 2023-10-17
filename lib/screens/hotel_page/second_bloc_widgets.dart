import 'package:booking/models/models_index.dart';
import 'package:booking/screens/hotel_page/widgets/hotel_page_main_content.dart';
import 'package:booking/services/services_index.dart';

import 'package:booking/widgets/widgets_index.dart';

import 'package:flutter/material.dart';

class SecondBlocWidgets extends StatelessWidget {
  const SecondBlocWidgets({
    super.key,
    required this.hotelInfo,
  });

  final HotelResponse hotelInfo;
  static const aboutHotel = 'Об отеле';
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        height: 428,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                aboutHotel,
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
        ));
  }
}

class _CreateConditionsSection extends StatelessWidget {
  const _CreateConditionsSection();

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      height: 184,
      color: AppColors.background,
      width: MediaQuery.of(context).size.width - 32,
      borderRadius: BorderRadius.circular(15),
      child: const _CreateConditionsListView(),
    );
  }
}

class _CreateConditionsListView extends StatelessWidget {
  const _CreateConditionsListView();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          return const _Divider();
        },
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();
  final double imageHeight = 24;
  final double padding = 12;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: imageHeight + padding),
      child: const Divider(
        thickness: 1,
      ),
    );
  }
}

class _ConditionsCard extends StatelessWidget {
  const _ConditionsCard({
    required this.index,
  });
  final int index;
  static const double imageHeight = 24;
  static const double padding = 12;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      _ConditionsIcon(
        index: index,
        size: imageHeight,
      ),
      const SizedBox(
        width: padding,
      ),
      _HotelNameAndAddressInformation(index: index),
    ]);
  }
}

class _ConditionsIcon extends StatelessWidget {
  const _ConditionsIcon({
    required this.index,
    required this.size,
  });

  final int index;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      conditions[index].image,
      width: size,
      height: size,
      fit: BoxFit.fill,
    );
  }
}

class _HotelNameAndAddressInformation extends StatelessWidget {
  const _HotelNameAndAddressInformation({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(conditions[index].title,
                    style:
                        TextStyleService.headline2(color: AppColors.graphyte)),
                Text(conditions[index].description,
                    style: TextStyleService.headline3(
                        fontweight: FontWeight.w400)),
              ],
            ),
          ),
          Image.asset(conditions[index].icon),
        ],
      ),
    );
  }
}
