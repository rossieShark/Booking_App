import 'package:flutter/material.dart';

class CreateAddressSection extends StatelessWidget {
  const CreateAddressSection({
    super.key,
    required this.hotelName,
    required this.hotelAddress,
  });

  final String hotelName;
  final String hotelAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Text(
            hotelName,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500,
                height: 26.4 / 22),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('address tapped');
          },
          child: Text(
            hotelAddress,
            style: const TextStyle(
                color: Color.fromARGB(255, 13, 114, 255),
                fontSize: 14,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w500,
                height: 16.8 / 22),
          ),
        ),
      ],
    );
  }
}
