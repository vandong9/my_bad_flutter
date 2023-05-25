import 'dart:async';
import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_bad/presentation/widget/loading/simulator/page_model.dart';
import 'package:my_bad/presentation/widget/loading/simulator/simulator.dart';

class ShowSimulatorScreen extends StatefulWidget {
  const ShowSimulatorScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ShowSimulatorScreenState();
}

class _ShowSimulatorScreenState extends State<ShowSimulatorScreen> {
  PageModel pageModel = PageModel.mockObject();
  Widget? selectedWidgetInfo;
  NotifySelectedWidget selectedWidget = NotifySelectedWidget();

  @override
  void initState() {
    super.initState();
    selectedWidget.addListener(() {
      setState(() {
        selectedWidgetInfo = null;
      });

      Future.delayed(
        const Duration(milliseconds: 100),
        () {
          setState(() {
            selectedWidgetInfo = selectedWidget.widget;
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400,
          child: selectedWidgetInfo == null
              ? const Text("left")
              : selectedWidgetInfo!,
        ),
        SizedBox(
            width: 375,
            child: EditPageViewData(
                pageModel: pageModel,
                selectedWidget: selectedWidget,
                child: Builder(builder: (BuildContext innerContext) {
                  EditPageViewData editPageViewData =
                      EditPageViewData.of(innerContext);

                  return SimulatorWidget(
                    pageModel: editPageViewData.pageModel,
                  );
                })))
      ],
    ));
  }
}

class EditPageViewData extends InheritedWidget {
  NotifySelectedWidget selectedWidget = NotifySelectedWidget();
  PageModel pageModel;

  EditPageViewData({
    super.key,
    required this.pageModel,
    required this.selectedWidget,
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
    return true;
    // return (selectedWidget.widget != oldWidget.selectedWidget.widget ||
    // pageModel != oldWidget.pageModel);
  }
}

class NotifySelectedWidget extends ChangeNotifier {
  String controlID = "";
  Widget? widget;

  void updateSelectedWidget(Widget newWidget, String id) {
    widget = newWidget;
    controlID = id;
    notifyListeners();
  }
}
