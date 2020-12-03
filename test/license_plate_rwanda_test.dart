import 'package:flutter_test/flutter_test.dart';

import 'package:license_plate_rwanda/license_plate_rwanda.dart';

void main() {
  test('validates plate numbers', () {
    expect(isValid(""), false);
    expect(isValid("RC300K"), true);
    expect(isDiplomatic("9 CMD 01 R"), false);
    expect(isDiplomatic("9CMD01R"), true);
    expect(isForeign("IT269RE"), true);
    expect(isMoto("RA001A"), true);
    expect(isNormal("RAA001A"), true);
    expect(isSpecial("GP012K"), true);
  });
}
