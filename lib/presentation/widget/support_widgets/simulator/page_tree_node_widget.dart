import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

import '../../../../data/model/render_object/base_render_object.dart';
import '../../../features/show_simulator/show_simulator_screen.dart';

PublishSubject publishSubject = PublishSubject();

class PageTreeNodeWidget extends StatefulWidget {
  BaseViewRenderObject pageObject;
  Function(BaseViewRenderObject) onSelected;
  Function() onChanged;

  PageTreeNodeWidget(
      {super.key,
      required this.pageObject,
      required this.onSelected,
      required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    publishSubject.listen((value) {
      onChanged();
    });
    return PageTreeNodeWidgetState();
  }
}

class PageTreeNodeWidgetState extends State<PageTreeNodeWidget> {
  List<Widget> getTreeNode() {
    List<Widget> treeWidget = [];

    widget.pageObject.childrenNode.forEach((element) {
      if (element.childrenNode.length > 0) {
        treeWidget.add(ParentNodeWidget(
          renderObject: element,
          onSelected: (renderObject) {
            widget.onSelected(renderObject);
          },
        ));
      } else {
        treeWidget.add(LeafNodeWidget(
          renderObject: element,
          onSelected: (renderObject) {
            widget.onSelected(renderObject);
          },
          onDeleted: () {
            publishSubject.add("event");
          },
        ));
      }
    });
    return treeWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ParentNodeWidget(
            renderObject: widget.pageObject,
            onSelected: (id) {
              widget.onSelected(id);
            },
          )
        ],
      ),
    );
  }
}

class ParentNodeWidget extends StatefulWidget {
  BaseViewRenderObject renderObject;
  Function(BaseViewRenderObject) onSelected;
  ParentNodeWidget(
      {super.key, required this.renderObject, required this.onSelected});

  @override
  State<StatefulWidget> createState() => ParentNodeWidgetState();
}

class ParentNodeWidgetState extends State<ParentNodeWidget> {
  List<Widget> getChildrenNode() {
    List<Widget> treeWidget = [];
    widget.renderObject.childrenNode.forEach((element) {
      if (element.childrenNode.length > 0) {
        treeWidget.add(ParentNodeWidget(
          renderObject: element,
          onSelected: (id) {
            widget.onSelected(id);
          },
        ));
      } else {
        treeWidget.add(LeafNodeWidget(
          renderObject: element,
          onSelected: (renderObject) {
            widget.onSelected(renderObject);
          },
          onDeleted: () {
            publishSubject.add("event");
          },
        ));
      }
    });
    return treeWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        LeafNodeWidget(
          renderObject: widget.renderObject,
          isParent: true,
          onSelected: (renderObject) {
            widget.onSelected(renderObject);
          },
          onDeleted: () {},
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: getChildrenNode(),
          ),
        )
      ]),
    );
  }
}

class LeafNodeWidget extends StatefulWidget {
  bool isParent = false;
  BaseViewRenderObject renderObject;
  Function(BaseViewRenderObject) onSelected;
  Function() onDeleted;
  LeafNodeWidget(
      {super.key,
      required this.renderObject,
      this.isParent = false,
      required this.onSelected,
      required this.onDeleted});

  @override
  State<StatefulWidget> createState() => LeafNodeWidgetState();
}

class LeafNodeWidgetState extends State<LeafNodeWidget> {
  bool isSelected = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    EditPageViewData editPageViewData =
        EditPageViewData.of(context); // Little tricky force

    isSelected = editPageViewData.selectedWidget.controlID ==
        widget.renderObject.objectID;
  }

  makeDelte() {}
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelected(widget.renderObject);
      },
      child: Container(
        child: Row(
          children: [
            widget.isParent ? Container() : Text("|-- "),
            Text(
              widget.renderObject.name,
              style: TextStyle(color: isSelected ? Colors.red : Colors.black),
            ),
            SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      AlertDialog alert = AlertDialog(
                        title: Text("Warning"),
                        content: Text("Are you sure to remove this control ?"),
                        actions: [
                          TextButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                              widget.renderObject.parent
                                  ?.removeChild(widget.renderObject);
                              widget.onDeleted();
                            },
                          ),
                        ],
                      );
                      return alert;
                    });
              },
              child: Icon(
                Icons.delete_forever,
                size: 12.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
