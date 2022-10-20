import 'package:flutter/material.dart';
import 'package:simulator/module/home/widget/biller_category_widget.dart';
import 'package:simulator/module/home/widget/biller_product_widget.dart';
import 'package:simulator/module/home/widget/confirm_widget.dart';
import 'package:simulator/module/home/widget/enquiry_widget.dart';

class DevApiTestFragment extends StatefulWidget {
  const DevApiTestFragment({Key? key}) : super(key: key);

  @override
  State<DevApiTestFragment> createState() => _DevApiTestFragmentState();
}

class _DevApiTestFragmentState extends State<DevApiTestFragment> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth >= 600)
        ? Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
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
                        child: getWidget(_selectedIndex),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(children: [
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
                    onSelected: (value) => setState(
                      () {
                        _selectedIndex = 3;
                      },
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: getWidget(_selectedIndex),
                ),
              ),
            ],
          );
  }

  Widget getWidget(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const BillerCategoryWidget();
      case 1:
        return const BillerProductWidget();
      case 2:
        return const EnquiryWidget();
      case 3:
        return const ConfirmWidget();
      default:
        return const BillerCategoryWidget();
    }
  }
}
