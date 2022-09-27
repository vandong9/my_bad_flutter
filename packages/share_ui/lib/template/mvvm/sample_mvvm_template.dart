import 'package:flutter/material.dart';
import 'package:share_ui/template/mvvm/mvvm_template.dart';

class SampleInput implements Input {
  @override
  dispose() {}
}

class SampleOutput implements Output {
  @override
  dispose() {}
}

class SampleMVVMTemplateScreen extends BaseMVVMScreen {
  SampleMVVMTemplateScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SampleBaseMVVMState();
}

/*
class AccountListScreen extends BaseMVVMScreen {
  const AccountListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AccountListScreenState();
}
*/

class SampleBaseMVVMState
    extends BaseMVVMState<SampleMVVMTemplateScreen, SampleBaseViewModel> {
  SampleBaseMVVMState()
      : super(SampleBaseViewModel(SampleInput(), SampleOutput()));

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class SampleBaseViewModel extends BaseViewModel {
  SampleBaseViewModel(super.input, super.output);

  @override
  dispose() {}

  @override
  transform() {
    // TODO: implement transform
    throw UnimplementedError();
  }
}
