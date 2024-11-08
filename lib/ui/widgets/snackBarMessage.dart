import 'package:flutter/material.dart';
import 'package:taskmanager/ui/utils/app_colors.dart';

void snackBarMessage(BuildContext context,String message,[bool isError = false]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: isError? Colors.red : AppColors.backgroundColor,
    ),
  );
}
