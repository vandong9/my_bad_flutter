import 'package:share_ui/template/mvvm/mvvm_template.dart';

class ProductListInput implements Input {
  @override
  dispose() {}
}

class ProductListOutput implements Output {
  @override
  dispose() {}
}

class ProductListBaseViewModel extends BaseViewModel {
  ProductListBaseViewModel(super.input, super.output);

  @override
  dispose() {}

  @override
  transform() {
    // TODO: implement transform
    throw UnimplementedError();
  }
}
