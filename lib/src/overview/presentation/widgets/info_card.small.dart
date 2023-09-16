import 'package:admin_dashboard_web/core/common/widgets/app_text.dart';
import 'package:admin_dashboard_web/core/extensions/context_extensions.dart';
import 'package:admin_dashboard_web/core/res/colours.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall({
    required this.title,
    required this.value,
    super.key,
    this.topColour,
    this.isActive = false,
    this.onTap,
  });

  final String title;
  final String value;
  final Color? topColour;
  final bool isActive;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textSize =
        context.currentBreakpoint.smallerOrEqualTo(PHONE) ? 18.0 : 24.0;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? Colours.primaryColour : Colours.lightGreyColour,
              width: .5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title,
                size: textSize,
                weight: FontWeight.w300,
                colour:
                    isActive ? Colours.primaryColour : Colours.lightGreyColour,
              ),
              AppText(
                value,
                size: textSize,
                weight: FontWeight.bold,
                colour:
                    isActive ? Colours.primaryColour : Colours.lightGreyColour,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
