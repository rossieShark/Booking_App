import 'package:booking/models/booking_info_table_model.dart';
import 'package:flutter/material.dart';

class CreateInformationTable extends StatelessWidget {
  const CreateInformationTable({
    super.key,
    required this.tableContent,
  });

  final List<BookingIngoTable> tableContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(1.2),
            1: FlexColumnWidth(1.7),
          },
          border: null,
          children: [
            for (int index = 0; index < tableContent.length; index++)
              TableRow(
                children: [
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                      child: Text(tableContent[index].name,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 130, 135, 150),
                              fontSize: 16,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w400,
                              height: 19.2 / 16)),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                      child: Text(tableContent[index].description,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SFPro',
                              fontWeight: FontWeight.w400,
                              height: 19.2 / 16)),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
