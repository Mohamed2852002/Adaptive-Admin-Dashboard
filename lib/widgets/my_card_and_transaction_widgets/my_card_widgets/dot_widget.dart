import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isSelected ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : const Color(0xffE8E8E8),
      ),
    );
  }
}
