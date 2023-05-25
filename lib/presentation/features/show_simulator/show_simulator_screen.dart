import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/simulator/page_model.dart';
import 'package:my_bad/presentation/widget/loading/simulator/simulator.dart';

import '../../widget/loading/header/vib_header_editor.dart';
import '../../widget/loading/header/vib_header_view_model.dart';

class ShowSimulatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShowSimulatorScreenState();
}

class _ShowSimulatorScreenState extends State<ShowSimulatorScreen> {
  PageModel pageModel = PageModel.mockObject();

// VIBHeaderEditInfoView(model: model)
  @override
  Widget build(BuildContext context) {
    return EditPageViewData(
        pageModel: pageModel,
        selectedWidget: null,
        child: Container(
            child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("left"),
            ),
            Container(
              width: 414,
              child: SimulatorWidget(
                pageModel: pageModel,
              ),
            )
          ],
        )));
  }
}

class EditPageViewData extends InheritedWidget {
  Widget? selectedWidget;
  PageModel? pageModel;

  EditPageViewData({
    super.key,
    this.selectedWidget,
    this.pageModel,
    required super.child,
  });
  static EditPageViewData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EditPageViewData>();
  }

  static EditPageViewData of(BuildContext context) {
    final EditPageViewData? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(EditPageViewData oldWidget) {
    return (selectedWidget != oldWidget.selectedWidget ||
        pageModel != oldWidget.pageModel);
  }
}
