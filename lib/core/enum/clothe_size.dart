enum ClothingSizeINT {
  xs('XS'),
  s('S'),
  m('M'),
  l('L'),
  xl('XL');

  final String labelKey;

  const ClothingSizeINT(this.labelKey);
}

enum ClothingSizeUS {
  w30l32('W30 / L32'),
  w32l34('W32 / L34'),
  w34l34('W34 / L34');

  final String labelKey;

  const ClothingSizeUS(this.labelKey);
}

enum ClothingSizeEU {
  t34('34'),
  t36('36'),
  t38('38');

  final String labelKey;

  const ClothingSizeEU(this.labelKey);
}

enum ClotheSizeMode {
  international('International'),
  us('US'),
  eu('EU');

  final String labelKey;

  const ClotheSizeMode(this.labelKey);
}
