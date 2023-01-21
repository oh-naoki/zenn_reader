import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zenn_reader/models/zenn_article.dart';

part 'zenn_api_service.g.dart';

final zennApiServiceProvider = Provider.autoDispose((ref) => ZennApiService(Dio()));

@RestApi(baseUrl: "https://zenn-api.vercel.app/api/")
abstract class ZennApiService {
  factory ZennApiService(Dio dio, {String baseUrl}) = _ZennApiService;

  @GET("/trendTech")
  Future<List<ZennArticle>> getArticles();
}
