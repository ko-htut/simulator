import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/enquiry_store.dart';
import 'package:simulator/utils/color_utils.dart';

class EnquiryWidget extends StatefulWidget {
  const EnquiryWidget({Key? key}) : super(key: key);

  @override
  State<EnquiryWidget> createState() => _EnquiryWidgetState();
}

class _EnquiryWidgetState extends State<EnquiryWidget> {
  final EnquiryStore _enquiryStore = Modular.get<EnquiryStore>();

  bool isClickedStartPlaying = false;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController channelNameController = TextEditingController();
  late TextEditingController billerCodeController = TextEditingController();
  late TextEditingController denoCodeController = TextEditingController();
  late TextEditingController mobileNumberController = TextEditingController();

  final FocusNode _channelNameFocus = FocusNode();
  final FocusNode _billerCodeFocus = FocusNode();
  final FocusNode _denoCodeFocus = FocusNode();
  final FocusNode _mobileNumberFocus = FocusNode();

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
              if (_enquiryStore.errorMessage.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red),
                  child: Text(
                    _enquiryStore.errorMessage,
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
            onFieldSubmitted: (term) =>
                _fieldFocusChange(context, _billerCodeFocus, _denoCodeFocus),
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
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            focusNode: _denoCodeFocus,
            controller: denoCodeController,
            onEditingComplete: () => _denoCodeFocus.unfocus(),
            onFieldSubmitted: (term) =>
                _fieldFocusChange(context, _denoCodeFocus, _mobileNumberFocus),
            decoration: _myInputDecoration(
              hint: 'Enter your Deno Code',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter your Deno Code';
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
            focusNode: _mobileNumberFocus,
            controller: mobileNumberController,
            onEditingComplete: () => _mobileNumberFocus.unfocus(),
            decoration: _myInputDecoration(
              hint: 'Enter your Mobile Number',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter your Mobile Number';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          _buttom(
            name: 'Enquiry',
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
                          (_enquiryStore.requestBodys == null)
                              ? const Text("Request is null")
                              : JsonViewer(_enquiryStore.requestBodys),
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
                          (_enquiryStore.enquiryResponse == null)
                              ? const Text("Respnse is null")
                              : JsonViewer(_enquiryStore.enquiryResponse!
                                  .toJson()),
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
                        (_enquiryStore.requestBodys == null)
                            ? const Text("Request is null")
                            : JsonViewer(_enquiryStore.requestBodys),
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
                        (_enquiryStore.enquiryResponse == null)
                            ? const Text("Respnse is null")
                            : JsonViewer(
                                _enquiryStore.enquiryResponse!.toJson()),
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
      if (_enquiryStore.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return GestureDetector(
        onTap: () {
          final FormState? form = _formKey.currentState;
          if (_formKey.currentState!.validate()) {
            form!.save();
            _enquiryStore.getEnquiry(
                tchannelCode: channelNameController.text,
                tbillerCode: billerCodeController.text,
                deno: denoCodeController.text,
                mobileNumber: mobileNumberController.text);
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
