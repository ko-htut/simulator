import 'package:flutter/material.dart';
import 'package:flutter_json_viewer/flutter_json_viewer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/comfirm_store.dart';
import 'package:simulator/utils/color_utils.dart';

class ConfirmWidget extends StatefulWidget {
  const ConfirmWidget({Key? key}) : super(key: key);

  @override
  State<ConfirmWidget> createState() => _ConfirmWidgetState();
}

class _ConfirmWidgetState extends State<ConfirmWidget> {
  final ComfirmStore _comfirmStore = Modular.get<ComfirmStore>();

  bool isClickedStartPlaying = false;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController channelNameController = TextEditingController();
  late TextEditingController billerCodeController = TextEditingController();
  late TextEditingController denoCodeController = TextEditingController();
  late TextEditingController mobileNumberController = TextEditingController();
  late TextEditingController refIdController = TextEditingController();
  late TextEditingController amountController = TextEditingController();

  final FocusNode _channelNameFocus = FocusNode();
  final FocusNode _billerCodeFocus = FocusNode();
  final FocusNode _denoCodeFocus = FocusNode();
  final FocusNode _mobileNumberFocus = FocusNode();
  final FocusNode _refIdFocus = FocusNode();
  final FocusNode _amountFocus = FocusNode();

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
            _item(name: 'Comfirm'),
            Observer(builder: (context) {
              if (_comfirmStore.errorMessage.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red),
                  child: Text(
                    _comfirmStore.errorMessage,
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
            onFieldSubmitted: (term) =>
                _fieldFocusChange(context, _mobileNumberFocus, _refIdFocus),
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
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            focusNode: _refIdFocus,
            controller: refIdController,
            onEditingComplete: () => _refIdFocus.unfocus(),
            onFieldSubmitted: (term) =>
                _fieldFocusChange(context, _refIdFocus, _amountFocus),
            decoration: _myInputDecoration(
              hint: 'Enter your ref Id',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter your ref Id';
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
            keyboardType: TextInputType.number,
            focusNode: _amountFocus,
            controller: amountController,
            onEditingComplete: () => _mobileNumberFocus.unfocus(),
            decoration: _myInputDecoration(
              hint: 'Enter your Transaction Amount',
            ),
            cursorColor: Colors.pink,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter  your Transaction Amount';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          _buttom(
            name: 'Comfirm',
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
                          (_comfirmStore.requestBodys == null)
                              ? const Text("Request is null")
                              : JsonViewer(_comfirmStore.requestBodys),
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
                          (_comfirmStore.comfirmResponse == null)
                              ? const Text("Respnse is null")
                              : JsonViewer(_comfirmStore.comfirmResponse!
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
                        (_comfirmStore.requestBodys == null)
                            ? const Text("Request is null")
                            : JsonViewer(_comfirmStore.requestBodys),
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
                        (_comfirmStore.comfirmResponse == null)
                            ? const Text("Respnse is null")
                            : JsonViewer(
                                _comfirmStore.comfirmResponse!.toJson()),
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
      if (_comfirmStore.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return GestureDetector(
        onTap: () {
          final FormState? form = _formKey.currentState;
          if (_formKey.currentState!.validate()) {
            form!.save();
            _comfirmStore.getComfirm(
                tchannelCode: channelNameController.text,
                tbillerCode: billerCodeController.text,
                deno: denoCodeController.text,
                mobileNumber: mobileNumberController.text,
                channelRefId: refIdController.text,
                transactionAmount: int.parse(amountController.text));
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
