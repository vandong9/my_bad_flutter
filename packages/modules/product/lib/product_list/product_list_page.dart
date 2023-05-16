import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';
import 'product_list_view_model.dart';
import 'widgets/item_cell_widget.dart';

class ProductListMVVMTemplateScreen extends BaseMVVMScreen {
  ProductListMVVMTemplateScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProductListBaseMVVMState();
}

class ProductListBaseMVVMState extends BaseMVVMState<
    ProductListMVVMTemplateScreen, ProductListBaseViewModel> {
  ProductListBaseMVVMState()
      : super(
            ProductListBaseViewModel(ProductListInput(), ProductListOutput()));

  List<ProductItemModel> items = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 20; i++) {
      items.add(ProductItemModel.mockObject());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Product"),
          leading: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.red),
              )),
        ),
        body: SafeArea(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: items.length,
              padding: const EdgeInsets.only(left: 18, right: 18),
              itemBuilder: (BuildContext context, int index) {
                return ItemCellWidget(items[index]);
              }),

          //  ListView.builder(
          //     physics: const AlwaysScrollableScrollPhysics(),
          //     padding: const EdgeInsets.all(8),
          //     itemCount: items.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ItemCellWidget(items[index]);
          //     }),
        ));
  }
}
