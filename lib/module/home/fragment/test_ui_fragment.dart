import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/api_ui_store.dart';
import 'package:simulator/module/home/store/biller_category_store.dart';
import 'package:simulator/module/home/store/biller_product_store.dart';
import 'package:simulator/module/home/store/comfirm_store.dart';
import 'package:simulator/module/home/store/enquiry_store.dart';
import 'package:simulator/module/home/store/model/biller_c_p.dart';
import 'package:simulator/utils/color_utils.dart';

class TestUIFragment extends StatefulWidget {
  const TestUIFragment({Key? key}) : super(key: key);

  @override
  State<TestUIFragment> createState() => _TestUIFragmentState();
}

class _TestUIFragmentState extends State<TestUIFragment> {
  final BillerCategoryStore _billerCategoryStore =
      Modular.get<BillerCategoryStore>();

  final BillerProductStore _billerProductStore =
      Modular.get<BillerProductStore>();

  final EnquiryStore _enquiryStore = Modular.get<EnquiryStore>();

  final ComfirmStore _comfirmStore = Modular.get<ComfirmStore>();

  final ApiUIStore _apiUIStore = Modular.get<ApiUIStore>();

  bool isClickedStartPlaying = false;

  final _formKey = GlobalKey<FormState>();

  late TextEditingController channelNameController = TextEditingController();
  late TextEditingController billerCodeController = TextEditingController();
  late TextEditingController mobileNumberController = TextEditingController();

  final FocusNode _channelNameFocus = FocusNode();
  final FocusNode _billerCodeFocus = FocusNode();
  final FocusNode _mobileNumberFocus = FocusNode();

