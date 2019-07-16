import 'package:json_annotation/json_annotation.dart'; 
  
part 'goods_list_obj.g.dart';


@JsonSerializable()
  class GoodsListObj extends Object {

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'next')
  String next;

  @JsonKey(name: 'results')
  List<Results> results;

  GoodsListObj(this.count,this.next,this.results,);

  factory GoodsListObj.fromJson(Map<String, dynamic> srcJson) => _$GoodsListObjFromJson(srcJson);

  Map<String, dynamic> toJson() => _$GoodsListObjToJson(this);

}

  
@JsonSerializable()
  class Results extends Object {

  @JsonKey(name: 'special_hero')
  String specialHero;

  @JsonKey(name: 'prevent_addiction')
  String preventAddiction;

  @JsonKey(name: 'bind_platform')
  String bindPlatform;

  @JsonKey(name: 'gemstone_level')
  String gemstoneLevel;

  @JsonKey(name: 'insurance_problem')
  String insuranceProblem;

  @JsonKey(name: 'insurance_answer')
  String insuranceAnswer;

  @JsonKey(name: 'role_name')
  String roleName;

  @JsonKey(name: 'cooling')
  String cooling;

  @JsonKey(name: 'upgrade_score')
  String upgradeScore;

  @JsonKey(name: 'method_score')
  String methodScore;

  @JsonKey(name: 'practice_score')
  String practiceScore;

  @JsonKey(name: 'equip_score')
  String equipScore;

  @JsonKey(name: 'identity')
  String identity;

  @JsonKey(name: 'camp')
  String camp;

  @JsonKey(name: 'talent')
  String talent;

  @JsonKey(name: 'shape')
  String shape;

  @JsonKey(name: 'match_qualification')
  String matchQualification;

  @JsonKey(name: 'account_type')
  String accountType;

  @JsonKey(name: 'is_friend')
  String isFriend;

  @JsonKey(name: 'cross')
  String cross;

  @JsonKey(name: 'flexible_ranking')
  String flexibleRanking;

  @JsonKey(name: 'single_ranking')
  String singleRanking;

  @JsonKey(name: 'ranking')
  String ranking;

  @JsonKey(name: 'GameJobs_num')
  int gameJobsNum;

  @JsonKey(name: 'skin_num')
  int skinNum;

  @JsonKey(name: 'hero_weapon')
  int heroWeapon;

  @JsonKey(name: 'user')
  int user;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'auth_status')
  int authStatus;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'goods_front_image')
  String goodsFrontImage;

  @JsonKey(name: 'area_server')
  String areaServer;

  @JsonKey(name: 'area_data')
  String areaData;

  @JsonKey(name: 'bind_service')
  String bindService;

  @JsonKey(name: 'qq_level')
  String qqLevel;

  @JsonKey(name: 'price')
  double price;

  @JsonKey(name: 'add_time')
  String addTime;

  @JsonKey(name: 'sn')
  String sn;

  @JsonKey(name: 'role_level')
  int roleLevel;

  @JsonKey(name: 'goods_type')
  String goodsType;

  @JsonKey(name: 'num')
  int num;

  @JsonKey(name: 'number')
  int number;

  @JsonKey(name: 'default_title')
  String defaultTitle;

  @JsonKey(name: 'grade')
  int grade;

  @JsonKey(name: 'check_account')
  int checkAccount;

  @JsonKey(name: 'sex')
  int sex;

  @JsonKey(name: 'game_jobs')
  List<int> gameJobs;

  @JsonKey(name: 'game_jobs_name')
  List<List<String>> gameJobsName;

  @JsonKey(name: 'is_ban')
  String isBan;

  @JsonKey(name: 'deliver')
  int deliver;

  @JsonKey(name: 'role_sex')
  String roleSex;

  @JsonKey(name: 'clan')
  String clan;

  @JsonKey(name: 'game_id')
  int gameId;

  @JsonKey(name: 'rune')
  int rune;

  @JsonKey(name: 'one_rmb_price')
  String oneRmbPrice;

  Results(this.specialHero,this.preventAddiction,this.bindPlatform,this.gemstoneLevel,this.insuranceProblem,this.insuranceAnswer,this.roleName,this.cooling,this.upgradeScore,this.methodScore,this.practiceScore,this.equipScore,this.identity,this.camp,this.talent,this.shape,this.matchQualification,this.accountType,this.isFriend,this.cross,this.flexibleRanking,this.singleRanking,this.ranking,this.gameJobsNum,this.skinNum,this.heroWeapon,this.user,this.id,this.authStatus,this.title,this.goodsFrontImage,this.areaServer,this.areaData,this.bindService,this.qqLevel,this.price,this.addTime,this.sn,this.roleLevel,this.goodsType,this.num,this.number,this.defaultTitle,this.grade,this.checkAccount,this.sex,this.gameJobs,this.gameJobsName,this.isBan,this.deliver,this.roleSex,this.clan,this.gameId,this.rune,this.oneRmbPrice,);

  factory Results.fromJson(Map<String, dynamic> srcJson) => _$ResultsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);

}

  
