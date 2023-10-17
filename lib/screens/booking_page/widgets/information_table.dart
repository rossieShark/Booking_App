import 'package:booking/models/models_index.dart';
import 'package:booking/services/services_index.dart';
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
      color: AppColors.white,
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
                      child: Text(
                        tableContent[index].name,
                        style: TextStyleService.headline2(
                            color: AppColors.grey, fontweight: FontWeight.w400),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                      child: Text(tableContent[index].description,
                          style: TextStyleService.headline2(
                              color: AppColors.black,
                              fontweight: FontWeight.w400)),
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
