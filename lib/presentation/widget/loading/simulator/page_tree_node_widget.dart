import 'package:flutter/material.dart';

import '../../../../data/model/render_object/base_render_object.dart';

class PageTreeNodeWidget extends StatefulWidget {
  BaseViewRenderObject pageObject;
  Function(String) onSelected;

  PageTreeNodeWidget(
      {super.key, required this.pageObject, required this.onSelected});

  @override
  State<StatefulWidget> createState() => PageTreeNodeWidgetState();
}

class PageTreeNodeWidgetState extends State<PageTreeNodeWidget> {
  List<Widget> getTreeNode() {
    List<Widget> treeWidget = [];
    widget.pageObject.childrenNode.forEach((element) {
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
          onSelected: (id) {
            widget.onSelected(id);
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
  Function(String) onSelected;
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
          onSelected: (id) {
            widget.onSelected(id);
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
          onSelected: (String) {
            widget.onSelected(widget.renderObject.objectID);
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
  Function(String) onSelected;
  LeafNodeWidget(
      {super.key,
      required this.renderObject,
      this.isParent = false,
      required this.onSelected});

  @override
  State<StatefulWidget> createState() => LeafNodeWidgetState();
}

class LeafNodeWidgetState extends State<LeafNodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          widget.isParent ? Container() : Text("-- "),
          Text(widget.renderObject.name)
        ],
      ),
    );
  }
}
