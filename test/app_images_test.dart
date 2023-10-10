import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:booking/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.close).existsSync(), isTrue);
    expect(File(AppImages.forward).existsSync(), isTrue);
    expect(File(AppImages.happy).existsSync(), isTrue);
    expect(File(AppImages.party).existsSync(), isTrue);
    expect(File(AppImages.tick).existsSync(), isTrue);
  });
}
