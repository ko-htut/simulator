// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/biller_category_store.dart';
import 'package:simulator/utils/color_utils.dart';

class BillerCategoryWidget extends StatefulWidget {
  const BillerCategoryWidget({Key? key}) : super(key: key);

  @override
  State<BillerCategoryWidget> createState() => _BillerCategoryWidgetState();
}

class _BillerCategoryWidgetState extends State<BillerCategoryWidget> {
  final BillerCategoryStore _billerCategoryStore =
      Modular.get<BillerCategoryStore>();

  bool isClickedStartPlaying = false;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController channelNameController = TextEditingController();
  late TextEditingController billerCodeController = TextEditingController();

  final FocusNode _channelNameFocus = FocusNode();
  final FocusNode _billerCodeFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _item(name: 'Biller Category'),
            Observer(builder: (context) {
              if (_billerCategoryStore.errorMessage.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5), color: Colors.red),
                  child: Text(
                    _billerCategoryStore.errorMessage,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }
              return const SizedBox();
            }),
          ],
        ),
      );
    });
  }

  Widget _formList() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            focusNode: _channelNameFocus,
            controller: channelNameController,
            textAlignVertical: TextAlignVertical.center,
            onEditingComplete: () => _channelNameFocus.unfocus(),
            onFieldSubmitted: (term) =>
                _fieldFocusChange(context, _channelNameFocus, _billerCodeFocus),
            decoration: _myInputDecoration(
              hint: 'Enter your Channel Code',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter your Channel Code';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            focusNode: _billerCodeFocus,
            controller: billerCodeController,
            onEditingComplete: () => _billerCodeFocus.unfocus(),
            decoration: _myInputDecoration(
              hint: 'Enter your Biller Code',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter your Biller Code';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          _buttom(
            name: 'Biller Category',
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String name,
  }) {
    return MediaQuery.of(context).size.width > 600
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(5.0), child: _formList()),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200]),
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Request Data"),
                          (_billerCategoryStore.requestBodys == null)
                              ? const Text("Request is null")
                              : JsonViewer(_billerCategoryStore.requestBodys),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200]),
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Response Data"),
                          (_billerCategoryStore.billerCategoryResponse == null)
                              ? const Text("Respnse is null")
                              : JsonViewer(
                                  _billerCategoryStore.billerCategoryResponse!.toJson()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _formList(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200]),
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Request Data"),
                        (_billerCategoryStore.requestBodys == null)
                            ? const Text("Request is null")
                            : JsonViewer(_billerCategoryStore.requestBodys),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200]),
                    padding: const EdgeInsets.all(5),
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (_billerCategoryStore.billerCategoryResponse == null)
                            ? const Text("Respnse is null")
                            : JsonViewer(
                                _billerCategoryStore.billerCategoryResponse!.toJson()),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  Widget _buttom({
    required String name,
  }) {
    return Observer(builder: (context) {
      if (_billerCategoryStore.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return GestureDetector(
        onTap: () {
          final FormState? form = _formKey.currentState;
          if (_formKey.currentState!.validate()) {
            form!.save();
            _billerCategoryStore.getBillerCategory(
                tchannelCode: channelNameController.text,
                tbillerCode: billerCodeController.text);
          }
        },
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width > 600
              ? MediaQuery.of(context).size.width / 2
              : double.infinity,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.indigoAccent),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
    });
  }

  void _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  InputDecoration _myInputDecoration({
    required String hint,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      contentPadding: const EdgeInsets.only(
        left: 12,
        top: 12,
        bottom: 12,
      ),
      fillColor: ColorUtils.colorD3E9FF,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.colorD3E9FF,
          width: 1.0,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.colorD3E9FF,
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorUtils.secondaryColor,
          width: 2.0,
        ),
      ),
    );
  }
}
