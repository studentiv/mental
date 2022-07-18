// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => UserDTO(
      id: json['id'] as String,
      email: json['email'] as String,
      isSpecialist: json['isSpecialist'] as bool,
    );

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'isSpecialist': instance.isSpecialist,
    };
