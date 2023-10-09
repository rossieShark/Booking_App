

// class TouristForm extends StatelessWidget {
//   const TouristForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 372,
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
//         child: ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             itemCount: fieldsName.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
//                 child: textFields[index],
//               );
//             }),
//       ),
//     );
//   }
// }

final List<String> fieldsName = [
  'Имя',
  'Фамилия',
  'Дата рождения',
  'Гражданство',
  'Номер загранпаспорта',
  'Срок действия загранпаспорта'
];

// final List<Widget> textFields = [
//   CustommTextField(labelText: 'Имя'),
//   CustommTextField(labelText: 'Фамилия'),
//   DateTextField(labelText: 'Дата рождения'),
//   CustommTextField(labelText: 'Имя'),
//   CustommTextField(labelText: 'Имя'),
//   DateTextField(labelText: 'Срок действия загранпаспорта')
// ];
