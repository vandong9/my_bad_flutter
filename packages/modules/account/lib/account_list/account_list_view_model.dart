abstract class Input {
  dispose();
}

abstract class Output {
  dispose();
}

abstract class BaseViewModel<IN extends Input, OUT extends Output> {
  IN input;
  OUT output;
  BaseViewModel(this.input, this.output);
  transform();
  dispose();
}

class AccountListViewModel extends BaseViewModel<AccountListViewModelInput,
    AccountListViewModelOutput> {
  AccountListViewModel(super.input, super.output);

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
