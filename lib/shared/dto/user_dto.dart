import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  final String id;
  final String email;
  final bool isSpecialist;

  UserDTO({required this.id, required this.email, required this.isSpecialist});

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
