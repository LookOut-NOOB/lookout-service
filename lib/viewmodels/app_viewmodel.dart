import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

import '../services/repository_service.dart';
import '../services/service_locator.dart';

class AppViewModel extends ReactiveViewModel {
  final _repositoryService = getIt<RepositoryService>();
  @override
  List<ReactiveServiceMixin> get reactiveServices => [_repositoryService];

  RepositoryService get repositoryService => _repositoryService;

  Future<QuerySnapshot<Map<String, dynamic>>> getAppNameFromFirebase() async {
    return await _repositoryService.getAppNameFromFirebase();
  }
}
