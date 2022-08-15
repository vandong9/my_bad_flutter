import 'package:flutter/material.dart';
import 'package:my_bad/common/extension/string_extension.dart';
import 'package:my_bad/di/injector.dart';
import 'package:my_bad/common/utils/localized.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LanguageScreenState();
}

class LanguageScreenState extends State<LanguageScreen> {
  List<SupportLanguage> supportLanguage = [];
  ILocalizedLanguage languageManager = sl<ILocalizedLanguage>();

  Future updateSelectedLanguage(SupportLanguage newLanguage) async {
    await languageManager.switchToLanguage(newLanguage);
  }

  List<Widget> optionsWidget() {
    List<Widget> rows = [];
    for (var e in SupportLanguage.values) {
      ElevatedButton row = ElevatedButton(
          onPressed: () {
            updateSelectedLanguage(e).then((value) => {Navigator.pop(context)});
          },
          child: Row(children: [
            Text(e.name),
            Text(e.hashCode == languageManager.currentLanguage.hashCode
                ? "X"
                : "[]")
          ]));
      rows.add(row);
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Column(
            children: optionsWidget(),
          ),
          Text("top_bulk_delete_item_msg".localized())
        ]),
      ),
    );
  }
}
