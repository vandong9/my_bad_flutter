import 'package:get_it/get_it.dart';
import 'package:my_bad/di/modules/module.dart';
import '../data/repository/repository_module.dart';
import '../environment_info.dart';

final sl = GetIt.instance;

abstract class DIModule {
  void provides({EnvironmentInfo? env});
}

class Injection {
  static Future<void> inject(EnvironmentInfo env) async {
    // await ComponentsModule().provides(env: env);
    // await ApiModule().provides();
    await RepositoryModule().provides();
    await ComponentsModule().provides();
    // await BlocModule().provides();
  }
}

void init() {}
