import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:repo_rover/application/shared/resources/app_colors.dart';
import 'package:repo_rover/application/shared/resources/app_text_styles.dart';

class AppButtonStyles {
  static final ButtonStyle primaryButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
    ),
    backgroundColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.steelBlue;
      } else {
        return AppColors.midnightBlue;
      }
    }),
    textStyle: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return AppTextStyles.p4Medium .copyWith(
        color: states.contains(MaterialState.disabled) ? AppColors.offWhite : AppColors.white,
      );
    }),
    animationDuration: Duration.zero,
    enableFeedback: true,
    iconColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return states.contains(MaterialState.disabled) ? AppColors.offWhite : AppColors.white;
    }),
    overlayColor: MaterialStateProperty.all<Color>(
      AppColors.vividOrange,
    ),
    splashFactory: NoSplash.splashFactory,
  );

  static final ButtonStyle outlinedButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
      ),
    ),
    side: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return BorderSide(
        color: states.contains(MaterialState.disabled) ? AppColors.offWhite : AppColors.vividOrange,
        width: 1.w,
      );
    }),
    backgroundColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
    textStyle: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return AppTextStyles.p4Medium.copyWith(
        color: states.contains(MaterialState.disabled) ? AppColors.offWhite : AppColors.vividOrange,
      );
    }),
    iconColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      return states.contains(MaterialState.disabled) ? AppColors.offWhite : AppColors.vividOrange;
    }),
    splashFactory: NoSplash.splashFactory,
  );
}