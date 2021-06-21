import 'package:weatther2/theme/color_theme.dart';

getBackground(weatherID) {
  if (weatherID >= 200 && weatherID <= 781) {
    return ColorPalette.stormBackground;
  } else if (weatherID == 800) {
    return ColorPalette.sunyBackground;
  } else {
    return ColorPalette.blue;
  }
}
