import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../utils/network_info.dart';
import '../../injector.dart';
import '../../environment_info.dart';

class RepositoryModule extends DIModule {
  @override
  Future<void> provides({EnvironmentInfo? env}) async {
    /// Repositories
    sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(sl()),
    );
    sl.registerLazySingleton(() => Connectivity());
  }
}
