import 'package:flutter/material.dart';
import 'package:share_ui/widgets/base_widget.dart';

/// ViewModel
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

/// Screen
abstract class BaseMVVMScreen extends BaseWidget {
  const BaseMVVMScreen({super.key});
}

abstract class BaseMVVMState<T extends BaseMVVMScreen, VM extends BaseViewModel>
    extends BaseState<T> {
  VM viewmodel;
  BaseMVVMState(this.viewmodel);
}
