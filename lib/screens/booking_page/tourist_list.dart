
import 'package:booking/app_logic/tourist_provider/tourist_provider.dart';
import 'package:booking/screens/booking_page/booking_page_content.dart';
import 'package:booking/screens/booking_page/tourist_tab.dart';
import 'package:booking/widgets/customm_text_field.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

// class TouristListScreen extends StatefulWidget {
//   @override
//   _TouristListScreenState createState() => _TouristListScreenState();
// }

// class _TouristListScreenState extends State<TouristListScreen> {
//   int nextTouristNumber = 1;

//   @override
//   Widget build(BuildContext context) {
//     final touristProvider = Provider.of<TouristProvider>(context);
//     return Container(
//       color: Colors.white,
//       child: ExpansionPanelList(
//         expandedHeaderPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//         dividerColor: const Color.fromARGB(255, 246, 246, 249),
//         expansionCallback: (int index, bool isExpanded) {
//           setState(() {
//             touristProvider.tourists[index].isExpanded = !isExpanded;
//           });
//         },
//         children: touristProvider.tourists.map<ExpansionPanel>((tourist) {
//           return ExpansionPanel(
//             headerBuilder: (context, isExpanded) {
//               return Container(
//                 color: Colors.white,
//                 child: ListTile(
//                   title: Text(tourist.headerValue),
//                 ),
//               );
//             },
//             body: tourist.expandedValue,
//             isExpanded: tourist.isExpanded,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

class TouristListScreen extends StatefulWidget {
  const TouristListScreen({super.key});

  @override
  State<TouristListScreen> createState() => _TouristListScreenState();
}

class _TouristListScreenState extends State<TouristListScreen> {
  int nextTouristNumber = 1;
  bool isExpanded = false;

  final List<TextEditingController> controllers = List.generate(
    fieldsName.length,
    (index) => TextEditingController(),
  );

  @override
  void dispose() {
    // Dispose of the controllers when the screen is disposed
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final touristProvider = Provider.of<TouristProvider>(context, listen: true);
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0.0),
        itemCount: touristProvider.tourists.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.white,
                child: Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    textColor: Colors.black,
                    title: Text('${convertToString(index + 1)} турист',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            height: 26.4 / 20)),
                    trailing: ExpandButton(
                      onTap: null,
                      icon: touristProvider.tourists[index].isExpanded
                          ? Icons.expand_less
                          : Icons.expand_more,
                      containerColor:
                          const Color.fromARGB(255, 13, 114, 255).withOpacity(0.1),
                      iconColor: const Color.fromARGB(255, 13, 114, 255),
                    ),
                    children: <Widget>[
                      Container(
                        height: 372,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: fieldsName.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 4, 0, 4),
                                    child: CustommTextField(
                                      labelText: fieldsName[index],
                                      controller: controllers[index],
                                    ));
                              }),
                        ),
                      ),
                    ],
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        touristProvider.tourists[index].isExpanded = expanded;
                        isExpanded = expanded;
                      });
                    },
                  ),
                ),
              ),
            ),
          );
        });
  }
}

// TextEditingController createController(BuildContext context, int index) {
//   TextEditingController controller = TextEditingController();
//   SchedulerBinding.instance.addPostFrameCallback((_) {
//     final controllerProvider =
//         Provider.of<TextFieldControllerProvider>(context, listen: false);
//     controllerProvider.addController(controller);
//   });
//   return controller;
// }

final List<TextEditingController> controllers = List.generate(
  fieldsName.length,
  (index) => TextEditingController(),
);

// final List<Widget> textFields = List.generate(
//   fieldsName.length,
//   (index) => CustommTextField(labelText: fieldsName[index]),
// );
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
    // default:
    //   result = 'Дополнительный';
  }
  return result;
}
