import 'package:flutter/material.dart';
import 'package:prices_dinamica/constants/components.dart';

final buttonStylePro = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(primary),
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return buttonPrimaryDark;
      }
      if (states.contains(MaterialState.focused) ||
          states.contains(MaterialState.pressed)) {
        return buttonPrimaryDarkPressed;
      }
      return primary;
    },
  ),
);
