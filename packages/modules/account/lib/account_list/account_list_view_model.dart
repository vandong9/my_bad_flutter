import 'package:share_ui/template/mvvm/mvvm_template.dart';

class AccountListViewModel extends BaseViewModel<AccountListViewModelInput,
    AccountListViewModelOutput> {
  AccountListViewModel()
      : super(AccountListViewModelInput(), AccountListViewModelOutput());

  @override
  dispose() {
    input.printInput();
  }

  @override
  transform() {}
}

class AccountListViewModelInput implements Input {
  printInput() {}

  @override
  dispose() {}
}

class AccountListViewModelOutput implements Output {
  @override
  dispose() {}
}
