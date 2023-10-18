import 'package:booking/services/services_index.dart';
import 'package:flutter/widgets.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('No Results', style: TextStyleService.headline1()));
  }
}
