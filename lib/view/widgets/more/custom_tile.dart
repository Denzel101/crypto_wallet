import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    this.title,
    this.subTitle,
    this.trailing,
    this.leading,
    this.onTap,
    this.top = 0,
    required this.backgroundColor,
    required this.iconData,
    required this.iconColor,
    required this.ringColor,
  });

  final String? title;
  final String? subTitle;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onTap;
  final double? top;
  final Color backgroundColor;
  final IconData iconData;
  final Color iconColor;
  final Color ringColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: backgroundColor,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(color: ringColor),
          ),
          child: Icon(
            iconData,
            color: iconColor,
          ),
        ),
      ),
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: EdgeInsets.only(top: top!),
        child: Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      subtitle: Text(
        subTitle ?? '',
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
