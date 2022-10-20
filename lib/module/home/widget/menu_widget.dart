import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:simulator/module/home/store/app_store.dart';

class MenuWidget extends StatelessWidget {
   MenuWidget({Key? key}) : super(key: key);

  final AppStore _appStore = Modular.get<AppStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        children: _appStore.menuList
            .map(
              (e) => PageListTile(
                pageName: e,
                selectedPageName: _appStore.indextitle,
                onPressed: () => _appStore.setDrawerIndex(title: e),
              ),
            )
            .toList(),
      );
    });
  }
}

class PageListTile extends StatelessWidget {
  const PageListTile({
    Key? key,
    this.selectedPageName,
    required this.pageName,
    this.onPressed,
  }) : super(key: key);
  final String? selectedPageName;
  final String pageName;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Opacity(
        opacity: selectedPageName == pageName ? 1.0 : 0.0,
        child: const Icon(Icons.check),
      ),
      title: Text(pageName),
      onTap: onPressed,
    );
  }
}
