import 'package:riverpod/riverpod.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/services/zenn_api_service.dart';

final zennRepositoryProvider = Provider.autoDispose((ref) {
  return ZennRepository(restClient: ref.read(zennApiServiceProvider));
});

class ZennRepository {
  final ZennApiService restClient;

  ZennRepository({required this.restClient});

  Future<List<ZennArticle>> fetch() async {
    return restClient.getArticles();
  }
}
