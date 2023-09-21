import 'package:flutter/material.dart';
import 'package:ptolemay_test/src/core/common/components/bottom_sheet_header.dart';
import 'package:ptolemay_test/src/core/common/components/divider.dart';
import 'package:ptolemay_test/src/core/configs/styles/styles.dart';
import 'package:ptolemay_test/src/core/configs/styles/themes.dart';

/// `AppBottomSheet` is a custom BottomSheet with customizable fields.
class AppBottomSheet extends StatelessWidget {
  final Widget body;
  final String title;
  final double? height;
  final EdgeInsets? padding;

  const AppBottomSheet({
    super.key,
    required this.body,
    this.height,
    required this.title,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return RepaintBoundary(
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: height ?? screenSize.height * 0.55,
          decoration: BoxDecoration(
            color: context.theme.scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: BottomSheetHeaderContainer(),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16.0, top: 10.0, end: 16.0, bottom: 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      style: AppTextStyle.bodyMedium600(context).copyWith(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AppDivider(),
                  Padding(
                    padding: padding ?? const EdgeInsetsDirectional.only(start: 16, top: 8, end: 16),
                    child: body,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
