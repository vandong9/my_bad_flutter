import 'package:share_ui/template/mvvm/mvvm_template.dart';

class ProductDetailInput implements Input {
  @override
  dispose() {}
}

class ProductDetailOutput implements Output {
  @override
  dispose() {}
}

class ProductDetailBaseViewModel extends BaseViewModel {
  ProductDetailBaseViewModel(super.input, super.output);

  @override
  dispose() {}

  @override
  transform() {
    // TODO: implement transform
    throw UnimplementedError();
  }
}
