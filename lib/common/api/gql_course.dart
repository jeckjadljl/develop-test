import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:lab/common/entitys/data_course_link.dart';

import '../../common/entitys/entitys.dart';
import '../../common/graphql/graphql.dart';
import '../../common/utils/utils.dart';

/// 课程
class GqlCourseAPI {
  // 课程分类courseCategory
  static Future<QueryCourseCategory> courseCategory({
    required BuildContext context,
  }) async {
    QueryResult response = await GraphqlClientUtil.query(
      schema: SchemaCourse.gqlCourseCategory,
      context: context,
      variables: {},
    );

    return QueryCourseCategory.fromJson(response.data!);
  }
  // 课程列表查询course
  static Future<QueryCourse> course({
    required BuildContext context,
    required CourseRequest variables,
  }) async {
    QueryResult response = await GraphqlClientUtil.query(
      context: context,
      schema: SchemaCourse.gqlCourse,
      variables: variables.toJson(),
    );
    return QueryCourse.fromJson(response.data!);
  }
  // 课程详情查询courseDetail
  static Future<QueryCourseDetail> courseDetail({
    required BuildContext context,
    required CourseDetailRequest variables,
  }) async {
    QueryResult response = await GraphqlClientUtil.query(
      context: context,
      schema: SchemaCourse.gqlCourseDetail,
      variables: variables.toJson(),
    );
    return QueryCourseDetail.fromJson(response.data!);
  }
  // 课程目录查询courseCatalogue
  static Future<QueryCourseCatalogue> courseCatalogue({
    required BuildContext context,
    required CourseCatalogueRequest variables,
  }) async {
    QueryResult response = await GraphqlClientUtil.query(
      context: context,
      schema: SchemaCourse.gqlCourseCatalogue,
      variables: variables.toJson(),
    );
    return QueryCourseCatalogue.fromJson(response.data!);
  }
  // 课程链接courseLink
  static Future<QueryCourseLink> courseLink({
    required BuildContext context,
    required CourseLinkRequest variables,
  }) async {
    QueryResult response = await GraphqlClientUtil.query(
      context: context,
      schema: SchemaCourse.gqlCourseLink,
      variables: variables.toJson(),
    );
    return QueryCourseLink.fromJson(response.data!);
  }
  //
  // //小节课程请求
  // static Future<PostsData> indexPageInfo({
  //   required BuildContext context,
  // }) async {
  //   QueryResult response = await GraphqlClientUtil.query(
  //       schema: SchemaCourse.gqlCourseList, context: context, variables: {});
  //
  //   return PostsData.fromJson(response.data!);
  // }
  //
  // // 全部主课程详情请求
  // static Future<MainCourseRequest> maincourse({
  //   required BuildContext context,
  //   required String schema,
  // }) async {
  //   QueryResult response = await GraphqlClientUtil.query(
  //     schema: SchemaCourse.gqlmainCourseList,
  //     context: context,
  //     variables: {},
  //   );
  //
  //   return MainCourseRequest.fromJson(response.data!);
  // }
  //
  //
  // //查询主课下每小节信息
  // static Future<DetailCourse> detailsInfo({
  //   required BuildContext context,
  //   required CourseRequest variables,
  // }) async {
  //   QueryResult response = await GraphqlClientUtil.mutate(
  //     context: context,
  //     schema: SchemaCourse.gqlDetailCourseList,
  //     variables: variables.toJson(),
  //   );
  //   return DetailCourse.fromJson(response.data!);
  // }
  //
  // // 单课程详情
  // static Future<DetailMainCourse> singleCourseInfo({
  //   required BuildContext context,
  //   required DetailMainCourseRequest variables,
  // }) async {
  //   QueryResult response = await GraphqlClientUtil.mutate(
  //     context: context,
  //     schema: SchemaCourse.gqlDetailMainCourseList,
  //     variables: variables.toJson(),
  //   );
  //   return DetailMainCourse.fromJson(response.data!);
  // }
  //
  // // 课程详情（目录，播放链接等）
  // static Future<DetailCourseResponse> detailsCourseInfo({
  //   required BuildContext context,
  //   required DetailCourseRequest variables,
  // }) async {
  //   QueryResult response = await GraphqlClientUtil.mutate(
  //     context: context,
  //     schema: SchemaCourse.gqldetailsCourseList,
  //     variables: variables.toJson(),
  //   );
  //   return DetailCourseResponse.fromJson(response.data!);
  // }
}
