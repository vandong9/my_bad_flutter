import 'package:flutter/material.dart';
import 'package:my_bad/data/model/render_object/render_object_config.dart';
import 'package:my_bad/presentation/widget/loading/header/vib_header_editor.dart';
import 'package:rxdart/subjects.dart';
import 'package:share_ui/theme/app_theme.dart';
import 'package:share_ui/theme/theme_manager.dart';

import '../../../../r.dart';
import '../../../features/show_simulator/show_simulator_screen.dart';
import 'vib_header_view_model.dart';

class VIBHeaderView extends StatefulWidget {
  VibHeaderViewRenderObject model;
  VIBHeaderView({super.key, required this.model});

  Subject? onSelected;

  @override
  State<StatefulWidget> createState() {
    return VIBHeaderViewState(model: model);
  }
}

class VIBHeaderViewState extends State<VIBHeaderView> {
  VibHeaderViewRenderObject model;

  bool isSelected = true;

  VIBHeaderViewState({required this.model});

  String leftIconName = R.controlsImages.cmBackIcImages.cmBackIc;
  String rightIconName =
      R.controlsImages.cmCloseHeaderIcImagesetImages.cmCloseHeaderIc;

  Color backgroundColor = const Color.fromRGBO(0, 0, 0, 0);

  @override
  void initState() {
    super.initState();
    backgroundColor =
        mapVIbColorName[model.attribute.layout.background_color] ??
            Color.fromRGBO(0, 0, 0, 0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    EditPageViewData editPageViewData =
        EditPageViewData.of(context); // Little tricky force

    isSelected = editPageViewData.selectedWidget.controlID == model.objectID;
  }

  @override
  Widget build(BuildContext context) {
    InheritedAppThemeProvider themeProvider =
        InheritedAppThemeProvider.of(context)!; // Little tricky force
    AppTheme currentTheme = themeProvider.appTheme;
    EditPageViewData editPageViewData =
        EditPageViewData.of(context); // Little tricky force

    return Container(
      child: Stack(
        children: [
          Container(
            color: mapVIbColorName[model.attribute.layout.background_color] ??
                Color.fromRGBO(0, 0, 0, 0),
            padding: const EdgeInsets.only(left: 18, right: 18),
            height: model.attribute.layout.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: (model.attribute.properties.leftIcon == null
                      ? Container()
                      : Image.asset(model.attribute.properties.leftIcon!)),
                ),
                Text(
                  model.attribute.properties.title,
                  style: currentTheme.textStyle
                      .headline(currentTheme.color.grey900),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: (model.attribute.properties.rightIcon == null
                      ? Container()
                      : Image.asset(rightIconName)),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              editPageViewData?.selectedWidget.updateSelectedWidget(
                  VIBHeaderEditInfoView(
                    model: model,
                    onChanged: () {
                      setState(() {});
                    },
                  ),
                  model.objectID);
              // setState(() {
              //   isSelected = !isSelected;
              // });
            },
            child: Container(
              height: model.attribute.layout.height,
              decoration: isSelected
                  ? BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2))
                  : BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(0, 0, 0, 0), width: 2)),
            ),
          )
        ],
      ),
    );
  }
}
