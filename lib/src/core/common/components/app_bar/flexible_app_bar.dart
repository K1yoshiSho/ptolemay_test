import 'package:flutter/material.dart';
import 'package:ptolemay_test/src/core/common/components/divider.dart';
import 'package:ptolemay_test/src/core/configs/styles/colors_extensions.dart';
import 'package:ptolemay_test/src/core/configs/styles/styles.dart';
import 'package:ptolemay_test/src/core/configs/styles/themes.dart';

class FlexibleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool centerTitle = false;
  final Widget? actionIcon;
  final Function()? action;
  final Function()? onBack;
  final bool leadingEnabled = true;

  const FlexibleAppBar({
    super.key,
    this.title,
    this.actionIcon,
    this.action,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 50,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      (leadingEnabled)
                          ? IconButton(
                              splashRadius: 18,
                              style: AppStyles.iconButtonStyle,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: context.theme.appColors.text,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                if (onBack != null) {
                                  onBack!();
                                }
                              },
                            )
                          : const SizedBox.shrink(),
                      title != null
                          ? Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                title ?? "",
                                style: AppTextStyle.bodyMedium500(context).copyWith(fontSize: leadingEnabled ? 14 : 16),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  actionIcon ?? const SizedBox.shrink(),
                ],
              ),
            ),
            const AppDivider()
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
