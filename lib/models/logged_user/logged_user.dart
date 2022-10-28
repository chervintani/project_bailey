// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_user.freezed.dart';
part 'logged_user.g.dart';

@freezed
class LoggedUser with _$LoggedUser {
  const factory LoggedUser({
    @Default('') String email,
    @Default('') String name,
  }) = _LoggedUser;

  factory LoggedUser.fromJson(Map<String, dynamic> json) =>
      _$LoggedUserFromJson(json);
}
