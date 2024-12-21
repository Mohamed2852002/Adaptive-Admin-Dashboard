import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_widgets/card_widget.dart';
import 'package:adaptive_admin_dashboard/widgets/my_card_and_transaction_widgets/my_card_widgets/dot_widget_builder.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardPageView extends StatefulWidget {
  const MyCardPageView({super.key});

  @override
  State<MyCardPageView> createState() => _MyCardPageViewState();
}

class _MyCardPageViewState extends State<MyCardPageView> {
  int selectedIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        ExpandablePageView(
          controller: controller,
          onPageChanged: (value) {
            if (selectedIndex != value) {
              setState(
                () {
                  selectedIndex = value;
                },
              );
            }
          },
          children: List.generate(
            3,
            (index) => const CardWidget(),
          ),
        ),
        DotWidgetBuilder(selectedIndex: selectedIndex, controller: controller),
      ],
    );
  }
}
