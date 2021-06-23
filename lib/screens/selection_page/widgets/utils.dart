import 'package:weatther2/theme/color_theme.dart';

String convertToTitleCase(String text) {
  if (text == null) {
    return null;
  }

  if (text.length <= 1) {
    return text.toUpperCase();
  }

  final List<String> words = text.split(' ');

  final capitalizedWords = words.map((word) {
    if (word.trim().isNotEmpty) {
      final String firstLetter = word.trim().substring(0, 1).toUpperCase();
      final String remainingLetters = word.trim().substring(1);

      return '$firstLetter$remainingLetters';
    }
    return '';
  });

  return capitalizedWords.join(' ');
}

extension CapitalizedStringExtension on String {
  String toTitleCase() {
    return convertToTitleCase(this);
  }
}

getBackground(weatherID) {
  if (weatherID >= 200 && weatherID <= 781) {
    return ColorPalette.stormBackground;
  } else if (weatherID == 800) {
    return ColorPalette.sunyBackground;
  } else {
    return ColorPalette.blue;
  }
}
