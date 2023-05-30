import 'package:flutter/material.dart';

import '../../../../data/model/render_object/base_render_object.dart';
import '../../../features/show_simulator/show_simulator_screen.dart';

class PageTreeNodeWidget extends StatefulWidget {
  BaseViewRenderObject pageObject;
  Function(BaseViewRenderObject) onSelected;

  PageTreeNodeWidget(
      {super.key, required this.pageObject, required this.onSelected});

  @override
  State<StatefulWidget> createState() => PageTreeNodeWidgetState();
}

class PageTreeNodeWidgetState extends State<PageTreeNodeWidget> {
  List<Widget> getTreeNode() {
    List<Widget> treeWidget = [];
    int i = 0;
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
  LeafNodeWidget(
      {super.key,
      required this.renderObject,
      this.isParent = false,
      required this.onSelected});

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
            )
          ],
        ),
      ),
    );
  }
}
