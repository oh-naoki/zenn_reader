import 'package:go_router/go_router.dart';
import 'package:zenn_reader/screens/article/article_screen.dart';
import 'package:zenn_reader/screens/article_detail/article_detail_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (_, __) => const ArticleScreen(),
    routes: [
      GoRoute(
          path: 'detail/:articleId',
          builder: (_, state) {
            return ArticleDetailScreen(articleId: int.parse(state.params['articleId']!));
          }),
    ],
  ),
]);
