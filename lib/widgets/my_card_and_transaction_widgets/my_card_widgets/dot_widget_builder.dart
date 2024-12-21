import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_widgets/dot_widget.dart';
import 'package:flutter/material.dart';

class DotWidgetBuilder extends StatefulWidget {
  const DotWidgetBuilder({super.key, required this.selectedIndex, required this.controller});
  final int selectedIndex;
  final PageController controller;
  @override
  State<DotWidgetBuilder> createState() => _DotWidgetBuilderState();
}

class _DotWidgetBuilderState extends State<DotWidgetBuilder> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: List.generate(
        3,
        (index) => GestureDetector(
          onTap: () {
            if (widget.selectedIndex != index) {
              setState(
                () {
                  widget.controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear,
                  );
                },
              );
            }
          },
          child: DotWidget(
            isSelected: widget.selectedIndex == index,
          ),
        ),
      ),
    );
  }
}
