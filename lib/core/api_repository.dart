import 'package:rxdart/rxdart.dart';

import 'package:yuque/core/api_provider.dart';
import 'package:yuque/core/db_repository.dart';
import 'package:yuque/pojo/response/hello_response.dart';

class APIRepository {
  APIProvider _apiProvider;
  DBRepository _dbRepository;

  APIRepository(this._apiProvider, this._dbRepository);

  Observable<HelloModel> ping() {
    return Observable.fromFuture(_apiProvider.getHello());
  }
}