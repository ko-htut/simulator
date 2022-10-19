import 'package:flutter/material.dart';
import 'package:simulator/module/home/widget/biller_category_widget.dart';
import 'package:simulator/module/home/widget/biller_product_widget.dart';
import 'package:simulator/module/home/widget/confirm_widget.dart';
import 'package:simulator/module/home/widget/enquiry_widget.dart';
import 'package:simulator/module/home/widget/menu_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final bool _obscureText = true;

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 600) {
      // wide screen: menu on the left, content on the right
      return Scaffold(
        appBar: AppBar(
          // 3. add a non-null leading argument if we have a drawer
          // leading: hasDrawer
          //     ? IconButton(
          //         icon: Icon(Icons.menu),
          //         // 4. open the drawer if we have one
          //         onPressed:
          //             hasDrawer ? () => ancestorScaffold!.openDrawer() : null,
          //       )
          //     : null,
          title: const Text("Home"),
          // actions: actions,
        ),
        body: Row(
          children: [
            const SizedBox(
              width: 240,
              child: MenuWidget(),
            ),
            Container(width: 0.5, color: Colors.black),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ChoiceChip(
                          label: const Text("Biller Category"),
                          selected: _selectedIndex >= 0,
                          onSelected: (value) => setState(() {
                            _selectedIndex = 0;
                          }),
                        ),
                        ChoiceChip(
                          label: const Text("Biller Product"),
                          selected: _selectedIndex >= 1,
                          onSelected: (value) => setState(() {
                            _selectedIndex = 1;
                          }),
                        ),
                        ChoiceChip(
                          label: const Text("Enquiry"),
                          selected: _selectedIndex >= 2,
                          onSelected: (value) => setState(() {
                            _selectedIndex = 2;
                          }),
                        ),
                        ChoiceChip(
                          label: const Text("Confirm"),
                          selected: _selectedIndex >= 3,
                          onSelected: (value) => setState(() {
                            _selectedIndex = 3;
                          }),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: (_selectedIndex == 1)
                            ? BillerProductWidget()
                            : (_selectedIndex == 2)
                                ? const EnquiryWidget()
                                : (_selectedIndex == 3)
                                    ? const ConfirmWidget()
                                    : const EnquiryWidget()

                        // child: Column(children: [
                        //   const BillerCategoryWidget(),
                        //   BillerProductWidget(),
                        //   const EnquiryWidget(),
                        //   const ConfirmWidget()
                        // ]),
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                ChoiceChip(
                  label: const Text("Biller Category"),
                  selected: _selectedIndex == 0,
                  onSelected: (value) => setState(() {
                    _selectedIndex = 0;
                  }),
                ),
                ChoiceChip(
                  label: const Text("Biller Product"),
                  selected: _selectedIndex == 1,
                  onSelected: (value) => setState(() {
                    _selectedIndex = 1;
                  }),
                ),
                ChoiceChip(
                  label: const Text("Enquiry"),
                  selected: _selectedIndex == 2,
                  onSelected: (value) => setState(() {
                    _selectedIndex = 2;
                  }),
                ),
                ChoiceChip(
                  label: const Text("Confirm"),
                  selected: _selectedIndex == 3,
                  onSelected: (value) => setState(() {
                    _selectedIndex = 3;
                  }),
                ),
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: (_selectedIndex == 1)
                      ? BillerProductWidget()
                      : (_selectedIndex == 2)
                          ? const EnquiryWidget()
                          : (_selectedIndex == 3)
                              ? const ConfirmWidget()
                              : const EnquiryWidget()),
            ),
          ],
        ),
        drawer: const SizedBox(
          width: 240,
          child: Drawer(child: MenuWidget()),
        ),
      );
    }

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Home"),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: const AlwaysScrollableScrollPhysics(),
    //     child: Column(children: [
    //       const BillerCategoryWidget(),
    //       BillerProductWidget(),
    //       const EnquiryWidget(),
    //       const ConfirmWidget()
    //     ]),
    //   ),
    // );
  }
}
