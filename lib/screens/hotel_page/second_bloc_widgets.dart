import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:booking/screens/hotel_page_main_content.dart';
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
                const Text('Об отеле',
                    style: TextStyle(fontSize: 22, color: Colors.black)),
                const SizedBox(
                  height: 16,
                ),
                CreatePeculiaritiesSection(peculiarities: peculiarities),
                Text(hotelInfo.aboutTheHotel.description,
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
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
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      height: 184,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: conditions.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: _ConditionsCard(
                index: index,
              ),
            );
          }),
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
      Image.asset(conditions[index].image),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1,
                      color: const Color.fromARGB(255, 130, 135, 150)
                          .withOpacity(
                              index == (conditions.length - 1) ? 0.0 : 0.15)))),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(conditions[index].title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 44, 48, 53))),
                    Text(conditions[index].description,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 130, 135, 150))),
                  ],
                ),
              ),
              Image.asset(conditions[index].icon)
            ],
          ),
        ),
      ),
    ]);
  }
}
