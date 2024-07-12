import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final Icon icon;
  final void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      height: 50,
      width: 50,
      child:  IconButton(
        onPressed: onPressed, icon: icon,
        
      ),
    );
  }
}
