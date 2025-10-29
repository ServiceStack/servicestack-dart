/* Options:
Date: 2024-02-28 03:18:29
Version: 8.13
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://techstacks.io

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
DefaultImports: dart:typed_data,dart:collection,../../lib/servicestack.dart
*/

import 'dart:typed_data';
import '../../lib/servicestack.dart';

enum PostType {
  Announcement,
  Post,
  Showcase,
  Question,
  Request,
}

class Post implements IConvertible {
  int? id;
  int? organizationId;
  int? userId;
  PostType? type;
  int? categoryId;
  String? title;
  String? slug;
  String? url;
  String? imageUrl;
  // @StringLength(2147483647)
  String? content;

  // @StringLength(2147483647)
  String? contentHtml;

  int? pinCommentId;
  List<int>? technologyIds;
  DateTime? fromDate;
  DateTime? toDate;
  String? location;
  String? metaType;
  String? meta;
  bool? approved;
  int? upVotes;
  int? downVotes;
  int? points;
  int? views;
  int? favorites;
  int? subscribers;
  int? replyCount;
  int? commentsCount;
  int? wordCount;
  int? reportCount;
  int? linksCount;
  int? linkedToCount;
  int? score;
  int? rank;
  List<String>? labels;
  List<int>? refUserIds;
  List<String>? refLinks;
  List<int>? muteUserIds;
  DateTime? lastCommentDate;
  int? lastCommentId;
  int? lastCommentUserId;
  DateTime? deleted;
  String? deletedBy;
  DateTime? locked;
  String? lockedBy;
  DateTime? hidden;
  String? hiddenBy;
  String? status;
  DateTime? statusDate;
  String? statusBy;
  bool? archived;
  DateTime? bumped;
  DateTime? created;
  String? createdBy;
  DateTime? modified;
  String? modifiedBy;
  int? refId;
  String? refSource;
  String? refUrn;

