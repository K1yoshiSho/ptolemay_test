import 'package:flutter/material.dart';
import 'package:ptolemay_test/src/core/configs/styles/palette.dart';

/// `BottomSheetHeaderContainer` - This widget is used to display the header of the bottom sheet.

class BottomSheetHeaderContainer extends StatelessWidget {
  const BottomSheetHeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 4.0,
      decoration: BoxDecoration(
        color: AppPalette.gray300,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
