import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/models/zenn_user.dart';
import 'package:zenn_reader/repositories/zenn_repository.dart';
import 'package:zenn_reader/screens/article/article_viewmodel.dart';

class MockZennRepository extends Mock implements ZennRepository {}

void main() {
  late ZennRepository zennRepository;
  late ProviderContainer providerContainer;

  setUp(() {
    zennRepository = MockZennRepository();
    providerContainer = ProviderContainer(
      overrides: [
        zennRepositoryProvider.overrideWithValue(zennRepository),
      ],
    );
  });

  test("ArticleViewModel", () async {
    when(() => zennRepository.fetch()).thenAnswer(
      (invocation) => Future.value(
        [
          const ZennArticle(
            id: 1,
            title: "title",
            emoji: "emoji",
            path: "path",
            bodyLettersCount: 100,
            likedCount: 2,
            commentsCount: 0,
            user: ZennUser(id: 1, username: "", avatarSmallUrl: ""),
          ),
        ],
      ),
    );

    expect(
      providerContainer.read(articleViewModelProvider),
      const AsyncValue<ArticleScreenState>.loading(),
    );

    await Future.value();

    expect(
      providerContainer.read(articleViewModelProvider).asData!.value,
      const ArticleScreenState(articles: [
        ZennArticle(
          id: 1,
          title: "title",
          emoji: "emoji",
          path: "path",
          bodyLettersCount: 100,
          likedCount: 2,
          commentsCount: 0,
          user: ZennUser(id: 1, username: "", avatarSmallUrl: ""),
        ),
      ]),
    );

    // 別ケースとして独立して実行したい…
    verify(() => zennRepository.fetch()).called(1);
  });
}