  Post(
      {this.id,
      this.organizationId,
      this.userId,
      this.type,
      this.categoryId,
      this.title,
      this.slug,
      this.url,
      this.imageUrl,
      this.content,
      this.contentHtml,
      this.pinCommentId,
      this.technologyIds,
      this.fromDate,
      this.toDate,
      this.location,
      this.metaType,
      this.meta,
      this.approved,
      this.upVotes,
      this.downVotes,
      this.points,
      this.views,
      this.favorites,
      this.subscribers,
      this.replyCount,
      this.commentsCount,
      this.wordCount,
      this.reportCount,
      this.linksCount,
      this.linkedToCount,
      this.score,
      this.rank,
      this.labels,
      this.refUserIds,
      this.refLinks,
      this.muteUserIds,
      this.lastCommentDate,
      this.lastCommentId,
      this.lastCommentUserId,
      this.deleted,
      this.deletedBy,
      this.locked,
      this.lockedBy,
      this.hidden,
      this.hiddenBy,
      this.status,
      this.statusDate,
      this.statusBy,
      this.archived,
      this.bumped,
      this.created,
      this.createdBy,
      this.modified,
      this.modifiedBy,
      this.refId,
      this.refSource,
      this.refUrn});
  Post.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    userId = json['userId'];
    type = JsonConverters.fromJson(json['type'], 'PostType', context!);
    categoryId = json['categoryId'];
    title = json['title'];
    slug = json['slug'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    content = json['content'];
    contentHtml = json['contentHtml'];
    pinCommentId = json['pinCommentId'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    fromDate = JsonConverters.fromJson(json['fromDate'], 'DateTime', context!);
    toDate = JsonConverters.fromJson(json['toDate'], 'DateTime', context!);
    location = json['location'];
    metaType = json['metaType'];
    meta = json['meta'];
    approved = json['approved'];
    upVotes = json['upVotes'];
    downVotes = json['downVotes'];
    points = json['points'];
    views = json['views'];
    favorites = json['favorites'];
    subscribers = json['subscribers'];
    replyCount = json['replyCount'];
    commentsCount = json['commentsCount'];
    wordCount = json['wordCount'];
    reportCount = json['reportCount'];
    linksCount = json['linksCount'];
    linkedToCount = json['linkedToCount'];
    score = json['score'];
    rank = json['rank'];
    labels = JsonConverters.fromJson(json['labels'], 'List<String>', context!);
    refUserIds =
        JsonConverters.fromJson(json['refUserIds'], 'List<int>', context!);
    refLinks =
        JsonConverters.fromJson(json['refLinks'], 'List<String>', context!);
    muteUserIds =
        JsonConverters.fromJson(json['muteUserIds'], 'List<int>', context!);
    lastCommentDate =
        JsonConverters.fromJson(json['lastCommentDate'], 'DateTime', context!);
    lastCommentId = json['lastCommentId'];
    lastCommentUserId = json['lastCommentUserId'];
    deleted = JsonConverters.fromJson(json['deleted'], 'DateTime', context!);
    deletedBy = json['deletedBy'];
    locked = JsonConverters.fromJson(json['locked'], 'DateTime', context!);
    lockedBy = json['lockedBy'];
    hidden = JsonConverters.fromJson(json['hidden'], 'DateTime', context!);
    hiddenBy = json['hiddenBy'];
    status = json['status'];
    statusDate =
        JsonConverters.fromJson(json['statusDate'], 'DateTime', context!);
    statusBy = json['statusBy'];
    archived = json['archived'];
    bumped = JsonConverters.fromJson(json['bumped'], 'DateTime', context!);
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    modified = JsonConverters.fromJson(json['modified'], 'DateTime', context!);
    modifiedBy = json['modifiedBy'];
    refId = json['refId'];
    refSource = json['refSource'];
    refUrn = json['refUrn'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'type': JsonConverters.toJson(type, 'PostType', context!),
        'categoryId': categoryId,
        'title': title,
        'slug': slug,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'contentHtml': contentHtml,
        'pinCommentId': pinCommentId,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!),
        'fromDate': JsonConverters.toJson(fromDate, 'DateTime', context!),
        'toDate': JsonConverters.toJson(toDate, 'DateTime', context!),
        'location': location,
        'metaType': metaType,
        'meta': meta,
        'approved': approved,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'points': points,
        'views': views,
        'favorites': favorites,
        'subscribers': subscribers,
        'replyCount': replyCount,
        'commentsCount': commentsCount,
        'wordCount': wordCount,
        'reportCount': reportCount,
        'linksCount': linksCount,
        'linkedToCount': linkedToCount,
        'score': score,
        'rank': rank,
        'labels': JsonConverters.toJson(labels, 'List<String>', context!),
        'refUserIds': JsonConverters.toJson(refUserIds, 'List<int>', context!),
        'refLinks': JsonConverters.toJson(refLinks, 'List<String>', context!),
        'muteUserIds':
            JsonConverters.toJson(muteUserIds, 'List<int>', context!),
        'lastCommentDate':
            JsonConverters.toJson(lastCommentDate, 'DateTime', context!),
        'lastCommentId': lastCommentId,
        'lastCommentUserId': lastCommentUserId,
        'deleted': JsonConverters.toJson(deleted, 'DateTime', context!),
        'deletedBy': deletedBy,
        'locked': JsonConverters.toJson(locked, 'DateTime', context!),
        'lockedBy': lockedBy,
        'hidden': JsonConverters.toJson(hidden, 'DateTime', context!),
        'hiddenBy': hiddenBy,
        'status': status,
        'statusDate': JsonConverters.toJson(statusDate, 'DateTime', context!),
        'statusBy': statusBy,
        'archived': archived,
        'bumped': JsonConverters.toJson(bumped, 'DateTime', context!),
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'modified': JsonConverters.toJson(modified, 'DateTime', context!),
        'modifiedBy': modifiedBy,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
      };

  getTypeName() => "Post";
  TypeContext? context = _ctx;
}

enum ReportAction {
  Dismiss,
  Delete,
}

enum FlagType {
  Violation,
  Spam,
  Abusive,
  Confidential,
  OffTopic,
  Other,
}

enum Frequency {
  Daily,
  Weekly,
  Monthly,
  Quarterly,
}

enum TechnologyTier {
  ProgrammingLanguage,
  Client,
  Http,
  Server,
  Data,
  SoftwareInfrastructure,
  OperatingSystem,
  HardwareInfrastructure,
  ThirdPartyServices,
}

abstract class TechnologyBase {
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  String? ownerId;
  String? slug;
  bool? logoApproved;
  bool? isLocked;
  TechnologyTier? tier;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyBase(
      {this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.ownerId,
      this.slug,
      this.logoApproved,
      this.isLocked,
      this.tier,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    logoApproved = json['logoApproved'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'lastModifiedBy': lastModifiedBy,
        'ownerId': ownerId,
        'slug': slug,
        'logoApproved': logoApproved,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
        'lastStatusUpdate':
            JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
      };

  getTypeName() => "TechnologyBase";
  TypeContext? context = _ctx;
}

class Technology extends TechnologyBase implements IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  String? ownerId;
  String? slug;
  bool? logoApproved;
  bool? isLocked;
  TechnologyTier? tier;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  Technology(
      {this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.ownerId,
      this.slug,
      this.logoApproved,
      this.isLocked,
      this.tier,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  Technology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    logoApproved = json['logoApproved'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'vendorUrl': vendorUrl,
      'productUrl': productUrl,
      'logoUrl': logoUrl,
      'description': description,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'ownerId': ownerId,
      'slug': slug,
      'logoApproved': logoApproved,
      'isLocked': isLocked,
      'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "Technology";
  TypeContext? context = _ctx;
}

class TechnologyView implements IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  String? ownerId;
  String? slug;
  bool? logoApproved;
  bool? isLocked;
  TechnologyTier? tier;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyView(
      {this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.ownerId,
      this.slug,
      this.logoApproved,
      this.isLocked,
      this.tier,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyView.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    logoApproved = json['logoApproved'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'lastModifiedBy': lastModifiedBy,
        'ownerId': ownerId,
        'slug': slug,
        'logoApproved': logoApproved,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
        'lastStatusUpdate':
            JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
      };

  getTypeName() => "TechnologyView";
  TypeContext? context = _ctx;
}

abstract class IRegisterStats {}

abstract class TechnologyStackBase {
  int? id;
  String? name;
  String? vendorName;
  String? description;
  String? appUrl;
  String? screenshotUrl;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  bool? isLocked;
  String? ownerId;
  String? slug;
  // @StringLength(2147483647)
  String? details;

  // @StringLength(2147483647)
  String? detailsHtml;

  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyStackBase(
      {this.id,
      this.name,
      this.vendorName,
      this.description,
      this.appUrl,
      this.screenshotUrl,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.isLocked,
      this.ownerId,
      this.slug,
      this.details,
      this.detailsHtml,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyStackBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    description = json['description'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    isLocked = json['isLocked'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    details = json['details'];
    detailsHtml = json['detailsHtml'];
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'description': description,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'lastModifiedBy': lastModifiedBy,
        'isLocked': isLocked,
        'ownerId': ownerId,
        'slug': slug,
        'details': details,
        'detailsHtml': detailsHtml,
        'lastStatusUpdate':
            JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
      };

  getTypeName() => "TechnologyStackBase";
  TypeContext? context = _ctx;
}

class TechnologyStack extends TechnologyStackBase implements IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? description;
  String? appUrl;
  String? screenshotUrl;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  bool? isLocked;
  String? ownerId;
  String? slug;
  // @StringLength(2147483647)
  String? details;

  // @StringLength(2147483647)
  String? detailsHtml;

  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyStack(
      {this.id,
      this.name,
      this.vendorName,
      this.description,
      this.appUrl,
      this.screenshotUrl,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.isLocked,
      this.ownerId,
      this.slug,
      this.details,
      this.detailsHtml,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    description = json['description'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    isLocked = json['isLocked'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    details = json['details'];
    detailsHtml = json['detailsHtml'];
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'description': description,
      'appUrl': appUrl,
      'screenshotUrl': screenshotUrl,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'isLocked': isLocked,
      'ownerId': ownerId,
      'slug': slug,
      'details': details,
      'detailsHtml': detailsHtml,
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "TechnologyStack";
  TypeContext? context = _ctx;
}

class TechnologyStackView implements IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? description;
  String? appUrl;
  String? screenshotUrl;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  bool? isLocked;
  String? ownerId;
  String? slug;
  String? details;
  String? detailsHtml;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyStackView(
      {this.id,
      this.name,
      this.vendorName,
      this.description,
      this.appUrl,
      this.screenshotUrl,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.isLocked,
      this.ownerId,
      this.slug,
      this.details,
      this.detailsHtml,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyStackView.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    description = json['description'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    isLocked = json['isLocked'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    details = json['details'];
    detailsHtml = json['detailsHtml'];
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'description': description,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'lastModifiedBy': lastModifiedBy,
        'isLocked': isLocked,
        'ownerId': ownerId,
        'slug': slug,
        'details': details,
        'detailsHtml': detailsHtml,
        'lastStatusUpdate':
            JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
      };

  getTypeName() => "TechnologyStackView";
  TypeContext? context = _ctx;
}

class PostComment implements IConvertible {
  int? id;
  int? postId;
  int? userId;
  int? replyId;
  // @StringLength(2147483647)
  String? content;

  // @StringLength(2147483647)
  String? contentHtml;

  int? score;
  int? rank;
  int? upVotes;
  int? downVotes;
  int? favorites;
  int? wordCount;
  int? reportCount;
  DateTime? deleted;
  DateTime? hidden;
  DateTime? modified;
  DateTime? created;
  String? createdBy;
  int? refId;
  String? refSource;
  String? refUrn;

  PostComment(
      {this.id,
      this.postId,
      this.userId,
      this.replyId,
      this.content,
      this.contentHtml,
      this.score,
      this.rank,
      this.upVotes,
      this.downVotes,
      this.favorites,
      this.wordCount,
      this.reportCount,
      this.deleted,
      this.hidden,
      this.modified,
      this.created,
      this.createdBy,
      this.refId,
      this.refSource,
      this.refUrn});
  PostComment.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    userId = json['userId'];
    replyId = json['replyId'];
    content = json['content'];
    contentHtml = json['contentHtml'];
    score = json['score'];
    rank = json['rank'];
    upVotes = json['upVotes'];
    downVotes = json['downVotes'];
    favorites = json['favorites'];
    wordCount = json['wordCount'];
    reportCount = json['reportCount'];
    deleted = JsonConverters.fromJson(json['deleted'], 'DateTime', context!);
    hidden = JsonConverters.fromJson(json['hidden'], 'DateTime', context!);
    modified = JsonConverters.fromJson(json['modified'], 'DateTime', context!);
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    refId = json['refId'];
    refSource = json['refSource'];
    refUrn = json['refUrn'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'userId': userId,
        'replyId': replyId,
        'content': content,
        'contentHtml': contentHtml,
        'score': score,
        'rank': rank,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'favorites': favorites,
        'wordCount': wordCount,
        'reportCount': reportCount,
        'deleted': JsonConverters.toJson(deleted, 'DateTime', context!),
        'hidden': JsonConverters.toJson(hidden, 'DateTime', context!),
        'modified': JsonConverters.toJson(modified, 'DateTime', context!),
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
      };

  getTypeName() => "PostComment";
  TypeContext? context = _ctx;
}

class Organization implements IConvertible {
  int? id;
  String? name;
  String? slug;
  String? description;
  String? descriptionHtml;
  String? color;
  String? textColor;
  String? linkColor;
  String? backgroundColor;
  String? backgroundUrl;
  String? logoUrl;
  String? heroUrl;
  String? lang;
  String? defaultPostType;
  List<String>? defaultSubscriptionPostTypes;
  List<String>? postTypes;
  List<String>? moderatorPostTypes;
  int? deletePostsWithReportCount;
  bool? disableInvites;
  int? upVotes;
  int? downVotes;
  int? views;
  int? favorites;
  int? subscribers;
  int? commentsCount;
  int? postsCount;
  int? score;
  int? rank;
  int? refId;
  String? refSource;
  DateTime? hidden;
  String? hiddenBy;
  DateTime? locked;
  String? lockedBy;
  DateTime? deleted;
  String? deletedBy;
  DateTime? created;
  String? createdBy;
  DateTime? modified;
  String? modifiedBy;

  Organization(
      {this.id,
      this.name,
      this.slug,
      this.description,
      this.descriptionHtml,
      this.color,
      this.textColor,
      this.linkColor,
      this.backgroundColor,
      this.backgroundUrl,
      this.logoUrl,
      this.heroUrl,
      this.lang,
      this.defaultPostType,
      this.defaultSubscriptionPostTypes,
      this.postTypes,
      this.moderatorPostTypes,
      this.deletePostsWithReportCount,
      this.disableInvites,
      this.upVotes,
      this.downVotes,
      this.views,
      this.favorites,
      this.subscribers,
      this.commentsCount,
      this.postsCount,
      this.score,
      this.rank,
      this.refId,
      this.refSource,
      this.hidden,
      this.hiddenBy,
      this.locked,
      this.lockedBy,
      this.deleted,
      this.deletedBy,
      this.created,
      this.createdBy,
      this.modified,
      this.modifiedBy});
  Organization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    descriptionHtml = json['descriptionHtml'];
    color = json['color'];
    textColor = json['textColor'];
    linkColor = json['linkColor'];
    backgroundColor = json['backgroundColor'];
    backgroundUrl = json['backgroundUrl'];
    logoUrl = json['logoUrl'];
    heroUrl = json['heroUrl'];
    lang = json['lang'];
    defaultPostType = json['defaultPostType'];
    defaultSubscriptionPostTypes = JsonConverters.fromJson(
        json['defaultSubscriptionPostTypes'], 'List<String>', context!);
    postTypes =
        JsonConverters.fromJson(json['postTypes'], 'List<String>', context!);
    moderatorPostTypes = JsonConverters.fromJson(
        json['moderatorPostTypes'], 'List<String>', context!);
    deletePostsWithReportCount = json['deletePostsWithReportCount'];
    disableInvites = json['disableInvites'];
    upVotes = json['upVotes'];
    downVotes = json['downVotes'];
    views = json['views'];
    favorites = json['favorites'];
    subscribers = json['subscribers'];
    commentsCount = json['commentsCount'];
    postsCount = json['postsCount'];
    score = json['score'];
    rank = json['rank'];
    refId = json['refId'];
    refSource = json['refSource'];
    hidden = JsonConverters.fromJson(json['hidden'], 'DateTime', context!);
    hiddenBy = json['hiddenBy'];
    locked = JsonConverters.fromJson(json['locked'], 'DateTime', context!);
    lockedBy = json['lockedBy'];
    deleted = JsonConverters.fromJson(json['deleted'], 'DateTime', context!);
    deletedBy = json['deletedBy'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    modified = JsonConverters.fromJson(json['modified'], 'DateTime', context!);
    modifiedBy = json['modifiedBy'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'descriptionHtml': descriptionHtml,
        'color': color,
        'textColor': textColor,
        'linkColor': linkColor,
        'backgroundColor': backgroundColor,
        'backgroundUrl': backgroundUrl,
        'logoUrl': logoUrl,
        'heroUrl': heroUrl,
        'lang': lang,
        'defaultPostType': defaultPostType,
        'defaultSubscriptionPostTypes': JsonConverters.toJson(
            defaultSubscriptionPostTypes, 'List<String>', context!),
        'postTypes': JsonConverters.toJson(postTypes, 'List<String>', context!),
        'moderatorPostTypes':
            JsonConverters.toJson(moderatorPostTypes, 'List<String>', context!),
        'deletePostsWithReportCount': deletePostsWithReportCount,
        'disableInvites': disableInvites,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'views': views,
        'favorites': favorites,
        'subscribers': subscribers,
        'commentsCount': commentsCount,
        'postsCount': postsCount,
        'score': score,
        'rank': rank,
        'refId': refId,
        'refSource': refSource,
        'hidden': JsonConverters.toJson(hidden, 'DateTime', context!),
        'hiddenBy': hiddenBy,
        'locked': JsonConverters.toJson(locked, 'DateTime', context!),
        'lockedBy': lockedBy,
        'deleted': JsonConverters.toJson(deleted, 'DateTime', context!),
        'deletedBy': deletedBy,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'createdBy': createdBy,
        'modified': JsonConverters.toJson(modified, 'DateTime', context!),
        'modifiedBy': modifiedBy
      };

  getTypeName() => "Organization";
  TypeContext? context = _ctx;
}

class OrganizationLabel implements IConvertible {
  String? slug;
  int? organizationId;
  String? description;
  String? color;

  OrganizationLabel(
      {this.slug, this.organizationId, this.description, this.color});
  OrganizationLabel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    organizationId = json['organizationId'];
    description = json['description'];
    color = json['color'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'slug': slug,
        'organizationId': organizationId,
        'description': description,
        'color': color
      };

  getTypeName() => "OrganizationLabel";
  TypeContext? context = _ctx;
}

class Category implements IConvertible {
  int? id;
  int? organizationId;
  String? name;
  String? slug;
  String? description;
  String? color;
  List<int>? technologyIds;
  int? commentsCount;
  int? postsCount;
  int? score;
  int? rank;

  Category(
      {this.id,
      this.organizationId,
      this.name,
      this.slug,
      this.description,
      this.color,
      this.technologyIds,
      this.commentsCount,
      this.postsCount,
      this.score,
      this.rank});
  Category.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    color = json['color'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    commentsCount = json['commentsCount'];
    postsCount = json['postsCount'];
    score = json['score'];
    rank = json['rank'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'name': name,
        'slug': slug,
        'description': description,
        'color': color,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!),
        'commentsCount': commentsCount,
        'postsCount': postsCount,
        'score': score,
        'rank': rank
      };

  getTypeName() => "Category";
  TypeContext? context = _ctx;
}

class OrganizationMember implements IConvertible {
  int? id;
  int? organizationId;
  int? userId;
  String? userName;
  bool? isOwner;
  bool? isModerator;
  bool? denyAll;
  bool? denyPosts;
  bool? denyComments;
  String? notes;

  OrganizationMember(
      {this.id,
      this.organizationId,
      this.userId,
      this.userName,
      this.isOwner,
      this.isModerator,
      this.denyAll,
      this.denyPosts,
      this.denyComments,
      this.notes});
  OrganizationMember.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    userId = json['userId'];
    userName = json['userName'];
    isOwner = json['isOwner'];
    isModerator = json['isModerator'];
    denyAll = json['denyAll'];
    denyPosts = json['denyPosts'];
    denyComments = json['denyComments'];
    notes = json['notes'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyAll': denyAll,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'notes': notes
      };

  getTypeName() => "OrganizationMember";
  TypeContext? context = _ctx;
}

class OrganizationMemberInvite implements IConvertible {
  int? id;
  int? organizationId;
  int? userId;
  String? userName;
  DateTime? dismissed;

  OrganizationMemberInvite(
      {this.id,
      this.organizationId,
      this.userId,
      this.userName,
      this.dismissed});
  OrganizationMemberInvite.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    userId = json['userId'];
    userName = json['userName'];
    dismissed =
        JsonConverters.fromJson(json['dismissed'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'dismissed': JsonConverters.toJson(dismissed, 'DateTime', context!)
      };

  getTypeName() => "OrganizationMemberInvite";
  TypeContext? context = _ctx;
}

class PostReportInfo implements IConvertible {
  int? id;
  int? organizationId;
  int? postId;
  int? userId;
  String? userName;
  FlagType? flagType;
  String? reportNotes;
  DateTime? created;
  DateTime? acknowledged;
  String? acknowledgedBy;
  DateTime? dismissed;
  String? dismissedBy;
  String? title;
  int? reportCount;
  String? createdBy;

  PostReportInfo(
      {this.id,
      this.organizationId,
      this.postId,
      this.userId,
      this.userName,
      this.flagType,
      this.reportNotes,
      this.created,
      this.acknowledged,
      this.acknowledgedBy,
      this.dismissed,
      this.dismissedBy,
      this.title,
      this.reportCount,
      this.createdBy});
  PostReportInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    postId = json['postId'];
    userId = json['userId'];
    userName = json['userName'];
    flagType = JsonConverters.fromJson(json['flagType'], 'FlagType', context!);
    reportNotes = json['reportNotes'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    acknowledged =
        JsonConverters.fromJson(json['acknowledged'], 'DateTime', context!);
    acknowledgedBy = json['acknowledgedBy'];
    dismissed =
        JsonConverters.fromJson(json['dismissed'], 'DateTime', context!);
    dismissedBy = json['dismissedBy'];
    title = json['title'];
    reportCount = json['reportCount'];
    createdBy = json['createdBy'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'postId': postId,
        'userId': userId,
        'userName': userName,
        'flagType': JsonConverters.toJson(flagType, 'FlagType', context!),
        'reportNotes': reportNotes,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'acknowledged':
            JsonConverters.toJson(acknowledged, 'DateTime', context!),
        'acknowledgedBy': acknowledgedBy,
        'dismissed': JsonConverters.toJson(dismissed, 'DateTime', context!),
        'dismissedBy': dismissedBy,
        'title': title,
        'reportCount': reportCount,
        'createdBy': createdBy
      };

  getTypeName() => "PostReportInfo";
  TypeContext? context = _ctx;
}

class PostCommentReportInfo implements IConvertible {
  int? id;
  int? organizationId;
  int? postId;
  int? postCommentId;
  int? userId;
  String? userName;
  FlagType? flagType;
  String? reportNotes;
  DateTime? created;
  DateTime? acknowledged;
  String? acknowledgedBy;
  DateTime? dismissed;
  String? dismissedBy;
  String? contentHtml;
  int? reportCount;
  String? createdBy;

  PostCommentReportInfo(
      {this.id,
      this.organizationId,
      this.postId,
      this.postCommentId,
      this.userId,
      this.userName,
      this.flagType,
      this.reportNotes,
      this.created,
      this.acknowledged,
      this.acknowledgedBy,
      this.dismissed,
      this.dismissedBy,
      this.contentHtml,
      this.reportCount,
      this.createdBy});
  PostCommentReportInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    postId = json['postId'];
    postCommentId = json['postCommentId'];
    userId = json['userId'];
    userName = json['userName'];
    flagType = JsonConverters.fromJson(json['flagType'], 'FlagType', context!);
    reportNotes = json['reportNotes'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    acknowledged =
        JsonConverters.fromJson(json['acknowledged'], 'DateTime', context!);
    acknowledgedBy = json['acknowledgedBy'];
    dismissed =
        JsonConverters.fromJson(json['dismissed'], 'DateTime', context!);
    dismissedBy = json['dismissedBy'];
    contentHtml = json['contentHtml'];
    reportCount = json['reportCount'];
    createdBy = json['createdBy'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'postId': postId,
        'postCommentId': postCommentId,
        'userId': userId,
        'userName': userName,
        'flagType': JsonConverters.toJson(flagType, 'FlagType', context!),
        'reportNotes': reportNotes,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'acknowledged':
            JsonConverters.toJson(acknowledged, 'DateTime', context!),
        'acknowledgedBy': acknowledgedBy,
        'dismissed': JsonConverters.toJson(dismissed, 'DateTime', context!),
        'dismissedBy': dismissedBy,
        'contentHtml': contentHtml,
        'reportCount': reportCount,
        'createdBy': createdBy
      };

  getTypeName() => "PostCommentReportInfo";
  TypeContext? context = _ctx;
}

class UserRef implements IConvertible {
  int? id;
  String? userName;
  String? email;
  int? refId;
  String? refSource;
  String? refUrn;

  UserRef(
      {this.id,
      this.userName,
      this.email,
      this.refId,
      this.refSource,
      this.refUrn});
  UserRef.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    email = json['email'];
    refId = json['refId'];
    refSource = json['refSource'];
    refUrn = json['refUrn'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'email': email,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
      };

  getTypeName() => "UserRef";
  TypeContext? context = _ctx;
}

class OrganizationSubscription implements IConvertible {
  int? id;
  int? organizationId;
  int? userId;
  String? userName;
  List<String>? postTypes;
  int? frequencyDays;
  int? lastSyncedId;
  DateTime? lastSynced;
  DateTime? created;

  OrganizationSubscription(
      {this.id,
      this.organizationId,
      this.userId,
      this.userName,
      this.postTypes,
      this.frequencyDays,
      this.lastSyncedId,
      this.lastSynced,
      this.created});
  OrganizationSubscription.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    userId = json['userId'];
    userName = json['userName'];
    postTypes =
        JsonConverters.fromJson(json['postTypes'], 'List<String>', context!);
    frequencyDays = json['frequencyDays'];
    lastSyncedId = json['lastSyncedId'];
    lastSynced =
        JsonConverters.fromJson(json['lastSynced'], 'DateTime', context!);
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'postTypes': JsonConverters.toJson(postTypes, 'List<String>', context!),
        'frequencyDays': frequencyDays,
        'lastSyncedId': lastSyncedId,
        'lastSynced': JsonConverters.toJson(lastSynced, 'DateTime', context!),
        'created': JsonConverters.toJson(created, 'DateTime', context!)
      };

  getTypeName() => "OrganizationSubscription";
  TypeContext? context = _ctx;
}

class UserActivity implements IConvertible {
  int? id;
  String? userName;
  int? karma;
  int? technologyCount;
  int? techStacksCount;
  int? postsCount;
  int? postUpVotes;
  int? postDownVotes;
  int? commentUpVotes;
  int? commentDownVotes;
  int? postCommentsCount;
  int? pinnedCommentCount;
  int? postReportCount;
  int? postCommentReportCount;
  DateTime? created;
  DateTime? modified;

  UserActivity(
      {this.id,
      this.userName,
      this.karma,
      this.technologyCount,
      this.techStacksCount,
      this.postsCount,
      this.postUpVotes,
      this.postDownVotes,
      this.commentUpVotes,
      this.commentDownVotes,
      this.postCommentsCount,
      this.pinnedCommentCount,
      this.postReportCount,
      this.postCommentReportCount,
      this.created,
      this.modified});
  UserActivity.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    karma = json['karma'];
    technologyCount = json['technologyCount'];
    techStacksCount = json['techStacksCount'];
    postsCount = json['postsCount'];
    postUpVotes = json['postUpVotes'];
    postDownVotes = json['postDownVotes'];
    commentUpVotes = json['commentUpVotes'];
    commentDownVotes = json['commentDownVotes'];
    postCommentsCount = json['postCommentsCount'];
    pinnedCommentCount = json['pinnedCommentCount'];
    postReportCount = json['postReportCount'];
    postCommentReportCount = json['postCommentReportCount'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    modified = JsonConverters.fromJson(json['modified'], 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'karma': karma,
        'technologyCount': technologyCount,
        'techStacksCount': techStacksCount,
        'postsCount': postsCount,
        'postUpVotes': postUpVotes,
        'postDownVotes': postDownVotes,
        'commentUpVotes': commentUpVotes,
        'commentDownVotes': commentDownVotes,
        'postCommentsCount': postCommentsCount,
        'pinnedCommentCount': pinnedCommentCount,
        'postReportCount': postReportCount,
        'postCommentReportCount': postCommentReportCount,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'modified': JsonConverters.toJson(modified, 'DateTime', context!)
      };

  getTypeName() => "UserActivity";
  TypeContext? context = _ctx;
}

class TechnologyHistory extends TechnologyBase implements IConvertible {
  int? technologyId;
  String? operation;
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  String? ownerId;
  String? slug;
  bool? logoApproved;
  bool? isLocked;
  TechnologyTier? tier;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyHistory(
      {this.technologyId,
      this.operation,
      this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.ownerId,
      this.slug,
      this.logoApproved,
      this.isLocked,
      this.tier,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyHistory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    technologyId = json['technologyId'];
    operation = json['operation'];
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    logoApproved = json['logoApproved'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'technologyId': technologyId,
      'operation': operation,
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'vendorUrl': vendorUrl,
      'productUrl': productUrl,
      'logoUrl': logoUrl,
      'description': description,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'ownerId': ownerId,
      'slug': slug,
      'logoApproved': logoApproved,
      'isLocked': isLocked,
      'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "TechnologyHistory";
  TypeContext? context = _ctx;
}

class TechnologyStackHistory extends TechnologyStackBase
    implements IConvertible {
  int? technologyStackId;
  String? operation;
  List<int>? technologyIds;
  int? id;
  String? name;
  String? vendorName;
  String? description;
  String? appUrl;
  String? screenshotUrl;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  bool? isLocked;
  String? ownerId;
  String? slug;
  // @StringLength(2147483647)
  String? details;

  // @StringLength(2147483647)
  String? detailsHtml;

  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyStackHistory(
      {this.technologyStackId,
      this.operation,
      this.technologyIds,
      this.id,
      this.name,
      this.vendorName,
      this.description,
      this.appUrl,
      this.screenshotUrl,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.isLocked,
      this.ownerId,
      this.slug,
      this.details,
      this.detailsHtml,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyStackHistory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    technologyStackId = json['technologyStackId'];
    operation = json['operation'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    description = json['description'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    isLocked = json['isLocked'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    details = json['details'];
    detailsHtml = json['detailsHtml'];
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'technologyStackId': technologyStackId,
      'operation': operation,
      'technologyIds':
          JsonConverters.toJson(technologyIds, 'List<int>', context!),
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'description': description,
      'appUrl': appUrl,
      'screenshotUrl': screenshotUrl,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'isLocked': isLocked,
      'ownerId': ownerId,
      'slug': slug,
      'details': details,
      'detailsHtml': detailsHtml,
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "TechnologyStackHistory";
  TypeContext? context = _ctx;
}

class UserInfo implements IConvertible {
  String? userName;
  String? avatarUrl;
  int? stacksCount;

  UserInfo({this.userName, this.avatarUrl, this.stacksCount});
  UserInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = json['userName'];
    avatarUrl = json['avatarUrl'];
    stacksCount = json['stacksCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'avatarUrl': avatarUrl,
        'stacksCount': stacksCount
      };

  getTypeName() => "UserInfo";
  TypeContext? context = _ctx;
}

class TechnologyInfo implements IConvertible {
  TechnologyTier? tier;
  String? slug;
  String? name;
  String? logoUrl;
  int? stacksCount;

  TechnologyInfo(
      {this.tier, this.slug, this.name, this.logoUrl, this.stacksCount});
  TechnologyInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    slug = json['slug'];
    name = json['name'];
    logoUrl = json['logoUrl'];
    stacksCount = json['stacksCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
        'slug': slug,
        'name': name,
        'logoUrl': logoUrl,
        'stacksCount': stacksCount
      };

  getTypeName() => "TechnologyInfo";
  TypeContext? context = _ctx;
}

class TechnologyInStack extends TechnologyBase implements IConvertible {
  int? technologyId;
  int? technologyStackId;
  String? justification;
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  String? ownerId;
  String? slug;
  bool? logoApproved;
  bool? isLocked;
  TechnologyTier? tier;
  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechnologyInStack(
      {this.technologyId,
      this.technologyStackId,
      this.justification,
      this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.ownerId,
      this.slug,
      this.logoApproved,
      this.isLocked,
      this.tier,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechnologyInStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    technologyId = json['technologyId'];
    technologyStackId = json['technologyStackId'];
    justification = json['justification'];
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    logoApproved = json['logoApproved'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'technologyId': technologyId,
      'technologyStackId': technologyStackId,
      'justification': justification,
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'vendorUrl': vendorUrl,
      'productUrl': productUrl,
      'logoUrl': logoUrl,
      'description': description,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'ownerId': ownerId,
      'slug': slug,
      'logoApproved': logoApproved,
      'isLocked': isLocked,
      'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!),
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "TechnologyInStack";
  TypeContext? context = _ctx;
}

class TechStackDetails extends TechnologyStackBase implements IConvertible {
  List<TechnologyInStack>? technologyChoices;
  int? id;
  String? name;
  String? vendorName;
  String? description;
  String? appUrl;
  String? screenshotUrl;
  DateTime? created;
  String? createdBy;
  DateTime? lastModified;
  String? lastModifiedBy;
  bool? isLocked;
  String? ownerId;
  String? slug;
  // @StringLength(2147483647)
  String? details;

  // @StringLength(2147483647)
  String? detailsHtml;

  DateTime? lastStatusUpdate;
  int? organizationId;
  int? commentsPostId;
  int? viewCount;
  int? favCount;

  TechStackDetails(
      {this.technologyChoices,
      this.id,
      this.name,
      this.vendorName,
      this.description,
      this.appUrl,
      this.screenshotUrl,
      this.created,
      this.createdBy,
      this.lastModified,
      this.lastModifiedBy,
      this.isLocked,
      this.ownerId,
      this.slug,
      this.details,
      this.detailsHtml,
      this.lastStatusUpdate,
      this.organizationId,
      this.commentsPostId,
      this.viewCount,
      this.favCount});
  TechStackDetails.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    technologyChoices = JsonConverters.fromJson(
        json['technologyChoices'], 'List<TechnologyInStack>', context!);
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    description = json['description'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    createdBy = json['createdBy'];
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    lastModifiedBy = json['lastModifiedBy'];
    isLocked = json['isLocked'];
    ownerId = json['ownerId'];
    slug = json['slug'];
    details = json['details'];
    detailsHtml = json['detailsHtml'];
    lastStatusUpdate =
        JsonConverters.fromJson(json['lastStatusUpdate'], 'DateTime', context!);
    organizationId = json['organizationId'];
    commentsPostId = json['commentsPostId'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'technologyChoices': JsonConverters.toJson(
          technologyChoices, 'List<TechnologyInStack>', context!),
      'id': id,
      'name': name,
      'vendorName': vendorName,
      'description': description,
      'appUrl': appUrl,
      'screenshotUrl': screenshotUrl,
      'created': JsonConverters.toJson(created, 'DateTime', context!),
      'createdBy': createdBy,
      'lastModified': JsonConverters.toJson(lastModified, 'DateTime', context!),
      'lastModifiedBy': lastModifiedBy,
      'isLocked': isLocked,
      'ownerId': ownerId,
      'slug': slug,
      'details': details,
      'detailsHtml': detailsHtml,
      'lastStatusUpdate':
          JsonConverters.toJson(lastStatusUpdate, 'DateTime', context!),
      'organizationId': organizationId,
      'commentsPostId': commentsPostId,
      'viewCount': viewCount,
      'favCount': favCount
    });

  getTypeName() => "TechStackDetails";
  TypeContext? context = _ctx;
}

class LabelInfo implements IConvertible {
  String? slug;
  String? color;

  LabelInfo({this.slug, this.color});
  LabelInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    color = json['color'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug, 'color': color};

  getTypeName() => "LabelInfo";
  TypeContext? context = _ctx;
}

class CategoryInfo implements IConvertible {
  int? id;
  String? name;
  String? slug;

  CategoryInfo({this.id, this.name, this.slug});
  CategoryInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'slug': slug};

  getTypeName() => "CategoryInfo";
  TypeContext? context = _ctx;
}

class OrganizationInfo implements IConvertible {
  int? id;
  String? name;
  String? slug;
  int? refId;
  String? refSource;
  int? upVotes;
  int? downVotes;
  int? membersCount;
  int? rank;
  bool? disableInvites;
  String? lang;
  List<String>? postTypes;
  List<String>? moderatorPostTypes;
  DateTime? locked;
  List<LabelInfo>? labels;
  List<CategoryInfo>? categories;

  OrganizationInfo(
      {this.id,
      this.name,
      this.slug,
      this.refId,
      this.refSource,
      this.upVotes,
      this.downVotes,
      this.membersCount,
      this.rank,
      this.disableInvites,
      this.lang,
      this.postTypes,
      this.moderatorPostTypes,
      this.locked,
      this.labels,
      this.categories});
  OrganizationInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    refId = json['refId'];
    refSource = json['refSource'];
    upVotes = json['upVotes'];
    downVotes = json['downVotes'];
    membersCount = json['membersCount'];
    rank = json['rank'];
    disableInvites = json['disableInvites'];
    lang = json['lang'];
    postTypes =
        JsonConverters.fromJson(json['postTypes'], 'List<String>', context!);
    moderatorPostTypes = JsonConverters.fromJson(
        json['moderatorPostTypes'], 'List<String>', context!);
    locked = JsonConverters.fromJson(json['locked'], 'DateTime', context!);
    labels =
        JsonConverters.fromJson(json['labels'], 'List<LabelInfo>', context!);
    categories = JsonConverters.fromJson(
        json['categories'], 'List<CategoryInfo>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'refId': refId,
        'refSource': refSource,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'membersCount': membersCount,
        'rank': rank,
        'disableInvites': disableInvites,
        'lang': lang,
        'postTypes': JsonConverters.toJson(postTypes, 'List<String>', context!),
        'moderatorPostTypes':
            JsonConverters.toJson(moderatorPostTypes, 'List<String>', context!),
        'locked': JsonConverters.toJson(locked, 'DateTime', context!),
        'labels': JsonConverters.toJson(labels, 'List<LabelInfo>', context!),
        'categories':
            JsonConverters.toJson(categories, 'List<CategoryInfo>', context!)
      };

  getTypeName() => "OrganizationInfo";
  TypeContext? context = _ctx;
}

// @DataContract
class Option implements IConvertible {
  // @DataMember(Name="name")
  String? name;

  // @DataMember(Name="title")
  String? title;

  // @DataMember(Name="value")
  TechnologyTier? value;

  Option({this.name, this.title, this.value});
  Option.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    value = JsonConverters.fromJson(json['value'], 'TechnologyTier', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'title': title,
        'value': JsonConverters.toJson(value, 'TechnologyTier', context!)
      };

  getTypeName() => "Option";
  TypeContext? context = _ctx;
}

class HelloResponse implements IConvertible {
  String? result;
  ResponseStatus? responseStatus;

  HelloResponse({this.result, this.responseStatus});
  HelloResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = json['result'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': result,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "HelloResponse";
  TypeContext? context = _ctx;
}

class GetOrganizationResponse implements IConvertible {
  int? cache;
  int? id;
  String? slug;
  Organization? organization;
  List<OrganizationLabel>? labels;
  List<Category>? categories;
  List<OrganizationMember>? owners;
  List<OrganizationMember>? moderators;
  int? membersCount;
  ResponseStatus? responseStatus;

  GetOrganizationResponse(
      {this.cache,
      this.id,
      this.slug,
      this.organization,
      this.labels,
      this.categories,
      this.owners,
      this.moderators,
      this.membersCount,
      this.responseStatus});
  GetOrganizationResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    cache = json['cache'];
    id = json['id'];
    slug = json['slug'];
    organization =
        JsonConverters.fromJson(json['organization'], 'Organization', context!);
    labels = JsonConverters.fromJson(
        json['labels'], 'List<OrganizationLabel>', context!);
    categories =
        JsonConverters.fromJson(json['categories'], 'List<Category>', context!);
    owners = JsonConverters.fromJson(
        json['owners'], 'List<OrganizationMember>', context!);
    moderators = JsonConverters.fromJson(
        json['moderators'], 'List<OrganizationMember>', context!);
    membersCount = json['membersCount'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'cache': cache,
        'id': id,
        'slug': slug,
        'organization':
            JsonConverters.toJson(organization, 'Organization', context!),
        'labels':
            JsonConverters.toJson(labels, 'List<OrganizationLabel>', context!),
        'categories':
            JsonConverters.toJson(categories, 'List<Category>', context!),
        'owners':
            JsonConverters.toJson(owners, 'List<OrganizationMember>', context!),
        'moderators': JsonConverters.toJson(
            moderators, 'List<OrganizationMember>', context!),
        'membersCount': membersCount,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetOrganizationResponse";
  TypeContext? context = _ctx;
}

class GetOrganizationMembersResponse implements IConvertible {
  int? organizationId;
  List<OrganizationMember>? results;
  ResponseStatus? responseStatus;

  GetOrganizationMembersResponse(
      {this.organizationId, this.results, this.responseStatus});
  GetOrganizationMembersResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    results = JsonConverters.fromJson(
        json['results'], 'List<OrganizationMember>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'results': JsonConverters.toJson(
            results, 'List<OrganizationMember>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetOrganizationMembersResponse";
  TypeContext? context = _ctx;
}

class GetOrganizationAdminResponse implements IConvertible {
  List<OrganizationLabel>? labels;
  List<OrganizationMember>? members;
  List<OrganizationMemberInvite>? memberInvites;
  List<PostReportInfo>? reportedPosts;
  List<PostCommentReportInfo>? reportedPostComments;
  ResponseStatus? responseStatus;

  GetOrganizationAdminResponse(
      {this.labels,
      this.members,
      this.memberInvites,
      this.reportedPosts,
      this.reportedPostComments,
      this.responseStatus});
  GetOrganizationAdminResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    labels = JsonConverters.fromJson(
        json['labels'], 'List<OrganizationLabel>', context!);
    members = JsonConverters.fromJson(
        json['members'], 'List<OrganizationMember>', context!);
    memberInvites = JsonConverters.fromJson(
        json['memberInvites'], 'List<OrganizationMemberInvite>', context!);
    reportedPosts = JsonConverters.fromJson(
        json['reportedPosts'], 'List<PostReportInfo>', context!);
    reportedPostComments = JsonConverters.fromJson(
        json['reportedPostComments'], 'List<PostCommentReportInfo>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'labels':
            JsonConverters.toJson(labels, 'List<OrganizationLabel>', context!),
        'members': JsonConverters.toJson(
            members, 'List<OrganizationMember>', context!),
        'memberInvites': JsonConverters.toJson(
            memberInvites, 'List<OrganizationMemberInvite>', context!),
        'reportedPosts': JsonConverters.toJson(
            reportedPosts, 'List<PostReportInfo>', context!),
        'reportedPostComments': JsonConverters.toJson(
            reportedPostComments, 'List<PostCommentReportInfo>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetOrganizationAdminResponse";
  TypeContext? context = _ctx;
}

class CreateOrganizationForTechnologyResponse implements IConvertible {
  int? organizationId;
  String? organizationSlug;
  int? commentsPostId;
  String? commentsPostSlug;
  ResponseStatus? responseStatus;

  CreateOrganizationForTechnologyResponse(
      {this.organizationId,
      this.organizationSlug,
      this.commentsPostId,
      this.commentsPostSlug,
      this.responseStatus});
  CreateOrganizationForTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    organizationSlug = json['organizationSlug'];
    commentsPostId = json['commentsPostId'];
    commentsPostSlug = json['commentsPostSlug'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'organizationSlug': organizationSlug,
        'commentsPostId': commentsPostId,
        'commentsPostSlug': commentsPostSlug,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateOrganizationForTechnologyResponse";
  TypeContext? context = _ctx;
}

class CreateOrganizationResponse implements IConvertible {
  int? id;
  String? slug;
  ResponseStatus? responseStatus;

  CreateOrganizationResponse({this.id, this.slug, this.responseStatus});
  CreateOrganizationResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateOrganizationResponse";
  TypeContext? context = _ctx;
}

class UpdateOrganizationResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdateOrganizationResponse({this.responseStatus});
  UpdateOrganizationResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateOrganizationResponse";
  TypeContext? context = _ctx;
}

class OrganizationLabelResponse implements IConvertible {
  ResponseStatus? responseStatus;

  OrganizationLabelResponse({this.responseStatus});
  OrganizationLabelResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "OrganizationLabelResponse";
  TypeContext? context = _ctx;
}

class AddOrganizationCategoryResponse implements IConvertible {
  int? id;
  String? slug;
  ResponseStatus? responseStatus;

  AddOrganizationCategoryResponse({this.id, this.slug, this.responseStatus});
  AddOrganizationCategoryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "AddOrganizationCategoryResponse";
  TypeContext? context = _ctx;
}

class UpdateOrganizationCategoryResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdateOrganizationCategoryResponse({this.responseStatus});
  UpdateOrganizationCategoryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateOrganizationCategoryResponse";
  TypeContext? context = _ctx;
}

class AddOrganizationMemberResponse implements IConvertible {
  ResponseStatus? responseStatus;

  AddOrganizationMemberResponse({this.responseStatus});
  AddOrganizationMemberResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "AddOrganizationMemberResponse";
  TypeContext? context = _ctx;
}

class UpdateOrganizationMemberResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdateOrganizationMemberResponse({this.responseStatus});
  UpdateOrganizationMemberResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateOrganizationMemberResponse";
  TypeContext? context = _ctx;
}

class SetOrganizationMembersResponse implements IConvertible {
  List<int>? userIdsAdded;
  List<int>? userIdsRemoved;
  ResponseStatus? responseStatus;

  SetOrganizationMembersResponse(
      {this.userIdsAdded, this.userIdsRemoved, this.responseStatus});
  SetOrganizationMembersResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userIdsAdded =
        JsonConverters.fromJson(json['userIdsAdded'], 'List<int>', context!);
    userIdsRemoved =
        JsonConverters.fromJson(json['userIdsRemoved'], 'List<int>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userIdsAdded':
            JsonConverters.toJson(userIdsAdded, 'List<int>', context!),
        'userIdsRemoved':
            JsonConverters.toJson(userIdsRemoved, 'List<int>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "SetOrganizationMembersResponse";
  TypeContext? context = _ctx;
}

class GetOrganizationMemberInvitesResponse implements IConvertible {
  List<OrganizationMemberInvite>? results;
  ResponseStatus? responseStatus;

  GetOrganizationMemberInvitesResponse({this.results, this.responseStatus});
  GetOrganizationMemberInvitesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<OrganizationMemberInvite>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(
            results, 'List<OrganizationMemberInvite>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetOrganizationMemberInvitesResponse";
  TypeContext? context = _ctx;
}

class RequestOrganizationMemberInviteResponse implements IConvertible {
  int? organizationId;
  ResponseStatus? responseStatus;

  RequestOrganizationMemberInviteResponse(
      {this.organizationId, this.responseStatus});
  RequestOrganizationMemberInviteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RequestOrganizationMemberInviteResponse";
  TypeContext? context = _ctx;
}

class UpdateOrganizationMemberInviteResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdateOrganizationMemberInviteResponse({this.responseStatus});
  UpdateOrganizationMemberInviteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateOrganizationMemberInviteResponse";
  TypeContext? context = _ctx;
}

class GetPostResponse implements IConvertible {
  int? cache;
  Post? post;
  List<PostComment>? comments;
  ResponseStatus? responseStatus;

  GetPostResponse({this.cache, this.post, this.comments, this.responseStatus});
  GetPostResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    cache = json['cache'];
    post = JsonConverters.fromJson(json['post'], 'Post', context!);
    comments = JsonConverters.fromJson(
        json['comments'], 'List<PostComment>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'cache': cache,
        'post': JsonConverters.toJson(post, 'Post', context!),
        'comments':
            JsonConverters.toJson(comments, 'List<PostComment>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetPostResponse";
  TypeContext? context = _ctx;
}

class CreatePostResponse implements IConvertible {
  int? id;
  String? slug;
  ResponseStatus? responseStatus;

  CreatePostResponse({this.id, this.slug, this.responseStatus});
  CreatePostResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreatePostResponse";
  TypeContext? context = _ctx;
}

class UpdatePostResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdatePostResponse({this.responseStatus});
  UpdatePostResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdatePostResponse";
  TypeContext? context = _ctx;
}

class DeletePostResponse implements IConvertible {
  int? id;
  ResponseStatus? responseStatus;

  DeletePostResponse({this.id, this.responseStatus});
  DeletePostResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "DeletePostResponse";
  TypeContext? context = _ctx;
}

class CreatePostCommentResponse implements IConvertible {
  int? id;
  int? postId;
  ResponseStatus? responseStatus;

  CreatePostCommentResponse({this.id, this.postId, this.responseStatus});
  CreatePostCommentResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreatePostCommentResponse";
  TypeContext? context = _ctx;
}

class UpdatePostCommentResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdatePostCommentResponse({this.responseStatus});
  UpdatePostCommentResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdatePostCommentResponse";
  TypeContext? context = _ctx;
}

class DeletePostCommentResponse implements IConvertible {
  int? id;
  int? postId;
  ResponseStatus? responseStatus;

  DeletePostCommentResponse({this.id, this.postId, this.responseStatus});
  DeletePostCommentResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "DeletePostCommentResponse";
  TypeContext? context = _ctx;
}

class GetUserPostCommentVotesResponse implements IConvertible {
  int? postId;
  List<int>? upVotedCommentIds;
  List<int>? downVotedCommentIds;

  GetUserPostCommentVotesResponse(
      {this.postId, this.upVotedCommentIds, this.downVotedCommentIds});
  GetUserPostCommentVotesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    upVotedCommentIds = JsonConverters.fromJson(
        json['upVotedCommentIds'], 'List<int>', context!);
    downVotedCommentIds = JsonConverters.fromJson(
        json['downVotedCommentIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'upVotedCommentIds':
            JsonConverters.toJson(upVotedCommentIds, 'List<int>', context!),
        'downVotedCommentIds':
            JsonConverters.toJson(downVotedCommentIds, 'List<int>', context!)
      };

  getTypeName() => "GetUserPostCommentVotesResponse";
  TypeContext? context = _ctx;
}

class PinPostCommentResponse implements IConvertible {
  ResponseStatus? responseStatus;

  PinPostCommentResponse({this.responseStatus});
  PinPostCommentResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "PinPostCommentResponse";
  TypeContext? context = _ctx;
}

class GetUsersByEmailsResponse implements IConvertible {
  List<UserRef>? results;
  ResponseStatus? responseStatus;

  GetUsersByEmailsResponse({this.results, this.responseStatus});
  GetUsersByEmailsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<UserRef>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'List<UserRef>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetUsersByEmailsResponse";
  TypeContext? context = _ctx;
}

class GetUserPostActivityResponse implements IConvertible {
  List<int>? upVotedPostIds;
  List<int>? downVotedPostIds;
  List<int>? favoritePostIds;
  ResponseStatus? responseStatus;

  GetUserPostActivityResponse(
      {this.upVotedPostIds,
      this.downVotedPostIds,
      this.favoritePostIds,
      this.responseStatus});
  GetUserPostActivityResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    upVotedPostIds =
        JsonConverters.fromJson(json['upVotedPostIds'], 'List<int>', context!);
    downVotedPostIds = JsonConverters.fromJson(
        json['downVotedPostIds'], 'List<int>', context!);
    favoritePostIds =
        JsonConverters.fromJson(json['favoritePostIds'], 'List<int>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'upVotedPostIds':
            JsonConverters.toJson(upVotedPostIds, 'List<int>', context!),
        'downVotedPostIds':
            JsonConverters.toJson(downVotedPostIds, 'List<int>', context!),
        'favoritePostIds':
            JsonConverters.toJson(favoritePostIds, 'List<int>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetUserPostActivityResponse";
  TypeContext? context = _ctx;
}

class GetUserOrganizationsResponse implements IConvertible {
  List<OrganizationMember>? members;
  List<OrganizationMemberInvite>? memberInvites;
  List<OrganizationSubscription>? subscriptions;

  GetUserOrganizationsResponse(
      {this.members, this.memberInvites, this.subscriptions});
  GetUserOrganizationsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    members = JsonConverters.fromJson(
        json['members'], 'List<OrganizationMember>', context!);
    memberInvites = JsonConverters.fromJson(
        json['memberInvites'], 'List<OrganizationMemberInvite>', context!);
    subscriptions = JsonConverters.fromJson(
        json['subscriptions'], 'List<OrganizationSubscription>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'members': JsonConverters.toJson(
            members, 'List<OrganizationMember>', context!),
        'memberInvites': JsonConverters.toJson(
            memberInvites, 'List<OrganizationMemberInvite>', context!),
        'subscriptions': JsonConverters.toJson(
            subscriptions, 'List<OrganizationSubscription>', context!)
      };

  getTypeName() => "GetUserOrganizationsResponse";
  TypeContext? context = _ctx;
}

class UserPostVoteResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UserPostVoteResponse({this.responseStatus});
  UserPostVoteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UserPostVoteResponse";
  TypeContext? context = _ctx;
}

class UserPostFavoriteResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UserPostFavoriteResponse({this.responseStatus});
  UserPostFavoriteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UserPostFavoriteResponse";
  TypeContext? context = _ctx;
}

class UserPostReportResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UserPostReportResponse({this.responseStatus});
  UserPostReportResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UserPostReportResponse";
  TypeContext? context = _ctx;
}

class UserPostCommentVoteResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UserPostCommentVoteResponse({this.responseStatus});
  UserPostCommentVoteResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UserPostCommentVoteResponse";
  TypeContext? context = _ctx;
}

class UserPostCommentReportResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UserPostCommentReportResponse({this.responseStatus});
  UserPostCommentReportResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UserPostCommentReportResponse";
  TypeContext? context = _ctx;
}

class SessionInfoResponse implements IConvertible {
  DateTime? created;
  String? id;
  String? referrerUrl;
  String? userAuthId;
  String? userAuthName;
  String? userName;
  String? displayName;
  String? firstName;
  String? lastName;
  String? email;
  DateTime? createdAt;
  DateTime? lastModified;
  List<String>? roles;
  List<String>? permissions;
  bool? isAuthenticated;
  String? authProvider;
  String? profileUrl;
  String? githubProfileUrl;
  String? twitterProfileUrl;
  String? accessToken;
  String? avatarUrl;
  List<TechnologyStack>? techStacks;
  List<TechnologyStack>? favoriteTechStacks;
  List<Technology>? favoriteTechnologies;
  UserActivity? userActivity;
  List<OrganizationMember>? members;
  List<OrganizationMemberInvite>? memberInvites;
  List<OrganizationSubscription>? subscriptions;
  ResponseStatus? responseStatus;

  SessionInfoResponse(
      {this.created,
      this.id,
      this.referrerUrl,
      this.userAuthId,
      this.userAuthName,
      this.userName,
      this.displayName,
      this.firstName,
      this.lastName,
      this.email,
      this.createdAt,
      this.lastModified,
      this.roles,
      this.permissions,
      this.isAuthenticated,
      this.authProvider,
      this.profileUrl,
      this.githubProfileUrl,
      this.twitterProfileUrl,
      this.accessToken,
      this.avatarUrl,
      this.techStacks,
      this.favoriteTechStacks,
      this.favoriteTechnologies,
      this.userActivity,
      this.members,
      this.memberInvites,
      this.subscriptions,
      this.responseStatus});
  SessionInfoResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    id = json['id'];
    referrerUrl = json['referrerUrl'];
    userAuthId = json['userAuthId'];
    userAuthName = json['userAuthName'];
    userName = json['userName'];
    displayName = json['displayName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    createdAt =
        JsonConverters.fromJson(json['createdAt'], 'DateTime', context!);
    lastModified =
        JsonConverters.fromJson(json['lastModified'], 'DateTime', context!);
    roles = JsonConverters.fromJson(json['roles'], 'List<String>', context!);
    permissions =
        JsonConverters.fromJson(json['permissions'], 'List<String>', context!);
    isAuthenticated = json['isAuthenticated'];
    authProvider = json['authProvider'];
    profileUrl = json['profileUrl'];
    githubProfileUrl = json['githubProfileUrl'];
    twitterProfileUrl = json['twitterProfileUrl'];
    accessToken = json['accessToken'];
    avatarUrl = json['avatarUrl'];
    techStacks = JsonConverters.fromJson(
        json['techStacks'], 'List<TechnologyStack>', context!);
    favoriteTechStacks = JsonConverters.fromJson(
        json['favoriteTechStacks'], 'List<TechnologyStack>', context!);
    favoriteTechnologies = JsonConverters.fromJson(
        json['favoriteTechnologies'], 'List<Technology>', context!);
    userActivity =
        JsonConverters.fromJson(json['userActivity'], 'UserActivity', context!);
    members = JsonConverters.fromJson(
        json['members'], 'List<OrganizationMember>', context!);
    memberInvites = JsonConverters.fromJson(
        json['memberInvites'], 'List<OrganizationMemberInvite>', context!);
    subscriptions = JsonConverters.fromJson(
        json['subscriptions'], 'List<OrganizationSubscription>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'id': id,
        'referrerUrl': referrerUrl,
        'userAuthId': userAuthId,
        'userAuthName': userAuthName,
        'userName': userName,
        'displayName': displayName,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'createdAt': JsonConverters.toJson(createdAt, 'DateTime', context!),
        'lastModified':
            JsonConverters.toJson(lastModified, 'DateTime', context!),
        'roles': JsonConverters.toJson(roles, 'List<String>', context!),
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context!),
        'isAuthenticated': isAuthenticated,
        'authProvider': authProvider,
        'profileUrl': profileUrl,
        'githubProfileUrl': githubProfileUrl,
        'twitterProfileUrl': twitterProfileUrl,
        'accessToken': accessToken,
        'avatarUrl': avatarUrl,
        'techStacks': JsonConverters.toJson(
            techStacks, 'List<TechnologyStack>', context!),
        'favoriteTechStacks': JsonConverters.toJson(
            favoriteTechStacks, 'List<TechnologyStack>', context!),
        'favoriteTechnologies': JsonConverters.toJson(
            favoriteTechnologies, 'List<Technology>', context!),
        'userActivity':
            JsonConverters.toJson(userActivity, 'UserActivity', context!),
        'members': JsonConverters.toJson(
            members, 'List<OrganizationMember>', context!),
        'memberInvites': JsonConverters.toJson(
            memberInvites, 'List<OrganizationMemberInvite>', context!),
        'subscriptions': JsonConverters.toJson(
            subscriptions, 'List<OrganizationSubscription>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "SessionInfoResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyPreviousVersionsResponse implements IConvertible {
  List<TechnologyHistory>? results;

  GetTechnologyPreviousVersionsResponse({this.results});
  GetTechnologyPreviousVersionsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<TechnologyHistory>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results':
            JsonConverters.toJson(results, 'List<TechnologyHistory>', context!)
      };

  getTypeName() => "GetTechnologyPreviousVersionsResponse";
  TypeContext? context = _ctx;
}

class GetAllTechnologiesResponse implements IConvertible {
  List<Technology>? results;
  int? total;

  GetAllTechnologiesResponse({this.results, this.total});
  GetAllTechnologiesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<Technology>', context!);
    total = json['total'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'List<Technology>', context!),
        'total': total
      };

  getTypeName() => "GetAllTechnologiesResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyResponse implements IConvertible {
  DateTime? created;
  Technology? technology;
  List<TechnologyStack>? technologyStacks;
  ResponseStatus? responseStatus;

  GetTechnologyResponse(
      {this.created,
      this.technology,
      this.technologyStacks,
      this.responseStatus});
  GetTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    technology =
        JsonConverters.fromJson(json['technology'], 'Technology', context!);
    technologyStacks = JsonConverters.fromJson(
        json['technologyStacks'], 'List<TechnologyStack>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'technology': JsonConverters.toJson(technology, 'Technology', context!),
        'technologyStacks': JsonConverters.toJson(
            technologyStacks, 'List<TechnologyStack>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetTechnologyResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyFavoriteDetailsResponse implements IConvertible {
  List<String>? users;
  int? favoriteCount;

  GetTechnologyFavoriteDetailsResponse({this.users, this.favoriteCount});
  GetTechnologyFavoriteDetailsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    users = JsonConverters.fromJson(json['users'], 'List<String>', context!);
    favoriteCount = json['favoriteCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'users': JsonConverters.toJson(users, 'List<String>', context!),
        'favoriteCount': favoriteCount
      };

  getTypeName() => "GetTechnologyFavoriteDetailsResponse";
  TypeContext? context = _ctx;
}

class CreateTechnologyResponse implements IConvertible {
  Technology? result;
  ResponseStatus? responseStatus;

  CreateTechnologyResponse({this.result, this.responseStatus});
  CreateTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'Technology', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'Technology', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateTechnologyResponse";
  TypeContext? context = _ctx;
}

class UpdateTechnologyResponse implements IConvertible {
  Technology? result;
  ResponseStatus? responseStatus;

  UpdateTechnologyResponse({this.result, this.responseStatus});
  UpdateTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'Technology', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'Technology', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateTechnologyResponse";
  TypeContext? context = _ctx;
}

class DeleteTechnologyResponse implements IConvertible {
  Technology? result;
  ResponseStatus? responseStatus;

  DeleteTechnologyResponse({this.result, this.responseStatus});
  DeleteTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'Technology', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'Technology', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "DeleteTechnologyResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyStackPreviousVersionsResponse implements IConvertible {
  List<TechnologyStackHistory>? results;

  GetTechnologyStackPreviousVersionsResponse({this.results});
  GetTechnologyStackPreviousVersionsResponse.fromJson(
      Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<TechnologyStackHistory>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(
            results, 'List<TechnologyStackHistory>', context!)
      };

  getTypeName() => "GetTechnologyStackPreviousVersionsResponse";
  TypeContext? context = _ctx;
}

class GetPageStatsResponse implements IConvertible {
  String? type;
  String? slug;
  int? viewCount;
  int? favCount;

  GetPageStatsResponse({this.type, this.slug, this.viewCount, this.favCount});
  GetPageStatsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    type = json['type'];
    slug = json['slug'];
    viewCount = json['viewCount'];
    favCount = json['favCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'type': type,
        'slug': slug,
        'viewCount': viewCount,
        'favCount': favCount
      };

  getTypeName() => "GetPageStatsResponse";
  TypeContext? context = _ctx;
}

class OverviewResponse implements IConvertible {
  DateTime? created;
  List<UserInfo>? topUsers;
  List<TechnologyInfo>? topTechnologies;
  List<TechStackDetails>? latestTechStacks;
  List<TechnologyStack>? popularTechStacks;
  List<OrganizationInfo>? allOrganizations;
  Map<String, List<TechnologyInfo>?>? topTechnologiesByTier;
  ResponseStatus? responseStatus;

  OverviewResponse(
      {this.created,
      this.topUsers,
      this.topTechnologies,
      this.latestTechStacks,
      this.popularTechStacks,
      this.allOrganizations,
      this.topTechnologiesByTier,
      this.responseStatus});
  OverviewResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    topUsers =
        JsonConverters.fromJson(json['topUsers'], 'List<UserInfo>', context!);
    topTechnologies = JsonConverters.fromJson(
        json['topTechnologies'], 'List<TechnologyInfo>', context!);
    latestTechStacks = JsonConverters.fromJson(
        json['latestTechStacks'], 'List<TechStackDetails>', context!);
    popularTechStacks = JsonConverters.fromJson(
        json['popularTechStacks'], 'List<TechnologyStack>', context!);
    allOrganizations = JsonConverters.fromJson(
        json['allOrganizations'], 'List<OrganizationInfo>', context!);
    topTechnologiesByTier = JsonConverters.fromJson(
        json['topTechnologiesByTier'],
        'Map<String,List<TechnologyInfo>?>',
        context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'topUsers': JsonConverters.toJson(topUsers, 'List<UserInfo>', context!),
        'topTechnologies': JsonConverters.toJson(
            topTechnologies, 'List<TechnologyInfo>', context!),
        'latestTechStacks': JsonConverters.toJson(
            latestTechStacks, 'List<TechStackDetails>', context!),
        'popularTechStacks': JsonConverters.toJson(
            popularTechStacks, 'List<TechnologyStack>', context!),
        'allOrganizations': JsonConverters.toJson(
            allOrganizations, 'List<OrganizationInfo>', context!),
        'topTechnologiesByTier': JsonConverters.toJson(topTechnologiesByTier,
            'Map<String,List<TechnologyInfo>?>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "OverviewResponse";
  TypeContext? context = _ctx;
}

class AppOverviewResponse implements IConvertible {
  DateTime? created;
  List<Option>? allTiers;
  List<TechnologyInfo>? topTechnologies;
  ResponseStatus? responseStatus;

  AppOverviewResponse(
      {this.created, this.allTiers, this.topTechnologies, this.responseStatus});
  AppOverviewResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    allTiers =
        JsonConverters.fromJson(json['allTiers'], 'List<Option>', context!);
    topTechnologies = JsonConverters.fromJson(
        json['topTechnologies'], 'List<TechnologyInfo>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'allTiers': JsonConverters.toJson(allTiers, 'List<Option>', context!),
        'topTechnologies': JsonConverters.toJson(
            topTechnologies, 'List<TechnologyInfo>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "AppOverviewResponse";
  TypeContext? context = _ctx;
}

class GetAllTechnologyStacksResponse implements IConvertible {
  List<TechnologyStack>? results;
  int? total;

  GetAllTechnologyStacksResponse({this.results, this.total});
  GetAllTechnologyStacksResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<TechnologyStack>', context!);
    total = json['total'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results':
            JsonConverters.toJson(results, 'List<TechnologyStack>', context!),
        'total': total
      };

  getTypeName() => "GetAllTechnologyStacksResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyStackResponse implements IConvertible {
  DateTime? created;
  TechStackDetails? result;
  ResponseStatus? responseStatus;

  GetTechnologyStackResponse({this.created, this.result, this.responseStatus});
  GetTechnologyStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    result =
        JsonConverters.fromJson(json['result'], 'TechStackDetails', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'result': JsonConverters.toJson(result, 'TechStackDetails', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetTechnologyStackResponse";
  TypeContext? context = _ctx;
}

class GetTechnologyStackFavoriteDetailsResponse implements IConvertible {
  List<String>? users;
  int? favoriteCount;

  GetTechnologyStackFavoriteDetailsResponse({this.users, this.favoriteCount});
  GetTechnologyStackFavoriteDetailsResponse.fromJson(
      Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    users = JsonConverters.fromJson(json['users'], 'List<String>', context!);
    favoriteCount = json['favoriteCount'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'users': JsonConverters.toJson(users, 'List<String>', context!),
        'favoriteCount': favoriteCount
      };

  getTypeName() => "GetTechnologyStackFavoriteDetailsResponse";
  TypeContext? context = _ctx;
}

class GetConfigResponse implements IConvertible {
  List<Option>? allTiers;
  List<Option>? allPostTypes;
  List<Option>? allFlagTypes;

  GetConfigResponse({this.allTiers, this.allPostTypes, this.allFlagTypes});
  GetConfigResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    allTiers =
        JsonConverters.fromJson(json['allTiers'], 'List<Option>', context!);
    allPostTypes =
        JsonConverters.fromJson(json['allPostTypes'], 'List<Option>', context!);
    allFlagTypes =
        JsonConverters.fromJson(json['allFlagTypes'], 'List<Option>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'allTiers': JsonConverters.toJson(allTiers, 'List<Option>', context!),
        'allPostTypes':
            JsonConverters.toJson(allPostTypes, 'List<Option>', context!),
        'allFlagTypes':
            JsonConverters.toJson(allFlagTypes, 'List<Option>', context!)
      };

  getTypeName() => "GetConfigResponse";
  TypeContext? context = _ctx;
}

class CreateTechnologyStackResponse implements IConvertible {
  TechStackDetails? result;
  ResponseStatus? responseStatus;

  CreateTechnologyStackResponse({this.result, this.responseStatus});
  CreateTechnologyStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result =
        JsonConverters.fromJson(json['result'], 'TechStackDetails', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'TechStackDetails', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CreateTechnologyStackResponse";
  TypeContext? context = _ctx;
}

class UpdateTechnologyStackResponse implements IConvertible {
  TechStackDetails? result;
  ResponseStatus? responseStatus;

  UpdateTechnologyStackResponse({this.result, this.responseStatus});
  UpdateTechnologyStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result =
        JsonConverters.fromJson(json['result'], 'TechStackDetails', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'TechStackDetails', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateTechnologyStackResponse";
  TypeContext? context = _ctx;
}

class DeleteTechnologyStackResponse implements IConvertible {
  TechStackDetails? result;
  ResponseStatus? responseStatus;

  DeleteTechnologyStackResponse({this.result, this.responseStatus});
  DeleteTechnologyStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result =
        JsonConverters.fromJson(json['result'], 'TechStackDetails', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result, 'TechStackDetails', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "DeleteTechnologyStackResponse";
  TypeContext? context = _ctx;
}

class GetFavoriteTechStackResponse implements IConvertible {
  List<TechnologyStack>? results;

  GetFavoriteTechStackResponse({this.results});
  GetFavoriteTechStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<TechnologyStack>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results':
            JsonConverters.toJson(results, 'List<TechnologyStack>', context!)
      };

  getTypeName() => "GetFavoriteTechStackResponse";
  TypeContext? context = _ctx;
}

class FavoriteTechStackResponse implements IConvertible {
  TechnologyStack? result;

  FavoriteTechStackResponse({this.result});
  FavoriteTechStackResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result =
        JsonConverters.fromJson(json['result'], 'TechnologyStack', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'result': JsonConverters.toJson(result, 'TechnologyStack', context!)};

  getTypeName() => "FavoriteTechStackResponse";
  TypeContext? context = _ctx;
}

class GetFavoriteTechnologiesResponse implements IConvertible {
  List<Technology>? results;

  GetFavoriteTechnologiesResponse({this.results});
  GetFavoriteTechnologiesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<Technology>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'results': JsonConverters.toJson(results, 'List<Technology>', context!)};

  getTypeName() => "GetFavoriteTechnologiesResponse";
  TypeContext? context = _ctx;
}

class FavoriteTechnologyResponse implements IConvertible {
  Technology? result;

  FavoriteTechnologyResponse({this.result});
  FavoriteTechnologyResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'Technology', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'result': JsonConverters.toJson(result, 'Technology', context!)};

  getTypeName() => "FavoriteTechnologyResponse";
  TypeContext? context = _ctx;
}

class GetUserFeedResponse implements IConvertible {
  List<TechStackDetails>? results;

  GetUserFeedResponse({this.results});
  GetUserFeedResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        json['results'], 'List<TechStackDetails>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results':
            JsonConverters.toJson(results, 'List<TechStackDetails>', context!)
      };

  getTypeName() => "GetUserFeedResponse";
  TypeContext? context = _ctx;
}

class GetUsersKarmaResponse implements IConvertible {
  Map<int, int?>? results;
  ResponseStatus? responseStatus;

  GetUsersKarmaResponse({this.results, this.responseStatus});
  GetUsersKarmaResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'Map<int,int?>', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'Map<int,int?>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetUsersKarmaResponse";
  TypeContext? context = _ctx;
}

class GetUserInfoResponse implements IConvertible {
  int? id;
  String? userName;
  DateTime? created;
  String? avatarUrl;
  List<TechnologyStack>? techStacks;
  List<TechnologyStack>? favoriteTechStacks;
  List<Technology>? favoriteTechnologies;
  UserActivity? userActivity;
  ResponseStatus? responseStatus;

  GetUserInfoResponse(
      {this.id,
      this.userName,
      this.created,
      this.avatarUrl,
      this.techStacks,
      this.favoriteTechStacks,
      this.favoriteTechnologies,
      this.userActivity,
      this.responseStatus});
  GetUserInfoResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    created = JsonConverters.fromJson(json['created'], 'DateTime', context!);
    avatarUrl = json['avatarUrl'];
    techStacks = JsonConverters.fromJson(
        json['techStacks'], 'List<TechnologyStack>', context!);
    favoriteTechStacks = JsonConverters.fromJson(
        json['favoriteTechStacks'], 'List<TechnologyStack>', context!);
    favoriteTechnologies = JsonConverters.fromJson(
        json['favoriteTechnologies'], 'List<Technology>', context!);
    userActivity =
        JsonConverters.fromJson(json['userActivity'], 'UserActivity', context!);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'created': JsonConverters.toJson(created, 'DateTime', context!),
        'avatarUrl': avatarUrl,
        'techStacks': JsonConverters.toJson(
            techStacks, 'List<TechnologyStack>', context!),
        'favoriteTechStacks': JsonConverters.toJson(
            favoriteTechStacks, 'List<TechnologyStack>', context!),
        'favoriteTechnologies': JsonConverters.toJson(
            favoriteTechnologies, 'List<Technology>', context!),
        'userActivity':
            JsonConverters.toJson(userActivity, 'UserActivity', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetUserInfoResponse";
  TypeContext? context = _ctx;
}

class LogoUrlApprovalResponse implements IConvertible {
  Technology? result;

  LogoUrlApprovalResponse({this.result});
  LogoUrlApprovalResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    result = JsonConverters.fromJson(json['result'], 'Technology', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'result': JsonConverters.toJson(result, 'Technology', context!)};

  getTypeName() => "LogoUrlApprovalResponse";
  TypeContext? context = _ctx;
}

class LockStackResponse implements IConvertible {
  LockStackResponse();
  LockStackResponse.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "LockStackResponse";
  TypeContext? context = _ctx;
}

class EmailTestResponse implements IConvertible {
  ResponseStatus? responseStatus;

  EmailTestResponse({this.responseStatus});
  EmailTestResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "EmailTestResponse";
  TypeContext? context = _ctx;
}

// @Route("/ping")
class Ping implements IGet, IConvertible {
  Ping();
  Ping.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  getTypeName() => "Ping";
  TypeContext? context = _ctx;
}

// @Route("/hello/{Name}")
class Hello implements IReturn<HelloResponse>, IGet, IConvertible {
  String? name;

  Hello({this.name});
  Hello.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    return this;
  }

  Map<String, dynamic> toJson() => {'name': name};

  createResponse() => HelloResponse();
  getResponseTypeName() => "HelloResponse";
  getTypeName() => "Hello";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}", "GET")
class GetOrganization
    implements IReturn<GetOrganizationResponse>, IGet, IConvertible {
  int? id;

  GetOrganization({this.id});
  GetOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => GetOrganizationResponse();
  getResponseTypeName() => "GetOrganizationResponse";
  getTypeName() => "GetOrganization";
  TypeContext? context = _ctx;
}

// @Route("/organizations/{Slug}", "GET")
class GetOrganizationBySlug
    implements IReturn<GetOrganizationResponse>, IGet, IConvertible {
  String? slug;

  GetOrganizationBySlug({this.slug});
  GetOrganizationBySlug.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetOrganizationResponse();
  getResponseTypeName() => "GetOrganizationResponse";
  getTypeName() => "GetOrganizationBySlug";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}/members", "GET")
class GetOrganizationMembers
    implements IReturn<GetOrganizationMembersResponse>, IGet, IConvertible {
  int? id;

  GetOrganizationMembers({this.id});
  GetOrganizationMembers.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => GetOrganizationMembersResponse();
  getResponseTypeName() => "GetOrganizationMembersResponse";
  getTypeName() => "GetOrganizationMembers";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}/admin", "GET")
class GetOrganizationAdmin
    implements IReturn<GetOrganizationAdminResponse>, IGet, IConvertible {
  int? id;

  GetOrganizationAdmin({this.id});
  GetOrganizationAdmin.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => GetOrganizationAdminResponse();
  getResponseTypeName() => "GetOrganizationAdminResponse";
  getTypeName() => "GetOrganizationAdmin";
  TypeContext? context = _ctx;
}

// @Route("/orgs/posts/new", "POST")
class CreateOrganizationForTechnology
    implements
        IReturn<CreateOrganizationForTechnologyResponse>,
        IPost,
        IConvertible {
  int? technologyId;
  int? techStackId;

  CreateOrganizationForTechnology({this.technologyId, this.techStackId});
  CreateOrganizationForTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    techStackId = json['techStackId'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'technologyId': technologyId, 'techStackId': techStackId};

  createResponse() => CreateOrganizationForTechnologyResponse();
  getResponseTypeName() => "CreateOrganizationForTechnologyResponse";
  getTypeName() => "CreateOrganizationForTechnology";
  TypeContext? context = _ctx;
}

// @Route("/orgs", "POST")
class CreateOrganization
    implements IReturn<CreateOrganizationResponse>, IPost, IConvertible {
  String? name;
  String? slug;
  String? description;
  int? refId;
  String? refSource;
  String? refUrn;

  CreateOrganization(
      {this.name,
      this.slug,
      this.description,
      this.refId,
      this.refSource,
      this.refUrn});
  CreateOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    refId = json['refId'];
    refSource = json['refSource'];
    refUrn = json['refUrn'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'description': description,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
      };

  createResponse() => CreateOrganizationResponse();
  getResponseTypeName() => "CreateOrganizationResponse";
  getTypeName() => "CreateOrganization";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}", "PUT")
class UpdateOrganization
    implements IReturn<UpdateOrganizationResponse>, IPut, IConvertible {
  int? id;
  String? slug;
  String? name;
  String? description;
  String? color;
  String? textColor;
  String? linkColor;
  String? backgroundColor;
  String? backgroundUrl;
  String? logoUrl;
  String? heroUrl;
  String? lang;
  int? deletePostsWithReportCount;
  bool? disableInvites;
  String? defaultPostType;
  List<String>? defaultSubscriptionPostTypes;
  List<String>? postTypes;
  List<String>? moderatorPostTypes;
  List<int>? technologyIds;

  UpdateOrganization(
      {this.id,
      this.slug,
      this.name,
      this.description,
      this.color,
      this.textColor,
      this.linkColor,
      this.backgroundColor,
      this.backgroundUrl,
      this.logoUrl,
      this.heroUrl,
      this.lang,
      this.deletePostsWithReportCount,
      this.disableInvites,
      this.defaultPostType,
      this.defaultSubscriptionPostTypes,
      this.postTypes,
      this.moderatorPostTypes,
      this.technologyIds});
  UpdateOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    description = json['description'];
    color = json['color'];
    textColor = json['textColor'];
    linkColor = json['linkColor'];
    backgroundColor = json['backgroundColor'];
    backgroundUrl = json['backgroundUrl'];
    logoUrl = json['logoUrl'];
    heroUrl = json['heroUrl'];
    lang = json['lang'];
    deletePostsWithReportCount = json['deletePostsWithReportCount'];
    disableInvites = json['disableInvites'];
    defaultPostType = json['defaultPostType'];
    defaultSubscriptionPostTypes = JsonConverters.fromJson(
        json['defaultSubscriptionPostTypes'], 'List<String>', context!);
    postTypes =
        JsonConverters.fromJson(json['postTypes'], 'List<String>', context!);
    moderatorPostTypes = JsonConverters.fromJson(
        json['moderatorPostTypes'], 'List<String>', context!);
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'name': name,
        'description': description,
        'color': color,
        'textColor': textColor,
        'linkColor': linkColor,
        'backgroundColor': backgroundColor,
        'backgroundUrl': backgroundUrl,
        'logoUrl': logoUrl,
        'heroUrl': heroUrl,
        'lang': lang,
        'deletePostsWithReportCount': deletePostsWithReportCount,
        'disableInvites': disableInvites,
        'defaultPostType': defaultPostType,
        'defaultSubscriptionPostTypes': JsonConverters.toJson(
            defaultSubscriptionPostTypes, 'List<String>', context!),
        'postTypes': JsonConverters.toJson(postTypes, 'List<String>', context!),
        'moderatorPostTypes':
            JsonConverters.toJson(moderatorPostTypes, 'List<String>', context!),
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!)
      };

  createResponse() => UpdateOrganizationResponse();
  getResponseTypeName() => "UpdateOrganizationResponse";
  getTypeName() => "UpdateOrganization";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}", "DELETE")
class DeleteOrganization implements IReturnVoid, IDelete, IConvertible {
  int? id;

  DeleteOrganization({this.id});
  DeleteOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() {}
  getTypeName() => "DeleteOrganization";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{Id}/lock", "PUT")
class LockOrganization implements IReturnVoid, IPut, IConvertible {
  int? id;
  bool? lock;
  String? reason;

  LockOrganization({this.id, this.lock, this.reason});
  LockOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    lock = json['lock'];
    reason = json['reason'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'lock': lock, 'reason': reason};

  createResponse() {}
  getTypeName() => "LockOrganization";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/labels", "POST")
class AddOrganizationLabel
    implements IReturn<OrganizationLabelResponse>, IPost, IConvertible {
  int? organizationId;
  String? slug;
  String? description;
  String? color;

  AddOrganizationLabel(
      {this.organizationId, this.slug, this.description, this.color});
  AddOrganizationLabel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    slug = json['slug'];
    description = json['description'];
    color = json['color'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'description': description,
        'color': color
      };

  createResponse() => OrganizationLabelResponse();
  getResponseTypeName() => "OrganizationLabelResponse";
  getTypeName() => "AddOrganizationLabel";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{Slug}", "PUT")
class UpdateOrganizationLabel
    implements IReturn<OrganizationLabelResponse>, IPut, IConvertible {
  int? organizationId;
  String? slug;
  String? description;
  String? color;

  UpdateOrganizationLabel(
      {this.organizationId, this.slug, this.description, this.color});
  UpdateOrganizationLabel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    slug = json['slug'];
    description = json['description'];
    color = json['color'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'description': description,
        'color': color
      };

  createResponse() => OrganizationLabelResponse();
  getResponseTypeName() => "OrganizationLabelResponse";
  getTypeName() => "UpdateOrganizationLabel";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/labels/{Slug}", "DELETE")
class RemoveOrganizationLabel implements IReturnVoid, IDelete, IConvertible {
  int? organizationId;
  String? slug;

  RemoveOrganizationLabel({this.organizationId, this.slug});
  RemoveOrganizationLabel.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'organizationId': organizationId, 'slug': slug};

  createResponse() {}
  getTypeName() => "RemoveOrganizationLabel";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories", "POST")
class AddOrganizationCategory
    implements IReturn<AddOrganizationCategoryResponse>, IPost, IConvertible {
  int? organizationId;
  String? slug;
  String? name;
  String? description;
  List<int>? technologyIds;

  AddOrganizationCategory(
      {this.organizationId,
      this.slug,
      this.name,
      this.description,
      this.technologyIds});
  AddOrganizationCategory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    slug = json['slug'];
    name = json['name'];
    description = json['description'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'name': name,
        'description': description,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!)
      };

  createResponse() => AddOrganizationCategoryResponse();
  getResponseTypeName() => "AddOrganizationCategoryResponse";
  getTypeName() => "AddOrganizationCategory";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories/{Id}", "PUT")
class UpdateOrganizationCategory
    implements IReturn<UpdateOrganizationCategoryResponse>, IPut, IConvertible {
  int? organizationId;
  int? id;
  String? name;
  String? slug;
  String? description;
  List<int>? technologyIds;

  UpdateOrganizationCategory(
      {this.organizationId,
      this.id,
      this.name,
      this.slug,
      this.description,
      this.technologyIds});
  UpdateOrganizationCategory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    description = json['description'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!)
      };

  createResponse() => UpdateOrganizationCategoryResponse();
  getResponseTypeName() => "UpdateOrganizationCategoryResponse";
  getTypeName() => "UpdateOrganizationCategory";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories/{Id}", "DELETE")
class DeleteOrganizationCategory implements IReturnVoid, IDelete, IConvertible {
  int? organizationId;
  int? id;

  DeleteOrganizationCategory({this.organizationId, this.id});
  DeleteOrganizationCategory.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'organizationId': organizationId, 'id': id};

  createResponse() {}
  getTypeName() => "DeleteOrganizationCategory";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members", "POST")
class AddOrganizationMember
    implements IReturn<AddOrganizationMemberResponse>, IPost, IConvertible {
  int? organizationId;
  String? userName;
  bool? isOwner;
  bool? isModerator;
  bool? denyPosts;
  bool? denyComments;
  bool? denyAll;
  String? notes;

  AddOrganizationMember(
      {this.organizationId,
      this.userName,
      this.isOwner,
      this.isModerator,
      this.denyPosts,
      this.denyComments,
      this.denyAll,
      this.notes});
  AddOrganizationMember.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    userName = json['userName'];
    isOwner = json['isOwner'];
    isModerator = json['isModerator'];
    denyPosts = json['denyPosts'];
    denyComments = json['denyComments'];
    denyAll = json['denyAll'];
    notes = json['notes'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userName': userName,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll,
        'notes': notes
      };

  createResponse() => AddOrganizationMemberResponse();
  getResponseTypeName() => "AddOrganizationMemberResponse";
  getTypeName() => "AddOrganizationMember";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{Id}", "PUT")
class UpdateOrganizationMember
    implements IReturn<UpdateOrganizationMemberResponse>, IPut, IConvertible {
  int? organizationId;
  int? userId;
  bool? isOwner;
  bool? isModerator;
  bool? denyPosts;
  bool? denyComments;
  bool? denyAll;
  String? notes;

  UpdateOrganizationMember(
      {this.organizationId,
      this.userId,
      this.isOwner,
      this.isModerator,
      this.denyPosts,
      this.denyComments,
      this.denyAll,
      this.notes});
  UpdateOrganizationMember.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    userId = json['userId'];
    isOwner = json['isOwner'];
    isModerator = json['isModerator'];
    denyPosts = json['denyPosts'];
    denyComments = json['denyComments'];
    denyAll = json['denyAll'];
    notes = json['notes'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userId': userId,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll,
        'notes': notes
      };

  createResponse() => UpdateOrganizationMemberResponse();
  getResponseTypeName() => "UpdateOrganizationMemberResponse";
  getTypeName() => "UpdateOrganizationMember";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{UserId}", "DELETE")
class RemoveOrganizationMember implements IReturnVoid, IDelete, IConvertible {
  int? organizationId;
  int? userId;

  RemoveOrganizationMember({this.organizationId, this.userId});
  RemoveOrganizationMember.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    userId = json['userId'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'organizationId': organizationId, 'userId': userId};

  createResponse() {}
  getTypeName() => "RemoveOrganizationMember";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/set", "POST")
class SetOrganizationMembers
    implements IReturn<SetOrganizationMembersResponse>, IPost, IConvertible {
  int? organizationId;
  List<String>? githubUserNames;
  List<String>? twitterUserNames;
  List<String>? emails;
  bool? removeUnspecifiedMembers;
  bool? isOwner;
  bool? isModerator;
  bool? denyPosts;
  bool? denyComments;
  bool? denyAll;

  SetOrganizationMembers(
      {this.organizationId,
      this.githubUserNames,
      this.twitterUserNames,
      this.emails,
      this.removeUnspecifiedMembers,
      this.isOwner,
      this.isModerator,
      this.denyPosts,
      this.denyComments,
      this.denyAll});
  SetOrganizationMembers.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    githubUserNames = JsonConverters.fromJson(
        json['githubUserNames'], 'List<String>', context!);
    twitterUserNames = JsonConverters.fromJson(
        json['twitterUserNames'], 'List<String>', context!);
    emails = JsonConverters.fromJson(json['emails'], 'List<String>', context!);
    removeUnspecifiedMembers = json['removeUnspecifiedMembers'];
    isOwner = json['isOwner'];
    isModerator = json['isModerator'];
    denyPosts = json['denyPosts'];
    denyComments = json['denyComments'];
    denyAll = json['denyAll'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'githubUserNames':
            JsonConverters.toJson(githubUserNames, 'List<String>', context!),
        'twitterUserNames':
            JsonConverters.toJson(twitterUserNames, 'List<String>', context!),
        'emails': JsonConverters.toJson(emails, 'List<String>', context!),
        'removeUnspecifiedMembers': removeUnspecifiedMembers,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll
      };

  createResponse() => SetOrganizationMembersResponse();
  getResponseTypeName() => "SetOrganizationMembersResponse";
  getTypeName() => "SetOrganizationMembers";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites", "GET")
class GetOrganizationMemberInvites
    implements
        IReturn<GetOrganizationMemberInvitesResponse>,
        IGet,
        IConvertible {
  int? organizationId;

  GetOrganizationMemberInvites({this.organizationId});
  GetOrganizationMemberInvites.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'organizationId': organizationId};

  createResponse() => GetOrganizationMemberInvitesResponse();
  getResponseTypeName() => "GetOrganizationMemberInvitesResponse";
  getTypeName() => "GetOrganizationMemberInvites";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites", "POST")
class RequestOrganizationMemberInvite
    implements
        IReturn<RequestOrganizationMemberInviteResponse>,
        IPost,
        IConvertible {
  int? organizationId;

  RequestOrganizationMemberInvite({this.organizationId});
  RequestOrganizationMemberInvite.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'organizationId': organizationId};

  createResponse() => RequestOrganizationMemberInviteResponse();
  getResponseTypeName() => "RequestOrganizationMemberInviteResponse";
  getTypeName() => "RequestOrganizationMemberInvite";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites/{UserId}", "PUT")
class UpdateOrganizationMemberInvite
    implements
        IReturn<UpdateOrganizationMemberInviteResponse>,
        IPut,
        IConvertible {
  int? organizationId;
  String? userName;
  bool? approve;
  bool? dismiss;

  UpdateOrganizationMemberInvite(
      {this.organizationId, this.userName, this.approve, this.dismiss});
  UpdateOrganizationMemberInvite.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    userName = json['userName'];
    approve = json['approve'];
    dismiss = json['dismiss'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userName': userName,
        'approve': approve,
        'dismiss': dismiss
      };

  createResponse() => UpdateOrganizationMemberInviteResponse();
  getResponseTypeName() => "UpdateOrganizationMemberInviteResponse";
  getTypeName() => "UpdateOrganizationMemberInvite";
  TypeContext? context = _ctx;
}

// @Route("/posts", "GET")
class QueryPosts extends QueryDb<Post>
    implements IReturn<QueryResponse<Post>>, IConvertible, IGet {
  List<int>? ids;
  int? organizationId;
  List<int>? organizationIds;
  List<String>? types;
  List<int>? anyTechnologyIds;
  List<String>? Is;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  QueryPosts(
      {this.ids,
      this.organizationId,
      this.organizationIds,
      this.types,
      this.anyTechnologyIds,
      this.Is,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  QueryPosts.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    ids = JsonConverters.fromJson(json['ids'], 'List<int>', context!);
    organizationId = json['organizationId'];
    organizationIds =
        JsonConverters.fromJson(json['organizationIds'], 'List<int>', context!);
    types = JsonConverters.fromJson(json['types'], 'List<String>', context!);
    anyTechnologyIds = JsonConverters.fromJson(
        json['anyTechnologyIds'], 'List<int>', context!);
    Is = JsonConverters.fromJson(json['is'], 'List<String>', context!);
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'ids': JsonConverters.toJson(ids, 'List<int>', context!),
      'organizationId': organizationId,
      'organizationIds':
          JsonConverters.toJson(organizationIds, 'List<int>', context!),
      'types': JsonConverters.toJson(types, 'List<String>', context!),
      'anyTechnologyIds':
          JsonConverters.toJson(anyTechnologyIds, 'List<int>', context!),
      'is': JsonConverters.toJson(Is, 'List<String>', context!),
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<Post>();
  getResponseTypeName() => "QueryResponse<Post>";
  getTypeName() => "QueryPosts";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}", "GET")
class GetPost implements IReturn<GetPostResponse>, IGet, IConvertible {
  int? id;
  String? include;

  GetPost({this.id, this.include});
  GetPost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    include = json['include'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'include': include};

  createResponse() => GetPostResponse();
  getResponseTypeName() => "GetPostResponse";
  getTypeName() => "GetPost";
  TypeContext? context = _ctx;
}

// @Route("/posts", "POST")
class CreatePost implements IReturn<CreatePostResponse>, IPost, IConvertible {
  int? organizationId;
  PostType? type;
  int? categoryId;
  String? title;
  String? url;
  String? imageUrl;
  String? content;
  bool? lock;
  List<int>? technologyIds;
  List<String>? labels;
  DateTime? fromDate;
  DateTime? toDate;
  String? metaType;
  String? meta;
  int? refId;
  String? refSource;
  String? refUrn;

  CreatePost(
      {this.organizationId,
      this.type,
      this.categoryId,
      this.title,
      this.url,
      this.imageUrl,
      this.content,
      this.lock,
      this.technologyIds,
      this.labels,
      this.fromDate,
      this.toDate,
      this.metaType,
      this.meta,
      this.refId,
      this.refSource,
      this.refUrn});
  CreatePost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    type = JsonConverters.fromJson(json['type'], 'PostType', context!);
    categoryId = json['categoryId'];
    title = json['title'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    content = json['content'];
    lock = json['lock'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    labels = JsonConverters.fromJson(json['labels'], 'List<String>', context!);
    fromDate = JsonConverters.fromJson(json['fromDate'], 'DateTime', context!);
    toDate = JsonConverters.fromJson(json['toDate'], 'DateTime', context!);
    metaType = json['metaType'];
    meta = json['meta'];
    refId = json['refId'];
    refSource = json['refSource'];
    refUrn = json['refUrn'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'type': JsonConverters.toJson(type, 'PostType', context!),
        'categoryId': categoryId,
        'title': title,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'lock': lock,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!),
        'labels': JsonConverters.toJson(labels, 'List<String>', context!),
        'fromDate': JsonConverters.toJson(fromDate, 'DateTime', context!),
        'toDate': JsonConverters.toJson(toDate, 'DateTime', context!),
        'metaType': metaType,
        'meta': meta,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
      };

  createResponse() => CreatePostResponse();
  getResponseTypeName() => "CreatePostResponse";
  getTypeName() => "CreatePost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}", "PUT")
class UpdatePost implements IReturn<UpdatePostResponse>, IPut, IConvertible {
  int? id;
  int? organizationId;
  PostType? type;
  int? categoryId;
  String? title;
  String? url;
  String? imageUrl;
  String? content;
  bool? lock;
  List<int>? technologyIds;
  List<String>? labels;
  DateTime? fromDate;
  DateTime? toDate;
  String? metaType;
  String? meta;

  UpdatePost(
      {this.id,
      this.organizationId,
      this.type,
      this.categoryId,
      this.title,
      this.url,
      this.imageUrl,
      this.content,
      this.lock,
      this.technologyIds,
      this.labels,
      this.fromDate,
      this.toDate,
      this.metaType,
      this.meta});
  UpdatePost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    organizationId = json['organizationId'];
    type = JsonConverters.fromJson(json['type'], 'PostType', context!);
    categoryId = json['categoryId'];
    title = json['title'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    content = json['content'];
    lock = json['lock'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    labels = JsonConverters.fromJson(json['labels'], 'List<String>', context!);
    fromDate = JsonConverters.fromJson(json['fromDate'], 'DateTime', context!);
    toDate = JsonConverters.fromJson(json['toDate'], 'DateTime', context!);
    metaType = json['metaType'];
    meta = json['meta'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'type': JsonConverters.toJson(type, 'PostType', context!),
        'categoryId': categoryId,
        'title': title,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'lock': lock,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!),
        'labels': JsonConverters.toJson(labels, 'List<String>', context!),
        'fromDate': JsonConverters.toJson(fromDate, 'DateTime', context!),
        'toDate': JsonConverters.toJson(toDate, 'DateTime', context!),
        'metaType': metaType,
        'meta': meta
      };

  createResponse() => UpdatePostResponse();
  getResponseTypeName() => "UpdatePostResponse";
  getTypeName() => "UpdatePost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}", "DELETE")
class DeletePost implements IReturn<DeletePostResponse>, IDelete, IConvertible {
  int? id;

  DeletePost({this.id});
  DeletePost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => DeletePostResponse();
  getResponseTypeName() => "DeletePostResponse";
  getTypeName() => "DeletePost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/lock", "PUT")
class LockPost implements IReturnVoid, IPut, IConvertible {
  int? id;
  bool? lock;
  String? reason;

  LockPost({this.id, this.lock, this.reason});
  LockPost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    lock = json['lock'];
    reason = json['reason'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'lock': lock, 'reason': reason};

  createResponse() {}
  getTypeName() => "LockPost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/hide", "PUT")
class HidePost implements IReturnVoid, IPut, IConvertible {
  int? id;
  bool? Hide;
  String? reason;

  HidePost({this.id, this.Hide, this.reason});
  HidePost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    Hide = json['hide'];
    reason = json['reason'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'hide': Hide, 'reason': reason};

  createResponse() {}
  getTypeName() => "HidePost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/status/{Status}", "PUT")
class ChangeStatusPost implements IReturnVoid, IPut, IConvertible {
  int? id;
  String? status;
  String? reason;

  ChangeStatusPost({this.id, this.status, this.reason});
  ChangeStatusPost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    reason = json['reason'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'status': status, 'reason': reason};

  createResponse() {}
  getTypeName() => "ChangeStatusPost";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/report/{Id}", "POST")
class ActionPostReport implements IReturnVoid, IPost, IConvertible {
  int? postId;
  int? id;
  ReportAction? reportAction;

  ActionPostReport({this.postId, this.id, this.reportAction});
  ActionPostReport.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    reportAction =
        JsonConverters.fromJson(json['reportAction'], 'ReportAction', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'id': id,
        'reportAction':
            JsonConverters.toJson(reportAction, 'ReportAction', context!)
      };

  createResponse() {}
  getTypeName() => "ActionPostReport";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments", "POST")
class CreatePostComment
    implements IReturn<CreatePostCommentResponse>, IPost, IConvertible {
  int? postId;
  int? replyId;
  String? content;

  CreatePostComment({this.postId, this.replyId, this.content});
  CreatePostComment.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    replyId = json['replyId'];
    content = json['content'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'postId': postId, 'replyId': replyId, 'content': content};

  createResponse() => CreatePostCommentResponse();
  getResponseTypeName() => "CreatePostCommentResponse";
  getTypeName() => "CreatePostComment";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "PUT")
class UpdatePostComment
    implements IReturn<UpdatePostCommentResponse>, IPut, IConvertible {
  int? id;
  int? postId;
  String? content;

  UpdatePostComment({this.id, this.postId, this.content});
  UpdatePostComment.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    content = json['content'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'postId': postId, 'content': content};

  createResponse() => UpdatePostCommentResponse();
  getResponseTypeName() => "UpdatePostCommentResponse";
  getTypeName() => "UpdatePostComment";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "DELETE")
class DeletePostComment
    implements IReturn<DeletePostCommentResponse>, IDelete, IConvertible {
  int? id;
  int? postId;

  DeletePostComment({this.id, this.postId});
  DeletePostComment.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'postId': postId};

  createResponse() => DeletePostCommentResponse();
  getResponseTypeName() => "DeletePostCommentResponse";
  getTypeName() => "DeletePostComment";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{PostCommentId}/report/{Id}", "POST")
class ActionPostCommentReport implements IReturnVoid, IPost, IConvertible {
  int? id;
  int? postCommentId;
  int? postId;
  ReportAction? reportAction;

  ActionPostCommentReport(
      {this.id, this.postCommentId, this.postId, this.reportAction});
  ActionPostCommentReport.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postCommentId = json['postCommentId'];
    postId = json['postId'];
    reportAction =
        JsonConverters.fromJson(json['reportAction'], 'ReportAction', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'postCommentId': postCommentId,
        'postId': postId,
        'reportAction':
            JsonConverters.toJson(reportAction, 'ReportAction', context!)
      };

  createResponse() {}
  getTypeName() => "ActionPostCommentReport";
  TypeContext? context = _ctx;
}

// @Route("/user/comments/votes")
class GetUserPostCommentVotes
    implements IReturn<GetUserPostCommentVotesResponse>, IGet, IConvertible {
  int? postId;

  GetUserPostCommentVotes({this.postId});
  GetUserPostCommentVotes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'postId': postId};

  createResponse() => GetUserPostCommentVotesResponse();
  getResponseTypeName() => "GetUserPostCommentVotesResponse";
  getTypeName() => "GetUserPostCommentVotes";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}/pin", "PUT")
class PinPostComment
    implements IReturn<PinPostCommentResponse>, IPut, IConvertible {
  int? id;
  int? postId;
  bool? pin;

  PinPostComment({this.id, this.postId, this.pin});
  PinPostComment.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    pin = json['pin'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'postId': postId, 'pin': pin};

  createResponse() => PinPostCommentResponse();
  getResponseTypeName() => "PinPostCommentResponse";
  getTypeName() => "PinPostComment";
  TypeContext? context = _ctx;
}

// @Route("/users/by-email")
class GetUsersByEmails
    implements IReturn<GetUsersByEmailsResponse>, IGet, IConvertible {
  List<String>? emails;

  GetUsersByEmails({this.emails});
  GetUsersByEmails.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    emails = JsonConverters.fromJson(json['emails'], 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'emails': JsonConverters.toJson(emails, 'List<String>', context!)};

  createResponse() => GetUsersByEmailsResponse();
  getResponseTypeName() => "GetUsersByEmailsResponse";
  getTypeName() => "GetUsersByEmails";
  TypeContext? context = _ctx;
}

// @Route("/user/posts/activity")
class GetUserPostActivity
    implements IReturn<GetUserPostActivityResponse>, IGet, IConvertible {
  GetUserPostActivity();
  GetUserPostActivity.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetUserPostActivityResponse();
  getResponseTypeName() => "GetUserPostActivityResponse";
  getTypeName() => "GetUserPostActivity";
  TypeContext? context = _ctx;
}

// @Route("/user/organizations")
class GetUserOrganizations
    implements IReturn<GetUserOrganizationsResponse>, IGet, IConvertible {
  GetUserOrganizations();
  GetUserOrganizations.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetUserOrganizationsResponse();
  getResponseTypeName() => "GetUserOrganizationsResponse";
  getTypeName() => "GetUserOrganizations";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/vote", "PUT")
class UserPostVote
    implements IReturn<UserPostVoteResponse>, IPut, IConvertible {
  int? id;
  int? weight;

  UserPostVote({this.id, this.weight});
  UserPostVote.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    weight = json['weight'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'weight': weight};

  createResponse() => UserPostVoteResponse();
  getResponseTypeName() => "UserPostVoteResponse";
  getTypeName() => "UserPostVote";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/favorite", "PUT")
class UserPostFavorite
    implements IReturn<UserPostFavoriteResponse>, IPut, IConvertible {
  int? id;

  UserPostFavorite({this.id});
  UserPostFavorite.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => UserPostFavoriteResponse();
  getResponseTypeName() => "UserPostFavoriteResponse";
  getTypeName() => "UserPostFavorite";
  TypeContext? context = _ctx;
}

// @Route("/posts/{Id}/report", "PUT")
class UserPostReport
    implements IReturn<UserPostReportResponse>, IPut, IConvertible {
  int? id;
  FlagType? flagType;
  String? reportNotes;

  UserPostReport({this.id, this.flagType, this.reportNotes});
  UserPostReport.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    flagType = JsonConverters.fromJson(json['flagType'], 'FlagType', context!);
    reportNotes = json['reportNotes'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'flagType': JsonConverters.toJson(flagType, 'FlagType', context!),
        'reportNotes': reportNotes
      };

  createResponse() => UserPostReportResponse();
  getResponseTypeName() => "UserPostReportResponse";
  getTypeName() => "UserPostReport";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "GET")
class UserPostCommentVote
    implements IReturn<UserPostCommentVoteResponse>, IGet, IConvertible {
  int? id;
  int? postId;
  int? weight;

  UserPostCommentVote({this.id, this.postId, this.weight});
  UserPostCommentVote.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    weight = json['weight'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'postId': postId, 'weight': weight};

  createResponse() => UserPostCommentVoteResponse();
  getResponseTypeName() => "UserPostCommentVoteResponse";
  getTypeName() => "UserPostCommentVote";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}/report", "PUT")
class UserPostCommentReport
    implements IReturn<UserPostCommentReportResponse>, IPut, IConvertible {
  int? id;
  int? postId;
  FlagType? flagType;
  String? reportNotes;

  UserPostCommentReport(
      {this.id, this.postId, this.flagType, this.reportNotes});
  UserPostCommentReport.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    postId = json['postId'];
    flagType = JsonConverters.fromJson(json['flagType'], 'FlagType', context!);
    reportNotes = json['reportNotes'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'flagType': JsonConverters.toJson(flagType, 'FlagType', context!),
        'reportNotes': reportNotes
      };

  createResponse() => UserPostCommentReportResponse();
  getResponseTypeName() => "UserPostCommentReportResponse";
  getTypeName() => "UserPostCommentReport";
  TypeContext? context = _ctx;
}

// @Route("/prerender/{**Path}", "PUT")
class StorePreRender implements IReturnVoid, IPut, IConvertible {
  String? path;
  Uint8List? requestStream;

  StorePreRender({this.path, this.requestStream});
  StorePreRender.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    path = json['path'];
    requestStream =
        JsonConverters.fromJson(json['requestStream'], 'Uint8List', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'path': path,
        'requestStream':
            JsonConverters.toJson(requestStream, 'Uint8List', context!)
      };

  createResponse() {}
  getTypeName() => "StorePreRender";
  TypeContext? context = _ctx;
}

// @Route("/prerender/{**Path}", "GET")
class GetPreRender implements IReturn<String>, IGet, IConvertible {
  String? path;

  GetPreRender({this.path});
  GetPreRender.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    path = json['path'];
    return this;
  }

  Map<String, dynamic> toJson() => {'path': path};

  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "GetPreRender";
  TypeContext? context = _ctx;
}

// @Route("/my-session")
// @ValidateRequest(Validator="IsAuthenticated")
class SessionInfo implements IReturn<SessionInfoResponse>, IGet, IConvertible {
  SessionInfo();
  SessionInfo.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => SessionInfoResponse();
  getResponseTypeName() => "SessionInfoResponse";
  getTypeName() => "SessionInfo";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/subscribe", "PUT")
class SubscribeToOrganization implements IReturnVoid, IPut, IConvertible {
  int? organizationId;
  List<PostType>? postTypes;
  Frequency? frequency;

  SubscribeToOrganization(
      {this.organizationId, this.postTypes, this.frequency});
  SubscribeToOrganization.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    postTypes =
        JsonConverters.fromJson(json['postTypes'], 'List<PostType>', context!);
    frequency =
        JsonConverters.fromJson(json['frequency'], 'Frequency', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'postTypes':
            JsonConverters.toJson(postTypes, 'List<PostType>', context!),
        'frequency': JsonConverters.toJson(frequency, 'Frequency', context!)
      };

  createResponse() {}
  getTypeName() => "SubscribeToOrganization";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/subscribe", "PUT")
class SubscribeToPost implements IReturnVoid, IPut, IConvertible {
  int? postId;

  SubscribeToPost({this.postId});
  SubscribeToPost.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'postId': postId};

  createResponse() {}
  getTypeName() => "SubscribeToPost";
  TypeContext? context = _ctx;
}

// @Route("/orgs/{OrganizationId}/subscribe", "DELETE")
class DeleteOrganizationSubscription
    implements IReturnVoid, IDelete, IConvertible {
  int? organizationId;

  DeleteOrganizationSubscription({this.organizationId});
  DeleteOrganizationSubscription.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    organizationId = json['organizationId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'organizationId': organizationId};

  createResponse() {}
  getTypeName() => "DeleteOrganizationSubscription";
  TypeContext? context = _ctx;
}

// @Route("/posts/{PostId}/subscribe", "DELETE")
class DeletePostSubscription implements IReturnVoid, IDelete, IConvertible {
  int? postId;

  DeletePostSubscription({this.postId});
  DeletePostSubscription.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'postId': postId};

  createResponse() {}
  getTypeName() => "DeletePostSubscription";
  TypeContext? context = _ctx;
}

// @Route("/technology/{Slug}/previous-versions", "GET")
class GetTechnologyPreviousVersions
    implements
        IReturn<GetTechnologyPreviousVersionsResponse>,
        IGet,
        IConvertible {
  String? slug;

  GetTechnologyPreviousVersions({this.slug});
  GetTechnologyPreviousVersions.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyPreviousVersionsResponse();
  getResponseTypeName() => "GetTechnologyPreviousVersionsResponse";
  getTypeName() => "GetTechnologyPreviousVersions";
  TypeContext? context = _ctx;
}

// @Route("/technology", "GET")
class GetAllTechnologies
    implements IReturn<GetAllTechnologiesResponse>, IGet, IConvertible {
  GetAllTechnologies();
  GetAllTechnologies.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetAllTechnologiesResponse();
  getResponseTypeName() => "GetAllTechnologiesResponse";
  getTypeName() => "GetAllTechnologies";
  TypeContext? context = _ctx;
}

// @Route("/technology/search")
// @AutoQueryViewer(DefaultSearchField="Tier", DefaultSearchText="Data", DefaultSearchType="=", Description="Explore different Technologies", IconUrl="octicon:database", Title="Find Technologies")
class FindTechnologies extends QueryDb2<Technology, TechnologyView>
    implements IReturn<QueryResponse<TechnologyView>>, IConvertible, IGet {
  List<int>? ids;
  String? name;
  String? vendorName;
  String? nameContains;
  String? vendorNameContains;
  String? descriptionContains;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  FindTechnologies(
      {this.ids,
      this.name,
      this.vendorName,
      this.nameContains,
      this.vendorNameContains,
      this.descriptionContains,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  FindTechnologies.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    ids = JsonConverters.fromJson(json['ids'], 'List<int>', context!);
    name = json['name'];
    vendorName = json['vendorName'];
    nameContains = json['nameContains'];
    vendorNameContains = json['vendorNameContains'];
    descriptionContains = json['descriptionContains'];
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'ids': JsonConverters.toJson(ids, 'List<int>', context!),
      'name': name,
      'vendorName': vendorName,
      'nameContains': nameContains,
      'vendorNameContains': vendorNameContains,
      'descriptionContains': descriptionContains,
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<TechnologyView>();
  getResponseTypeName() => "QueryResponse<TechnologyView>";
  getTypeName() => "FindTechnologies";
  TypeContext? context = _ctx;
}

// @Route("/technology/query")
class QueryTechnology extends QueryDb2<Technology, TechnologyView>
    implements IReturn<QueryResponse<TechnologyView>>, IConvertible, IGet {
  List<int>? ids;
  String? name;
  String? vendorName;
  String? nameContains;
  String? vendorNameContains;
  String? descriptionContains;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  QueryTechnology(
      {this.ids,
      this.name,
      this.vendorName,
      this.nameContains,
      this.vendorNameContains,
      this.descriptionContains,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  QueryTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    ids = JsonConverters.fromJson(json['ids'], 'List<int>', context!);
    name = json['name'];
    vendorName = json['vendorName'];
    nameContains = json['nameContains'];
    vendorNameContains = json['vendorNameContains'];
    descriptionContains = json['descriptionContains'];
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'ids': JsonConverters.toJson(ids, 'List<int>', context!),
      'name': name,
      'vendorName': vendorName,
      'nameContains': nameContains,
      'vendorNameContains': vendorNameContains,
      'descriptionContains': descriptionContains,
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<TechnologyView>();
  getResponseTypeName() => "QueryResponse<TechnologyView>";
  getTypeName() => "QueryTechnology";
  TypeContext? context = _ctx;
}

// @Route("/technology/{Slug}")
class GetTechnology
    implements
        IReturn<GetTechnologyResponse>,
        IRegisterStats,
        IGet,
        IConvertible {
  String? slug;

  GetTechnology({this.slug});
  GetTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyResponse();
  getResponseTypeName() => "GetTechnologyResponse";
  getTypeName() => "GetTechnology";
  TypeContext? context = _ctx;
}

// @Route("/technology/{Slug}/favorites")
class GetTechnologyFavoriteDetails
    implements
        IReturn<GetTechnologyFavoriteDetailsResponse>,
        IGet,
        IConvertible {
  String? slug;

  GetTechnologyFavoriteDetails({this.slug});
  GetTechnologyFavoriteDetails.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyFavoriteDetailsResponse();
  getResponseTypeName() => "GetTechnologyFavoriteDetailsResponse";
  getTypeName() => "GetTechnologyFavoriteDetails";
  TypeContext? context = _ctx;
}

// @Route("/technology", "POST")
class CreateTechnology
    implements IReturn<CreateTechnologyResponse>, IPost, IConvertible {
  String? name;
  String? slug;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  bool? isLocked;
  TechnologyTier? tier;

  CreateTechnology(
      {this.name,
      this.slug,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.isLocked,
      this.tier});
  CreateTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!)
      };

  createResponse() => CreateTechnologyResponse();
  getResponseTypeName() => "CreateTechnologyResponse";
  getTypeName() => "CreateTechnology";
  TypeContext? context = _ctx;
}

// @Route("/technology/{Id}", "PUT")
class UpdateTechnology
    implements IReturn<UpdateTechnologyResponse>, IPut, IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? vendorUrl;
  String? productUrl;
  String? logoUrl;
  String? description;
  bool? isLocked;
  TechnologyTier? tier;

  UpdateTechnology(
      {this.id,
      this.name,
      this.vendorName,
      this.vendorUrl,
      this.productUrl,
      this.logoUrl,
      this.description,
      this.isLocked,
      this.tier});
  UpdateTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    vendorUrl = json['vendorUrl'];
    productUrl = json['productUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
    isLocked = json['isLocked'];
    tier = JsonConverters.fromJson(json['tier'], 'TechnologyTier', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier, 'TechnologyTier', context!)
      };

  createResponse() => UpdateTechnologyResponse();
  getResponseTypeName() => "UpdateTechnologyResponse";
  getTypeName() => "UpdateTechnology";
  TypeContext? context = _ctx;
}

// @Route("/technology/{Id}", "DELETE")
class DeleteTechnology
    implements IReturn<DeleteTechnologyResponse>, IDelete, IConvertible {
  int? id;

  DeleteTechnology({this.id});
  DeleteTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => DeleteTechnologyResponse();
  getResponseTypeName() => "DeleteTechnologyResponse";
  getTypeName() => "DeleteTechnology";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/{Slug}/previous-versions", "GET")
class GetTechnologyStackPreviousVersions
    implements
        IReturn<GetTechnologyStackPreviousVersionsResponse>,
        IGet,
        IConvertible {
  String? slug;

  GetTechnologyStackPreviousVersions({this.slug});
  GetTechnologyStackPreviousVersions.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyStackPreviousVersionsResponse();
  getResponseTypeName() => "GetTechnologyStackPreviousVersionsResponse";
  getTypeName() => "GetTechnologyStackPreviousVersions";
  TypeContext? context = _ctx;
}

// @Route("/pagestats/{Type}/{Slug}")
class GetPageStats
    implements IReturn<GetPageStatsResponse>, IGet, IConvertible {
  String? type;
  String? slug;
  int? id;

  GetPageStats({this.type, this.slug, this.id});
  GetPageStats.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    type = json['type'];
    slug = json['slug'];
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'type': type, 'slug': slug, 'id': id};

  createResponse() => GetPageStatsResponse();
  getResponseTypeName() => "GetPageStatsResponse";
  getTypeName() => "GetPageStats";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/search")
// @AutoQueryViewer(DefaultSearchField="Description", DefaultSearchText="ServiceStack", DefaultSearchType="Contains", Description="Explore different Technology Stacks", IconUrl="material-icons:cloud", Title="Find Technology Stacks")
class FindTechStacks extends QueryDb2<TechnologyStack, TechnologyStackView>
    implements IReturn<QueryResponse<TechnologyStackView>>, IConvertible, IGet {
  List<int>? ids;
  String? name;
  String? vendorName;
  String? nameContains;
  String? vendorNameContains;
  String? descriptionContains;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  FindTechStacks(
      {this.ids,
      this.name,
      this.vendorName,
      this.nameContains,
      this.vendorNameContains,
      this.descriptionContains,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  FindTechStacks.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    ids = JsonConverters.fromJson(json['ids'], 'List<int>', context!);
    name = json['name'];
    vendorName = json['vendorName'];
    nameContains = json['nameContains'];
    vendorNameContains = json['vendorNameContains'];
    descriptionContains = json['descriptionContains'];
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'ids': JsonConverters.toJson(ids, 'List<int>', context!),
      'name': name,
      'vendorName': vendorName,
      'nameContains': nameContains,
      'vendorNameContains': vendorNameContains,
      'descriptionContains': descriptionContains,
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<TechnologyStackView>();
  getResponseTypeName() => "QueryResponse<TechnologyStackView>";
  getTypeName() => "FindTechStacks";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/query")
class QueryTechStacks extends QueryDb2<TechnologyStack, TechnologyStackView>
    implements IReturn<QueryResponse<TechnologyStackView>>, IConvertible, IGet {
  List<int>? ids;
  String? name;
  String? vendorName;
  String? nameContains;
  String? vendorNameContains;
  String? descriptionContains;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  QueryTechStacks(
      {this.ids,
      this.name,
      this.vendorName,
      this.nameContains,
      this.vendorNameContains,
      this.descriptionContains,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  QueryTechStacks.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    ids = JsonConverters.fromJson(json['ids'], 'List<int>', context!);
    name = json['name'];
    vendorName = json['vendorName'];
    nameContains = json['nameContains'];
    vendorNameContains = json['vendorNameContains'];
    descriptionContains = json['descriptionContains'];
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'ids': JsonConverters.toJson(ids, 'List<int>', context!),
      'name': name,
      'vendorName': vendorName,
      'nameContains': nameContains,
      'vendorNameContains': vendorNameContains,
      'descriptionContains': descriptionContains,
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<TechnologyStackView>();
  getResponseTypeName() => "QueryResponse<TechnologyStackView>";
  getTypeName() => "QueryTechStacks";
  TypeContext? context = _ctx;
}

// @Route("/overview")
class Overview implements IReturn<OverviewResponse>, IGet, IConvertible {
  bool? reload;

  Overview({this.reload});
  Overview.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    reload = json['reload'];
    return this;
  }

  Map<String, dynamic> toJson() => {'reload': reload};

  createResponse() => OverviewResponse();
  getResponseTypeName() => "OverviewResponse";
  getTypeName() => "Overview";
  TypeContext? context = _ctx;
}

// @Route("/app-overview")
class AppOverview implements IReturn<AppOverviewResponse>, IGet, IConvertible {
  bool? reload;

  AppOverview({this.reload});
  AppOverview.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    reload = json['reload'];
    return this;
  }

  Map<String, dynamic> toJson() => {'reload': reload};

  createResponse() => AppOverviewResponse();
  getResponseTypeName() => "AppOverviewResponse";
  getTypeName() => "AppOverview";
  TypeContext? context = _ctx;
}

// @Route("/techstacks", "GET")
class GetAllTechnologyStacks
    implements IReturn<GetAllTechnologyStacksResponse>, IGet, IConvertible {
  GetAllTechnologyStacks();
  GetAllTechnologyStacks.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetAllTechnologyStacksResponse();
  getResponseTypeName() => "GetAllTechnologyStacksResponse";
  getTypeName() => "GetAllTechnologyStacks";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/{Slug}", "GET")
class GetTechnologyStack
    implements
        IReturn<GetTechnologyStackResponse>,
        IRegisterStats,
        IGet,
        IConvertible {
  String? slug;

  GetTechnologyStack({this.slug});
  GetTechnologyStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyStackResponse();
  getResponseTypeName() => "GetTechnologyStackResponse";
  getTypeName() => "GetTechnologyStack";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/{Slug}/favorites")
class GetTechnologyStackFavoriteDetails
    implements
        IReturn<GetTechnologyStackFavoriteDetailsResponse>,
        IGet,
        IConvertible {
  String? slug;

  GetTechnologyStackFavoriteDetails({this.slug});
  GetTechnologyStackFavoriteDetails.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    slug = json['slug'];
    return this;
  }

  Map<String, dynamic> toJson() => {'slug': slug};

  createResponse() => GetTechnologyStackFavoriteDetailsResponse();
  getResponseTypeName() => "GetTechnologyStackFavoriteDetailsResponse";
  getTypeName() => "GetTechnologyStackFavoriteDetails";
  TypeContext? context = _ctx;
}

// @Route("/config")
class GetConfig implements IReturn<GetConfigResponse>, IGet, IConvertible {
  GetConfig();
  GetConfig.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetConfigResponse();
  getResponseTypeName() => "GetConfigResponse";
  getTypeName() => "GetConfig";
  TypeContext? context = _ctx;
}

// @Route("/techstacks", "POST")
class CreateTechnologyStack
    implements IReturn<CreateTechnologyStackResponse>, IPost, IConvertible {
  String? name;
  String? slug;
  String? vendorName;
  String? appUrl;
  String? screenshotUrl;
  String? description;
  String? details;
  bool? isLocked;
  List<int>? technologyIds;

  CreateTechnologyStack(
      {this.name,
      this.slug,
      this.vendorName,
      this.appUrl,
      this.screenshotUrl,
      this.description,
      this.details,
      this.isLocked,
      this.technologyIds});
  CreateTechnologyStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    vendorName = json['vendorName'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    description = json['description'];
    details = json['details'];
    isLocked = json['isLocked'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'vendorName': vendorName,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'description': description,
        'details': details,
        'isLocked': isLocked,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!)
      };

  createResponse() => CreateTechnologyStackResponse();
  getResponseTypeName() => "CreateTechnologyStackResponse";
  getTypeName() => "CreateTechnologyStack";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/{Id}", "PUT")
class UpdateTechnologyStack
    implements IReturn<UpdateTechnologyStackResponse>, IPut, IConvertible {
  int? id;
  String? name;
  String? vendorName;
  String? appUrl;
  String? screenshotUrl;
  String? description;
  String? details;
  bool? isLocked;
  List<int>? technologyIds;

  UpdateTechnologyStack(
      {this.id,
      this.name,
      this.vendorName,
      this.appUrl,
      this.screenshotUrl,
      this.description,
      this.details,
      this.isLocked,
      this.technologyIds});
  UpdateTechnologyStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    vendorName = json['vendorName'];
    appUrl = json['appUrl'];
    screenshotUrl = json['screenshotUrl'];
    description = json['description'];
    details = json['details'];
    isLocked = json['isLocked'];
    technologyIds =
        JsonConverters.fromJson(json['technologyIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'description': description,
        'details': details,
        'isLocked': isLocked,
        'technologyIds':
            JsonConverters.toJson(technologyIds, 'List<int>', context!)
      };

  createResponse() => UpdateTechnologyStackResponse();
  getResponseTypeName() => "UpdateTechnologyStackResponse";
  getTypeName() => "UpdateTechnologyStack";
  TypeContext? context = _ctx;
}

// @Route("/techstacks/{Id}", "DELETE")
class DeleteTechnologyStack
    implements IReturn<DeleteTechnologyStackResponse>, IDelete, IConvertible {
  int? id;

  DeleteTechnologyStack({this.id});
  DeleteTechnologyStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id};

  createResponse() => DeleteTechnologyStackResponse();
  getResponseTypeName() => "DeleteTechnologyStackResponse";
  getTypeName() => "DeleteTechnologyStack";
  TypeContext? context = _ctx;
}

// @Route("/favorites/techtacks", "GET")
class GetFavoriteTechStack
    implements IReturn<GetFavoriteTechStackResponse>, IGet, IConvertible {
  int? technologyStackId;

  GetFavoriteTechStack({this.technologyStackId});
  GetFavoriteTechStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyStackId = json['technologyStackId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyStackId': technologyStackId};

  createResponse() => GetFavoriteTechStackResponse();
  getResponseTypeName() => "GetFavoriteTechStackResponse";
  getTypeName() => "GetFavoriteTechStack";
  TypeContext? context = _ctx;
}

// @Route("/favorites/techtacks/{TechnologyStackId}", "PUT")
class AddFavoriteTechStack
    implements IReturn<FavoriteTechStackResponse>, IPut, IConvertible {
  int? technologyStackId;

  AddFavoriteTechStack({this.technologyStackId});
  AddFavoriteTechStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyStackId = json['technologyStackId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyStackId': technologyStackId};

  createResponse() => FavoriteTechStackResponse();
  getResponseTypeName() => "FavoriteTechStackResponse";
  getTypeName() => "AddFavoriteTechStack";
  TypeContext? context = _ctx;
}

// @Route("/favorites/techtacks/{TechnologyStackId}", "DELETE")
class RemoveFavoriteTechStack
    implements IReturn<FavoriteTechStackResponse>, IDelete, IConvertible {
  int? technologyStackId;

  RemoveFavoriteTechStack({this.technologyStackId});
  RemoveFavoriteTechStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyStackId = json['technologyStackId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyStackId': technologyStackId};

  createResponse() => FavoriteTechStackResponse();
  getResponseTypeName() => "FavoriteTechStackResponse";
  getTypeName() => "RemoveFavoriteTechStack";
  TypeContext? context = _ctx;
}

// @Route("/favorites/technology", "GET")
class GetFavoriteTechnologies
    implements IReturn<GetFavoriteTechnologiesResponse>, IGet, IConvertible {
  int? technologyId;

  GetFavoriteTechnologies({this.technologyId});
  GetFavoriteTechnologies.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyId': technologyId};

  createResponse() => GetFavoriteTechnologiesResponse();
  getResponseTypeName() => "GetFavoriteTechnologiesResponse";
  getTypeName() => "GetFavoriteTechnologies";
  TypeContext? context = _ctx;
}

// @Route("/favorites/technology/{TechnologyId}", "PUT")
class AddFavoriteTechnology
    implements IReturn<FavoriteTechnologyResponse>, IPut, IConvertible {
  int? technologyId;

  AddFavoriteTechnology({this.technologyId});
  AddFavoriteTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyId': technologyId};

  createResponse() => FavoriteTechnologyResponse();
  getResponseTypeName() => "FavoriteTechnologyResponse";
  getTypeName() => "AddFavoriteTechnology";
  TypeContext? context = _ctx;
}

// @Route("/favorites/technology/{TechnologyId}", "DELETE")
class RemoveFavoriteTechnology
    implements IReturn<FavoriteTechnologyResponse>, IDelete, IConvertible {
  int? technologyId;

  RemoveFavoriteTechnology({this.technologyId});
  RemoveFavoriteTechnology.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'technologyId': technologyId};

  createResponse() => FavoriteTechnologyResponse();
  getResponseTypeName() => "FavoriteTechnologyResponse";
  getTypeName() => "RemoveFavoriteTechnology";
  TypeContext? context = _ctx;
}

// @Route("/my-feed")
// @ValidateRequest(Validator="IsAuthenticated")
class GetUserFeed implements IReturn<GetUserFeedResponse>, IGet, IConvertible {
  GetUserFeed();
  GetUserFeed.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => GetUserFeedResponse();
  getResponseTypeName() => "GetUserFeedResponse";
  getTypeName() => "GetUserFeed";
  TypeContext? context = _ctx;
}

// @Route("/users/karma", "GET")
class GetUsersKarma
    implements IReturn<GetUsersKarmaResponse>, IGet, IConvertible {
  List<int>? userIds;

  GetUsersKarma({this.userIds});
  GetUsersKarma.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userIds = JsonConverters.fromJson(json['userIds'], 'List<int>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'userIds': JsonConverters.toJson(userIds, 'List<int>', context!)};

  createResponse() => GetUsersKarmaResponse();
  getResponseTypeName() => "GetUsersKarmaResponse";
  getTypeName() => "GetUsersKarma";
  TypeContext? context = _ctx;
}

// @Route("/userinfo/{Id}")
class GetUserInfo implements IReturn<GetUserInfoResponse>, IGet, IConvertible {
  int? id;
  String? userName;

  GetUserInfo({this.id, this.userName});
  GetUserInfo.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    return this;
  }

  Map<String, dynamic> toJson() => {'id': id, 'userName': userName};

  createResponse() => GetUserInfoResponse();
  getResponseTypeName() => "GetUserInfoResponse";
  getTypeName() => "GetUserInfo";
  TypeContext? context = _ctx;
}

// @Route("/users/{UserId}/avatar", "GET")
class UserAvatar implements IGet, IConvertible {
  int? userId;

  UserAvatar({this.userId});
  UserAvatar.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userId = json['userId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'userId': userId};

  getTypeName() => "UserAvatar";
  TypeContext? context = _ctx;
}

// @Route("/mq/start")
class MqStart implements IReturn<String>, IConvertible, IPost {
  MqStart();
  MqStart.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "MqStart";
  TypeContext? context = _ctx;
}

// @Route("/mq/stop")
class MqStop implements IReturn<String>, IConvertible, IPost {
  MqStop();
  MqStop.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "MqStop";
  TypeContext? context = _ctx;
}

// @Route("/mq/stats")
class MqStats implements IReturn<String>, IConvertible, IPost {
  MqStats();
  MqStats.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "MqStats";
  TypeContext? context = _ctx;
}

// @Route("/mq/status")
class MqStatus implements IReturn<String>, IConvertible, IPost {
  MqStatus();
  MqStatus.fromJson(Map<String, dynamic> json) : super();
  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};
  createResponse() => "";
  getResponseTypeName() => "String";
  getTypeName() => "MqStatus";
  TypeContext? context = _ctx;
}

// @Route("/admin/technology/{TechnologyId}/logo")
class LogoUrlApproval
    implements IReturn<LogoUrlApprovalResponse>, IPut, IConvertible {
  int? technologyId;
  bool? approved;

  LogoUrlApproval({this.technologyId, this.approved});
  LogoUrlApproval.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    approved = json['approved'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'technologyId': technologyId, 'approved': approved};

  createResponse() => LogoUrlApprovalResponse();
  getResponseTypeName() => "LogoUrlApprovalResponse";
  getTypeName() => "LogoUrlApproval";
  TypeContext? context = _ctx;
}

/**
* Limit updates to TechStack to Owner or Admin users
*/
// @Route("/admin/techstacks/{TechnologyStackId}/lock")
class LockTechStack implements IReturn<LockStackResponse>, IPut, IConvertible {
  // @Validate(Validator="GreaterThan(0)")
  int? technologyStackId;

  bool? isLocked;

  LockTechStack({this.technologyStackId, this.isLocked});
  LockTechStack.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyStackId = json['technologyStackId'];
    isLocked = json['isLocked'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'technologyStackId': technologyStackId, 'isLocked': isLocked};

  createResponse() => LockStackResponse();
  getResponseTypeName() => "LockStackResponse";
  getTypeName() => "LockTechStack";
  TypeContext? context = _ctx;
}

/**
* Limit updates to Technology to Owner or Admin users
*/
// @Route("/admin/technology/{TechnologyId}/lock")
// @Api(Description="Limit updates to Technology to Owner or Admin users")
class LockTech implements IReturn<LockStackResponse>, IPut, IConvertible {
  // @Validate(Validator="GreaterThan(0)")
  int? technologyId;

  bool? isLocked;

  LockTech({this.technologyId, this.isLocked});
  LockTech.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    technologyId = json['technologyId'];
    isLocked = json['isLocked'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'technologyId': technologyId, 'isLocked': isLocked};

  createResponse() => LockStackResponse();
  getResponseTypeName() => "LockStackResponse";
  getTypeName() => "LockTech";
  TypeContext? context = _ctx;
}

class DummyTypes implements IConvertible, IPost {
  List<Post>? post;

  DummyTypes({this.post});
  DummyTypes.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    post = JsonConverters.fromJson(json['post'], 'List<Post>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'post': JsonConverters.toJson(post, 'List<Post>', context!)};

  getTypeName() => "DummyTypes";
  TypeContext? context = _ctx;
}

// @Route("/email/post/{PostId}")
// @ValidateRequest(Validator="IsAdmin")
class EmailTest implements IReturn<EmailTestResponse>, IConvertible, IPost {
  int? postId;

  EmailTest({this.postId});
  EmailTest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    postId = json['postId'];
    return this;
  }

  Map<String, dynamic> toJson() => {'postId': postId};

  createResponse() => EmailTestResponse();
  getResponseTypeName() => "EmailTestResponse";
  getTypeName() => "EmailTest";
  TypeContext? context = _ctx;
}

// @Route("/posts/comment", "GET")
class QueryPostComments extends QueryDb<PostComment>
    implements IReturn<QueryResponse<PostComment>>, IConvertible, IGet {
  int? id;
  int? userId;
  int? postId;
  String? contentContains;
  int? upVotesAbove;
  int? upVotesBelow;
  int? downVotesAbove;
  int? downVotes;
  int? favoritesAbove;
  int? favoritesBelow;
  int? wordCountAbove;
  int? wordCountBelow;
  int? reportCountAbove;
  int? reportCountBelow;
  // @DataMember(Order=1)
  int? skip;

  // @DataMember(Order=2)
  int? take;

  // @DataMember(Order=3)
  String? orderBy;

  // @DataMember(Order=4)
  String? orderByDesc;

  // @DataMember(Order=5)
  String? include;

  // @DataMember(Order=6)
  String? fields;

  // @DataMember(Order=7)
  Map<String, String?>? meta;

  QueryPostComments(
      {this.id,
      this.userId,
      this.postId,
      this.contentContains,
      this.upVotesAbove,
      this.upVotesBelow,
      this.downVotesAbove,
      this.downVotes,
      this.favoritesAbove,
      this.favoritesBelow,
      this.wordCountAbove,
      this.wordCountBelow,
      this.reportCountAbove,
      this.reportCountBelow,
      this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});
  QueryPostComments.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    super.fromMap(json);
    id = json['id'];
    userId = json['userId'];
    postId = json['postId'];
    contentContains = json['contentContains'];
    upVotesAbove = json['upVotesAbove'];
    upVotesBelow = json['upVotesBelow'];
    downVotesAbove = json['downVotesAbove'];
    downVotes = json['downVotes'];
    favoritesAbove = json['favoritesAbove'];
    favoritesBelow = json['favoritesBelow'];
    wordCountAbove = json['wordCountAbove'];
    wordCountBelow = json['wordCountBelow'];
    reportCountAbove = json['reportCountAbove'];
    reportCountBelow = json['reportCountBelow'];
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson()
    ..addAll({
      'id': id,
      'userId': userId,
      'postId': postId,
      'contentContains': contentContains,
      'upVotesAbove': upVotesAbove,
      'upVotesBelow': upVotesBelow,
      'downVotesAbove': downVotesAbove,
      'downVotes': downVotes,
      'favoritesAbove': favoritesAbove,
      'favoritesBelow': favoritesBelow,
      'wordCountAbove': wordCountAbove,
      'wordCountBelow': wordCountBelow,
      'reportCountAbove': reportCountAbove,
      'reportCountBelow': reportCountBelow,
      'skip': skip,
      'take': take,
      'orderBy': orderBy,
      'orderByDesc': orderByDesc,
      'include': include,
      'fields': fields,
      'meta': meta
    });

  createResponse() => QueryResponse<PostComment>();
  getResponseTypeName() => "QueryResponse<PostComment>";
  getTypeName() => "QueryPostComments";
  TypeContext? context = _ctx;
}

TypeContext _ctx =
    TypeContext(library: 'techstacks.io', types: <String, TypeInfo>{
  'PostType': TypeInfo(TypeOf.Enum, enumValues: PostType.values),
  'Post': TypeInfo(TypeOf.Class, create: () => Post()),
  'ReportAction': TypeInfo(TypeOf.Enum, enumValues: ReportAction.values),
  'FlagType': TypeInfo(TypeOf.Enum, enumValues: FlagType.values),
  'Frequency': TypeInfo(TypeOf.Enum, enumValues: Frequency.values),
  'TechnologyTier': TypeInfo(TypeOf.Enum, enumValues: TechnologyTier.values),
  'TechnologyBase': TypeInfo(TypeOf.AbstractClass),
  'Technology': TypeInfo(TypeOf.Class, create: () => Technology()),
  'TechnologyView': TypeInfo(TypeOf.Class, create: () => TechnologyView()),
  'IRegisterStats': TypeInfo(TypeOf.Interface),
  'TechnologyStackBase': TypeInfo(TypeOf.AbstractClass),
  'TechnologyStack': TypeInfo(TypeOf.Class, create: () => TechnologyStack()),
  'TechnologyStackView':
      TypeInfo(TypeOf.Class, create: () => TechnologyStackView()),
  'PostComment': TypeInfo(TypeOf.Class, create: () => PostComment()),
  'Organization': TypeInfo(TypeOf.Class, create: () => Organization()),
  'OrganizationLabel':
      TypeInfo(TypeOf.Class, create: () => OrganizationLabel()),
  'Category': TypeInfo(TypeOf.Class, create: () => Category()),
  'OrganizationMember':
      TypeInfo(TypeOf.Class, create: () => OrganizationMember()),
  'OrganizationMemberInvite':
      TypeInfo(TypeOf.Class, create: () => OrganizationMemberInvite()),
  'PostReportInfo': TypeInfo(TypeOf.Class, create: () => PostReportInfo()),
  'PostCommentReportInfo':
      TypeInfo(TypeOf.Class, create: () => PostCommentReportInfo()),
  'UserRef': TypeInfo(TypeOf.Class, create: () => UserRef()),
  'OrganizationSubscription':
      TypeInfo(TypeOf.Class, create: () => OrganizationSubscription()),
  'UserActivity': TypeInfo(TypeOf.Class, create: () => UserActivity()),
  'TechnologyHistory':
      TypeInfo(TypeOf.Class, create: () => TechnologyHistory()),
  'TechnologyStackHistory':
      TypeInfo(TypeOf.Class, create: () => TechnologyStackHistory()),
  'UserInfo': TypeInfo(TypeOf.Class, create: () => UserInfo()),
  'TechnologyInfo': TypeInfo(TypeOf.Class, create: () => TechnologyInfo()),
  'TechnologyInStack':
      TypeInfo(TypeOf.Class, create: () => TechnologyInStack()),
  'TechStackDetails': TypeInfo(TypeOf.Class, create: () => TechStackDetails()),
  'List<TechnologyInStack>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyInStack>[]),
  'LabelInfo': TypeInfo(TypeOf.Class, create: () => LabelInfo()),
  'CategoryInfo': TypeInfo(TypeOf.Class, create: () => CategoryInfo()),
  'OrganizationInfo': TypeInfo(TypeOf.Class, create: () => OrganizationInfo()),
  'List<LabelInfo>': TypeInfo(TypeOf.Class, create: () => <LabelInfo>[]),
  'List<CategoryInfo>': TypeInfo(TypeOf.Class, create: () => <CategoryInfo>[]),
  'Option': TypeInfo(TypeOf.Class, create: () => Option()),
  'HelloResponse': TypeInfo(TypeOf.Class, create: () => HelloResponse()),
  'GetOrganizationResponse':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationResponse()),
  'List<OrganizationLabel>':
      TypeInfo(TypeOf.Class, create: () => <OrganizationLabel>[]),
  'List<Category>': TypeInfo(TypeOf.Class, create: () => <Category>[]),
  'List<OrganizationMember>':
      TypeInfo(TypeOf.Class, create: () => <OrganizationMember>[]),
  'GetOrganizationMembersResponse':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationMembersResponse()),
  'GetOrganizationAdminResponse':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationAdminResponse()),
  'List<OrganizationMemberInvite>':
      TypeInfo(TypeOf.Class, create: () => <OrganizationMemberInvite>[]),
  'List<PostReportInfo>':
      TypeInfo(TypeOf.Class, create: () => <PostReportInfo>[]),
  'List<PostCommentReportInfo>':
      TypeInfo(TypeOf.Class, create: () => <PostCommentReportInfo>[]),
  'CreateOrganizationForTechnologyResponse': TypeInfo(TypeOf.Class,
      create: () => CreateOrganizationForTechnologyResponse()),
  'CreateOrganizationResponse':
      TypeInfo(TypeOf.Class, create: () => CreateOrganizationResponse()),
  'UpdateOrganizationResponse':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationResponse()),
  'OrganizationLabelResponse':
      TypeInfo(TypeOf.Class, create: () => OrganizationLabelResponse()),
  'AddOrganizationCategoryResponse':
      TypeInfo(TypeOf.Class, create: () => AddOrganizationCategoryResponse()),
  'UpdateOrganizationCategoryResponse': TypeInfo(TypeOf.Class,
      create: () => UpdateOrganizationCategoryResponse()),
  'AddOrganizationMemberResponse':
      TypeInfo(TypeOf.Class, create: () => AddOrganizationMemberResponse()),
  'UpdateOrganizationMemberResponse':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationMemberResponse()),
  'SetOrganizationMembersResponse':
      TypeInfo(TypeOf.Class, create: () => SetOrganizationMembersResponse()),
  'GetOrganizationMemberInvitesResponse': TypeInfo(TypeOf.Class,
      create: () => GetOrganizationMemberInvitesResponse()),
  'RequestOrganizationMemberInviteResponse': TypeInfo(TypeOf.Class,
      create: () => RequestOrganizationMemberInviteResponse()),
  'UpdateOrganizationMemberInviteResponse': TypeInfo(TypeOf.Class,
      create: () => UpdateOrganizationMemberInviteResponse()),
  'GetPostResponse': TypeInfo(TypeOf.Class, create: () => GetPostResponse()),
  'List<PostComment>': TypeInfo(TypeOf.Class, create: () => <PostComment>[]),
  'CreatePostResponse':
      TypeInfo(TypeOf.Class, create: () => CreatePostResponse()),
  'UpdatePostResponse':
      TypeInfo(TypeOf.Class, create: () => UpdatePostResponse()),
  'DeletePostResponse':
      TypeInfo(TypeOf.Class, create: () => DeletePostResponse()),
  'CreatePostCommentResponse':
      TypeInfo(TypeOf.Class, create: () => CreatePostCommentResponse()),
  'UpdatePostCommentResponse':
      TypeInfo(TypeOf.Class, create: () => UpdatePostCommentResponse()),
  'DeletePostCommentResponse':
      TypeInfo(TypeOf.Class, create: () => DeletePostCommentResponse()),
  'GetUserPostCommentVotesResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserPostCommentVotesResponse()),
  'PinPostCommentResponse':
      TypeInfo(TypeOf.Class, create: () => PinPostCommentResponse()),
  'GetUsersByEmailsResponse':
      TypeInfo(TypeOf.Class, create: () => GetUsersByEmailsResponse()),
  'List<UserRef>': TypeInfo(TypeOf.Class, create: () => <UserRef>[]),
  'GetUserPostActivityResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserPostActivityResponse()),
  'GetUserOrganizationsResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserOrganizationsResponse()),
  'List<OrganizationSubscription>':
      TypeInfo(TypeOf.Class, create: () => <OrganizationSubscription>[]),
  'UserPostVoteResponse':
      TypeInfo(TypeOf.Class, create: () => UserPostVoteResponse()),
  'UserPostFavoriteResponse':
      TypeInfo(TypeOf.Class, create: () => UserPostFavoriteResponse()),
  'UserPostReportResponse':
      TypeInfo(TypeOf.Class, create: () => UserPostReportResponse()),
  'UserPostCommentVoteResponse':
      TypeInfo(TypeOf.Class, create: () => UserPostCommentVoteResponse()),
  'UserPostCommentReportResponse':
      TypeInfo(TypeOf.Class, create: () => UserPostCommentReportResponse()),
  'SessionInfoResponse':
      TypeInfo(TypeOf.Class, create: () => SessionInfoResponse()),
  'List<TechnologyStack>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyStack>[]),
  'List<Technology>': TypeInfo(TypeOf.Class, create: () => <Technology>[]),
  'GetTechnologyPreviousVersionsResponse': TypeInfo(TypeOf.Class,
      create: () => GetTechnologyPreviousVersionsResponse()),
  'List<TechnologyHistory>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyHistory>[]),
  'GetAllTechnologiesResponse':
      TypeInfo(TypeOf.Class, create: () => GetAllTechnologiesResponse()),
  'GetTechnologyResponse':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyResponse()),
  'GetTechnologyFavoriteDetailsResponse': TypeInfo(TypeOf.Class,
      create: () => GetTechnologyFavoriteDetailsResponse()),
  'CreateTechnologyResponse':
      TypeInfo(TypeOf.Class, create: () => CreateTechnologyResponse()),
  'UpdateTechnologyResponse':
      TypeInfo(TypeOf.Class, create: () => UpdateTechnologyResponse()),
  'DeleteTechnologyResponse':
      TypeInfo(TypeOf.Class, create: () => DeleteTechnologyResponse()),
  'GetTechnologyStackPreviousVersionsResponse': TypeInfo(TypeOf.Class,
      create: () => GetTechnologyStackPreviousVersionsResponse()),
  'List<TechnologyStackHistory>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyStackHistory>[]),
  'GetPageStatsResponse':
      TypeInfo(TypeOf.Class, create: () => GetPageStatsResponse()),
  'OverviewResponse': TypeInfo(TypeOf.Class, create: () => OverviewResponse()),
  'List<UserInfo>': TypeInfo(TypeOf.Class, create: () => <UserInfo>[]),
  'List<TechnologyInfo>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyInfo>[]),
  'List<TechStackDetails>':
      TypeInfo(TypeOf.Class, create: () => <TechStackDetails>[]),
  'List<OrganizationInfo>':
      TypeInfo(TypeOf.Class, create: () => <OrganizationInfo>[]),
  'Map<String,List<TechnologyInfo>?>': TypeInfo(TypeOf.Class,
      create: () => Map<String, List<TechnologyInfo>?>()),
  'AppOverviewResponse':
      TypeInfo(TypeOf.Class, create: () => AppOverviewResponse()),
  'List<Option>': TypeInfo(TypeOf.Class, create: () => <Option>[]),
  'GetAllTechnologyStacksResponse':
      TypeInfo(TypeOf.Class, create: () => GetAllTechnologyStacksResponse()),
  'GetTechnologyStackResponse':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyStackResponse()),
  'GetTechnologyStackFavoriteDetailsResponse': TypeInfo(TypeOf.Class,
      create: () => GetTechnologyStackFavoriteDetailsResponse()),
  'GetConfigResponse':
      TypeInfo(TypeOf.Class, create: () => GetConfigResponse()),
  'CreateTechnologyStackResponse':
      TypeInfo(TypeOf.Class, create: () => CreateTechnologyStackResponse()),
  'UpdateTechnologyStackResponse':
      TypeInfo(TypeOf.Class, create: () => UpdateTechnologyStackResponse()),
  'DeleteTechnologyStackResponse':
      TypeInfo(TypeOf.Class, create: () => DeleteTechnologyStackResponse()),
  'GetFavoriteTechStackResponse':
      TypeInfo(TypeOf.Class, create: () => GetFavoriteTechStackResponse()),
  'FavoriteTechStackResponse':
      TypeInfo(TypeOf.Class, create: () => FavoriteTechStackResponse()),
  'GetFavoriteTechnologiesResponse':
      TypeInfo(TypeOf.Class, create: () => GetFavoriteTechnologiesResponse()),
  'FavoriteTechnologyResponse':
      TypeInfo(TypeOf.Class, create: () => FavoriteTechnologyResponse()),
  'GetUserFeedResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserFeedResponse()),
  'GetUsersKarmaResponse':
      TypeInfo(TypeOf.Class, create: () => GetUsersKarmaResponse()),
  'Map<int,int?>': TypeInfo(TypeOf.Class, create: () => Map<int, int?>()),
  'GetUserInfoResponse':
      TypeInfo(TypeOf.Class, create: () => GetUserInfoResponse()),
  'LogoUrlApprovalResponse':
      TypeInfo(TypeOf.Class, create: () => LogoUrlApprovalResponse()),
  'LockStackResponse':
      TypeInfo(TypeOf.Class, create: () => LockStackResponse()),
  'EmailTestResponse':
      TypeInfo(TypeOf.Class, create: () => EmailTestResponse()),
  'Ping': TypeInfo(TypeOf.Class, create: () => Ping()),
  'Hello': TypeInfo(TypeOf.Class, create: () => Hello()),
  'GetOrganization': TypeInfo(TypeOf.Class, create: () => GetOrganization()),
  'GetOrganizationBySlug':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationBySlug()),
  'GetOrganizationMembers':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationMembers()),
  'GetOrganizationAdmin':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationAdmin()),
  'CreateOrganizationForTechnology':
      TypeInfo(TypeOf.Class, create: () => CreateOrganizationForTechnology()),
  'CreateOrganization':
      TypeInfo(TypeOf.Class, create: () => CreateOrganization()),
  'UpdateOrganization':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganization()),
  'DeleteOrganization':
      TypeInfo(TypeOf.Class, create: () => DeleteOrganization()),
  'LockOrganization': TypeInfo(TypeOf.Class, create: () => LockOrganization()),
  'AddOrganizationLabel':
      TypeInfo(TypeOf.Class, create: () => AddOrganizationLabel()),
  'UpdateOrganizationLabel':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationLabel()),
  'RemoveOrganizationLabel':
      TypeInfo(TypeOf.Class, create: () => RemoveOrganizationLabel()),
  'AddOrganizationCategory':
      TypeInfo(TypeOf.Class, create: () => AddOrganizationCategory()),
  'UpdateOrganizationCategory':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationCategory()),
  'DeleteOrganizationCategory':
      TypeInfo(TypeOf.Class, create: () => DeleteOrganizationCategory()),
  'AddOrganizationMember':
      TypeInfo(TypeOf.Class, create: () => AddOrganizationMember()),
  'UpdateOrganizationMember':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationMember()),
  'RemoveOrganizationMember':
      TypeInfo(TypeOf.Class, create: () => RemoveOrganizationMember()),
  'SetOrganizationMembers':
      TypeInfo(TypeOf.Class, create: () => SetOrganizationMembers()),
  'GetOrganizationMemberInvites':
      TypeInfo(TypeOf.Class, create: () => GetOrganizationMemberInvites()),
  'RequestOrganizationMemberInvite':
      TypeInfo(TypeOf.Class, create: () => RequestOrganizationMemberInvite()),
  'UpdateOrganizationMemberInvite':
      TypeInfo(TypeOf.Class, create: () => UpdateOrganizationMemberInvite()),
  'QueryResponse<Post>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<Post>()),
  'QueryPosts': TypeInfo(TypeOf.Class, create: () => QueryPosts()),
  'List<Post>': TypeInfo(TypeOf.Class, create: () => <Post>[]),
  'GetPost': TypeInfo(TypeOf.Class, create: () => GetPost()),
  'CreatePost': TypeInfo(TypeOf.Class, create: () => CreatePost()),
  'UpdatePost': TypeInfo(TypeOf.Class, create: () => UpdatePost()),
  'DeletePost': TypeInfo(TypeOf.Class, create: () => DeletePost()),
  'LockPost': TypeInfo(TypeOf.Class, create: () => LockPost()),
  'HidePost': TypeInfo(TypeOf.Class, create: () => HidePost()),
  'ChangeStatusPost': TypeInfo(TypeOf.Class, create: () => ChangeStatusPost()),
  'ActionPostReport': TypeInfo(TypeOf.Class, create: () => ActionPostReport()),
  'CreatePostComment':
      TypeInfo(TypeOf.Class, create: () => CreatePostComment()),
  'UpdatePostComment':
      TypeInfo(TypeOf.Class, create: () => UpdatePostComment()),
  'DeletePostComment':
      TypeInfo(TypeOf.Class, create: () => DeletePostComment()),
  'ActionPostCommentReport':
      TypeInfo(TypeOf.Class, create: () => ActionPostCommentReport()),
  'GetUserPostCommentVotes':
      TypeInfo(TypeOf.Class, create: () => GetUserPostCommentVotes()),
  'PinPostComment': TypeInfo(TypeOf.Class, create: () => PinPostComment()),
  'GetUsersByEmails': TypeInfo(TypeOf.Class, create: () => GetUsersByEmails()),
  'GetUserPostActivity':
      TypeInfo(TypeOf.Class, create: () => GetUserPostActivity()),
  'GetUserOrganizations':
      TypeInfo(TypeOf.Class, create: () => GetUserOrganizations()),
  'UserPostVote': TypeInfo(TypeOf.Class, create: () => UserPostVote()),
  'UserPostFavorite': TypeInfo(TypeOf.Class, create: () => UserPostFavorite()),
  'UserPostReport': TypeInfo(TypeOf.Class, create: () => UserPostReport()),
  'UserPostCommentVote':
      TypeInfo(TypeOf.Class, create: () => UserPostCommentVote()),
  'UserPostCommentReport':
      TypeInfo(TypeOf.Class, create: () => UserPostCommentReport()),
  'StorePreRender': TypeInfo(TypeOf.Class, create: () => StorePreRender()),
  'Uint8List': TypeInfo(TypeOf.Class, create: () => Uint8List(0)),
  'GetPreRender': TypeInfo(TypeOf.Class, create: () => GetPreRender()),
  'SessionInfo': TypeInfo(TypeOf.Class, create: () => SessionInfo()),
  'SubscribeToOrganization':
      TypeInfo(TypeOf.Class, create: () => SubscribeToOrganization()),
  'List<PostType>': TypeInfo(TypeOf.Class, create: () => <PostType>[]),
  'SubscribeToPost': TypeInfo(TypeOf.Class, create: () => SubscribeToPost()),
  'DeleteOrganizationSubscription':
      TypeInfo(TypeOf.Class, create: () => DeleteOrganizationSubscription()),
  'DeletePostSubscription':
      TypeInfo(TypeOf.Class, create: () => DeletePostSubscription()),
  'GetTechnologyPreviousVersions':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyPreviousVersions()),
  'GetAllTechnologies':
      TypeInfo(TypeOf.Class, create: () => GetAllTechnologies()),
  'QueryResponse<TechnologyView>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<TechnologyView>()),
  'FindTechnologies': TypeInfo(TypeOf.Class, create: () => FindTechnologies()),
  'List<TechnologyView>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyView>[]),
  'QueryTechnology': TypeInfo(TypeOf.Class, create: () => QueryTechnology()),
  'GetTechnology': TypeInfo(TypeOf.Class, create: () => GetTechnology()),
  'GetTechnologyFavoriteDetails':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyFavoriteDetails()),
  'CreateTechnology': TypeInfo(TypeOf.Class, create: () => CreateTechnology()),
  'UpdateTechnology': TypeInfo(TypeOf.Class, create: () => UpdateTechnology()),
  'DeleteTechnology': TypeInfo(TypeOf.Class, create: () => DeleteTechnology()),
  'GetTechnologyStackPreviousVersions': TypeInfo(TypeOf.Class,
      create: () => GetTechnologyStackPreviousVersions()),
  'GetPageStats': TypeInfo(TypeOf.Class, create: () => GetPageStats()),
  'QueryResponse<TechnologyStackView>': TypeInfo(TypeOf.Class,
      create: () => QueryResponse<TechnologyStackView>()),
  'FindTechStacks': TypeInfo(TypeOf.Class, create: () => FindTechStacks()),
  'List<TechnologyStackView>':
      TypeInfo(TypeOf.Class, create: () => <TechnologyStackView>[]),
  'QueryTechStacks': TypeInfo(TypeOf.Class, create: () => QueryTechStacks()),
  'Overview': TypeInfo(TypeOf.Class, create: () => Overview()),
  'AppOverview': TypeInfo(TypeOf.Class, create: () => AppOverview()),
  'GetAllTechnologyStacks':
      TypeInfo(TypeOf.Class, create: () => GetAllTechnologyStacks()),
  'GetTechnologyStack':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyStack()),
  'GetTechnologyStackFavoriteDetails':
      TypeInfo(TypeOf.Class, create: () => GetTechnologyStackFavoriteDetails()),
  'GetConfig': TypeInfo(TypeOf.Class, create: () => GetConfig()),
  'CreateTechnologyStack':
      TypeInfo(TypeOf.Class, create: () => CreateTechnologyStack()),
  'UpdateTechnologyStack':
      TypeInfo(TypeOf.Class, create: () => UpdateTechnologyStack()),
  'DeleteTechnologyStack':
      TypeInfo(TypeOf.Class, create: () => DeleteTechnologyStack()),
  'GetFavoriteTechStack':
      TypeInfo(TypeOf.Class, create: () => GetFavoriteTechStack()),
  'AddFavoriteTechStack':
      TypeInfo(TypeOf.Class, create: () => AddFavoriteTechStack()),
  'RemoveFavoriteTechStack':
      TypeInfo(TypeOf.Class, create: () => RemoveFavoriteTechStack()),
  'GetFavoriteTechnologies':
      TypeInfo(TypeOf.Class, create: () => GetFavoriteTechnologies()),
  'AddFavoriteTechnology':
      TypeInfo(TypeOf.Class, create: () => AddFavoriteTechnology()),
  'RemoveFavoriteTechnology':
      TypeInfo(TypeOf.Class, create: () => RemoveFavoriteTechnology()),
  'GetUserFeed': TypeInfo(TypeOf.Class, create: () => GetUserFeed()),
  'GetUsersKarma': TypeInfo(TypeOf.Class, create: () => GetUsersKarma()),
  'GetUserInfo': TypeInfo(TypeOf.Class, create: () => GetUserInfo()),
  'UserAvatar': TypeInfo(TypeOf.Class, create: () => UserAvatar()),
  'MqStart': TypeInfo(TypeOf.Class, create: () => MqStart()),
  'MqStop': TypeInfo(TypeOf.Class, create: () => MqStop()),
  'MqStats': TypeInfo(TypeOf.Class, create: () => MqStats()),
  'MqStatus': TypeInfo(TypeOf.Class, create: () => MqStatus()),
  'LogoUrlApproval': TypeInfo(TypeOf.Class, create: () => LogoUrlApproval()),
  'LockTechStack': TypeInfo(TypeOf.Class, create: () => LockTechStack()),
  'LockTech': TypeInfo(TypeOf.Class, create: () => LockTech()),
  'DummyTypes': TypeInfo(TypeOf.Class, create: () => DummyTypes()),
  'EmailTest': TypeInfo(TypeOf.Class, create: () => EmailTest()),
  'QueryResponse<PostComment>':
      TypeInfo(TypeOf.Class, create: () => QueryResponse<PostComment>()),
  'QueryPostComments':
      TypeInfo(TypeOf.Class, create: () => QueryPostComments()),
});