  ProductList? _selectedDenoValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _formList(),
            Observer(builder: (context) {
              if (_billerCategoryStore.errorMessage.isNotEmpty ||
                  _billerProductStore.errorMessage.isNotEmpty ||
                  _enquiryStore.errorMessage.isNotEmpty ||
                  _comfirmStore.errorMessage.isNotEmpty) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red),
                  child: Text(
                    "${_billerCategoryStore.errorMessage} ${_billerProductStore.errorMessage}  ${_enquiryStore.errorMessage} ${_comfirmStore.errorMessage}",
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }
              return const SizedBox();
            }),
          ],
        ),
      ),
    );
  }

  Widget _formList() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _field(
            controller: channelNameController,
            currnetfocusNode: _channelNameFocus,
            text: "Channel Name",
            hint: "Channel name",
            validateEmptyMessage: "Channel name can not empty !!!",
            onEditingComplete: () => _channelNameFocus.unfocus(),
            onFieldSubmitted: () =>
                _fieldFocusChange(context, _channelNameFocus, _billerCodeFocus),
          ),
          const SizedBox(
            height: 5,
          ),
          _field(
            controller: billerCodeController,
            currnetfocusNode: _billerCodeFocus,
            text: "Biller Code",
            hint: "Biller Code",
            validateEmptyMessage: "Biller code can not empty !!!",
            onFieldSubmitted: () => _fieldFocusChange(
                context, _billerCodeFocus, _mobileNumberFocus),
          ),
          const SizedBox(
            height: 5,
          ),
          Observer(builder: (context) {
            if (_apiUIStore.uiState >= 1) {
              return Column(
                children: [
                  _field(
                    controller: mobileNumberController,
                    currnetfocusNode: _mobileNumberFocus,
                    text: "Mobile Number",
                    hint: "Mobile Number",
                    validateEmptyMessage: "Biller code can not empty !!!",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _dropDown(text: "Transaction Amount"),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            }
            return const SizedBox();
          }),
          Observer(builder: (context) {
            return _buttom(name: _apiUIStore.indexBtntitle);
          }),
        ],
      ),
    );
  }

  Widget _dropDown({
    required String text,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;

    return (screenWidth >= 600)
        ? Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(text),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                  child: DropdownButtonFormField<ProductList>(
                isDense: true,
                style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(3),
                  fillColor: const Color.fromARGB(255, 30, 115, 233),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorUtils.colorD3E9FF,
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
                      color: ColorUtils.colorD3E9FF,
                    ),
                  ),
                ),
                value: _selectedDenoValue,
                hint: const Text(
                  'choose one',
                ),
                isExpanded: true,
                onChanged: (value) {
                  setState(() {
                    _selectedDenoValue = value;
                  });
                },
                onSaved: (value) {
                  setState(() {
                    _selectedDenoValue = value;
                  });
                },
                validator: (ProductList? value) {
                  if (value == null) {
                    return "can't empty";
                  } else {
                    return null;
                  }
                },
                items: _billerProductStore.billerProductResponse!.productList!
                    .map((ProductList val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Text(
                      val.productName!,
                    ),
                  );
                }).toList(),
              )),
              Expanded(
                flex: (screenWidth >= 600)
                    ? 2
                    : (screenWidth >= 800)
                        ? 4
                        : (screenWidth >= 1000)
                            ? 6
                            : (screenWidth >= 1200)
                                ? 8
                                : (screenWidth >= 1500)
                                    ? 10
                                    : 12,
                child: const SizedBox(),
              ),
            ],
          )
        : SizedBox(
            height: 75,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(text),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButtonFormField<ProductList>(
                  isDense: true,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(3),
                    fillColor: const Color.fromARGB(255, 30, 115, 233),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: ColorUtils.colorD3E9FF,
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
                        color: ColorUtils.colorD3E9FF,
                      ),
                    ),
                  ),
                  value: _selectedDenoValue,
                  hint: const Text(
                    'choose one',
                  ),
                  isExpanded: true,
                  onChanged: (value) {
                    setState(() {
                      _selectedDenoValue = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      _selectedDenoValue = value;
                    });
                  },
                  validator: (ProductList? value) {
                    if (value == null) {
                      return "can't empty";
                    } else {
                      return null;
                    }
                  },
                  items: _billerProductStore.billerProductResponse!.productList!
                      .map((ProductList val) {
                    return DropdownMenuItem(
                      value: val,
                      child: Text(
                        val.productName!,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
  }

  Widget _field(
      {required String text,
      required String hint,
      required FocusNode currnetfocusNode,
      required TextEditingController controller,
      required String validateEmptyMessage,
      void Function()? onEditingComplete,
      void Function()? onFieldSubmitted}) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (screenWidth >= 600)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Text(text),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 3,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  focusNode: currnetfocusNode,
                  controller: controller,
                  textAlignVertical: TextAlignVertical.center,
                  onEditingComplete: () => onEditingComplete!(),
                  onFieldSubmitted: (v) => onFieldSubmitted!(),
                  decoration: _myInputDecoration(
                    hint: hint,
                  ),
                  cursorColor: Colors.pink,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return validateEmptyMessage;
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Expanded(
                flex: (screenWidth >= 600)
                    ? 2
                    : (screenWidth >= 800)
                        ? 4
                        : (screenWidth >= 1000)
                            ? 6
                            : (screenWidth >= 1200)
                                ? 8
                                : (screenWidth >= 1500)
                                    ? 10
                                    : 12,
                child: const SizedBox(),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(text),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                focusNode: currnetfocusNode,
                controller: controller,
                textAlignVertical: TextAlignVertical.center,
                onEditingComplete: () => onEditingComplete!(),
                onFieldSubmitted: (v) => onFieldSubmitted!(),
                decoration: _myInputDecoration(
                  hint: hint,
                ),
                cursorColor: Colors.pink,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return validateEmptyMessage;
                  } else {
                    return null;
                  }
                },
              ),
            ],
          );
  }

  Widget _buttom({
    required String name,
  }) {
    return Observer(builder: (context) {
      if (_comfirmStore.isLoading ||
          _billerProductStore.isLoading ||
          _billerCategoryStore.isLoading ||
          _enquiryStore.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return GestureDetector(
        onTap: () {
          final FormState? form = _formKey.currentState;
          if (_formKey.currentState!.validate()) {
            form!.save();
            if (_apiUIStore.uiState == 0) {
              _billerCategoryStore
                  .getBillerCategory(
                      tchannelCode: channelNameController.text,
                      tbillerCode: billerCodeController.text)
                  .then(
                    (value) => _billerProductStore.getBillerProduct(
                        tchannelCode: channelNameController.text,
                        tbillerCode: billerCodeController.text),
                  );
            } else if (_apiUIStore.uiState == 1) {
              _enquiryStore.getEnquiry(
                  tchannelCode: channelNameController.text,
                  tbillerCode: billerCodeController.text,
                  deno: _selectedDenoValue!.productAmount ?? "",
                  mobileNumber: mobileNumberController.text);
            } else if (_apiUIStore.uiState == 2) {
              _comfirmStore.getComfirm(
                  tchannelCode: channelNameController.text,
                  tbillerCode: billerCodeController.text,
                  deno: _selectedDenoValue!.productAmount ?? "",
                  mobileNumber: mobileNumberController.text,
                  channelRefId: '',
                  transactionAmount: int.parse(
                    _selectedDenoValue!.productAmount ?? "",
                  ));
            }
          }
        },
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width > 600
              ? MediaQuery.of(context).size.width / 3.5
              : MediaQuery.of(context).size.width,
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
