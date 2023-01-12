import 'package:riverpod/riverpod.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/services/zenn_api_client.dart';

final zennRepositoryProvide = FutureProvider.autoDispose((ref) {
  return ZennRepository(restClient: ref.watch(restClientProvider));
});

class ZennRepository {
  final RestClient restClient;

  ZennRepository({required this.restClient});

  Future<List<ZennArticle>> fetch() async {
    return restClient.getArticles();
  }
}
