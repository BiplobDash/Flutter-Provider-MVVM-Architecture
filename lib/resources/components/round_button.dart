import 'package:flutter/material.dart';
import 'package:mvvm_project/resources/colors.dart';

class RoundButton extends StatelessWidget {
  final String titla;
  final bool loading;
  final VoidCallback onTap;
  const RoundButton({
    super.key,
    required this.titla,
    this.loading = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 400,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child:
              loading
                  ? CircleAvatar()
                  : Text(titla, style: TextStyle(color: AppColors.whiteColor)),
        ),
      ),
    );
  }
}
