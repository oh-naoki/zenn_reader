import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zenn_reader/models/zenn_article.dart';

part 'zenn_api_client.g.dart';

final restClientProvider = Provider((ref) => RestClient(Dio()));

@RestApi(baseUrl: "https://zenn-api.vercel.app/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/trendTech")
  Future<List<ZennArticle>> getArticles();
}
