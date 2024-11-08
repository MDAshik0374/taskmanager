import 'package:flutter/material.dart';
import 'package:taskmanager/ui/utils/app_colors.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
    super.key,
    required this.title,
    required this.child,
  });

  final Widget title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height / 3.2,
          decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(88),
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0,left: 24.0,right: 24.0),
                child: title,
              ),
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: 88,
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                ),
              ),
              Container(
                width: size.width,
                decoration: const BoxDecoration(
                  color: AppColors.foregroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(88),
                  ),
                ),
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: child,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
