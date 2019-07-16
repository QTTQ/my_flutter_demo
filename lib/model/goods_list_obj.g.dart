// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goods_list_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoodsListObj _$GoodsListObjFromJson(Map<String, dynamic> json) {
  return GoodsListObj(
      json['count'] as int,
      json['next'] as String,
      (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Results.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$GoodsListObjToJson(GoodsListObj instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results
    };

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
      json['special_hero'] as String,
      json['prevent_addiction'] as String,
      json['bind_platform'] as String,
      json['gemstone_level'] as String,
      json['insurance_problem'] as String,
      json['insurance_answer'] as String,
      json['role_name'] as String,
      json['cooling'] as String,
      json['upgrade_score'] as String,
      json['method_score'] as String,
      json['practice_score'] as String,
      json['equip_score'] as String,
      json['identity'] as String,
      json['camp'] as String,
      json['talent'] as String,
      json['shape'] as String,
      json['match_qualification'] as String,
      json['account_type'] as String,
      json['is_friend'] as String,
      json['cross'] as String,
      json['flexible_ranking'] as String,
      json['single_ranking'] as String,
      json['ranking'] as String,
      json['GameJobs_num'] as int,
      json['skin_num'] as int,
      json['hero_weapon'] as int,
      json['user'] as int,
      json['id'] as int,
      json['auth_status'] as int,
      json['title'] as String,
      json['goods_front_image'] as String,
      json['area_server'] as String,
      json['area_data'] as String,
      json['bind_service'] as String,
      json['qq_level'] as String,
      (json['price'] as num)?.toDouble(),
      json['add_time'] as String,
      json['sn'] as String,
      json['role_level'] as int,
      json['goods_type'] as String,
      json['num'] as int,
      json['number'] as int,
      json['default_title'] as String,
      json['grade'] as int,
      json['check_account'] as int,
      json['sex'] as int,
      (json['game_jobs'] as List)?.map((e) => e as int)?.toList(),
      (json['game_jobs_name'] as List)
          ?.map((e) => (e as List)?.map((e) => e as String)?.toList())
          ?.toList(),
      json['is_ban'] as String,
      json['deliver'] as int,
      json['role_sex'] as String,
      json['clan'] as String,
      json['game_id'] as int,
      json['rune'] as int,
      json['one_rmb_price'] as String);
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'special_hero': instance.specialHero,
      'prevent_addiction': instance.preventAddiction,
      'bind_platform': instance.bindPlatform,
      'gemstone_level': instance.gemstoneLevel,
      'insurance_problem': instance.insuranceProblem,
      'insurance_answer': instance.insuranceAnswer,
      'role_name': instance.roleName,
      'cooling': instance.cooling,
      'upgrade_score': instance.upgradeScore,
      'method_score': instance.methodScore,
      'practice_score': instance.practiceScore,
      'equip_score': instance.equipScore,
      'identity': instance.identity,
      'camp': instance.camp,
      'talent': instance.talent,
      'shape': instance.shape,
      'match_qualification': instance.matchQualification,
      'account_type': instance.accountType,
      'is_friend': instance.isFriend,
      'cross': instance.cross,
      'flexible_ranking': instance.flexibleRanking,
      'single_ranking': instance.singleRanking,
      'ranking': instance.ranking,
      'GameJobs_num': instance.gameJobsNum,
      'skin_num': instance.skinNum,
      'hero_weapon': instance.heroWeapon,
      'user': instance.user,
      'id': instance.id,
      'auth_status': instance.authStatus,
      'title': instance.title,
      'goods_front_image': instance.goodsFrontImage,
      'area_server': instance.areaServer,
      'area_data': instance.areaData,
      'bind_service': instance.bindService,
      'qq_level': instance.qqLevel,
      'price': instance.price,
      'add_time': instance.addTime,
      'sn': instance.sn,
      'role_level': instance.roleLevel,
      'goods_type': instance.goodsType,
      'num': instance.num,
      'number': instance.number,
      'default_title': instance.defaultTitle,
      'grade': instance.grade,
      'check_account': instance.checkAccount,
      'sex': instance.sex,
      'game_jobs': instance.gameJobs,
      'game_jobs_name': instance.gameJobsName,
      'is_ban': instance.isBan,
      'deliver': instance.deliver,
      'role_sex': instance.roleSex,
      'clan': instance.clan,
      'game_id': instance.gameId,
      'rune': instance.rune,
      'one_rmb_price': instance.oneRmbPrice
    };
