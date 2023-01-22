import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:zenn_reader/repositories/zenn_repository.dart';
import 'package:zenn_reader/services/zenn_api_service.dart';

class MockApiService extends Mock implements ZennApiService {}

void main() {
  late ZennApiService apiService;
  late ProviderContainer providerContainer;

  setUp(() {
    apiService = MockApiService();
    providerContainer = ProviderContainer(
      overrides: [
        zennApiServiceProvider.overrideWithValue(apiService),
      ],
    );
  });

  test("Verify ZennApiService#getArticles only once when ZennRepository#fetch called", () {
    when(() => apiService.getArticles()).thenAnswer((invocation) => Future.value([]));
    providerContainer.read(zennRepositoryProvider).fetch();
    verify(() => apiService.getArticles()).called(1);
  });
}
