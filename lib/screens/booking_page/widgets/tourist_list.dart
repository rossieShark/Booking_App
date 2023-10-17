import 'package:booking/app_logic/index.dart';
import 'package:booking/screens/booking_page/booking_page_index.dart';

import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';

import 'package:flutter/material.dart';

class TouristListScreen extends StatefulWidget {
  const TouristListScreen({super.key});

  @override
  State<TouristListScreen> createState() => _TouristListScreenState();
}

class _TouristListScreenState extends State<TouristListScreen> {
  int nextTouristNumber = 1;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final touristProvider = Provider.of<TouristProvider>(context, listen: true);
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0.0),
        itemCount: touristProvider.tourists.length,
        itemBuilder: (BuildContext context, int index) {
          return BackgroundContainer(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                maintainState: true,
                textColor: Colors.black,
                title: Text(
                  '${convertToString(index + 1)} турист',
                  style: TextStyleService.headline1(),
                ),
                trailing: ExpandButton(
                  onTap: null,
                  icon: touristProvider.tourists[index].isExpanded
                      ? Icons.expand_less
                      : Icons.expand_more,
                  containerColor: AppColors.blue.withOpacity(0.1),
                  iconColor: AppColors.blue,
                ),
                children: const <Widget>[
                  ExpansionTileChildren(),
                ],
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    touristProvider.tourists[index].isExpanded = expanded;
                    isExpanded = expanded;
                  });
                },
              ),
            ),
          );
        });
  }
}

class ExpansionTileChildren extends StatelessWidget {
  const ExpansionTileChildren({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 372,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: textFields.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: textFields[index]);
            }),
      ),
    );
  }
}

final List<Widget> textFields = [
  const NameTextField(labelText: 'Имя'),
  const NameTextField(labelText: 'Фамилия'),
  const DateTextField(labelText: 'Дата рождения'),
  const NameTextField(labelText: 'Гражданство'),
  const PassportNumberTextField(labelText: 'Номер паспорта'),
  const DateTextField(labelText: 'Срок действия загранпаспорта'),
];

String convertToString(int index) {
  String result = '';
  switch (index) {
    case 1:
      result = 'Первый';
    case 2:
      result = 'Второй';
    case 3:
      result = 'Третий';
    case 4:
      result = 'Четвертый';
    case 5:
      result = 'Пятый';
  }
  return result;
}
