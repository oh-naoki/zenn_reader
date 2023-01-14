import 'package:freezed_annotation/freezed_annotation.dart';

part 'zenn_user.freezed.dart';
part 'zenn_user.g.dart';

@freezed
abstract class ZennUser with _$ZennUser {
  const factory ZennUser({
    required int id,
    required String username,
    required String avatarSmallUrl,
  }) = _ZennUser;

  factory ZennUser.fromJson(Map<String, dynamic> json) => _$ZennUserFromJson(json);
}
