import 'package:get_it/get_it.dart';

import 'repository_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<RepositoryService>(RepositoryService());
}
