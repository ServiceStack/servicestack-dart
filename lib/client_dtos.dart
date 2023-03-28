part of servicestack;

abstract class IReturn<T> {
  T createResponse();

  getTypeName();
}

abstract class IReturnVoid implements IReturn<void> {}

abstract class IGet {}

abstract class IPost {}

abstract class IPut {}

abstract class IDelete {}

abstract class IPatch {}

abstract class IOptions {}

abstract class IMeta {
  Map<String, String>? meta;
}

abstract class IHasSessionId {
  String? sessionId;
}

abstract class IHasBearerToken {
  String? bearerToken;
}

abstract class IHasVersion {
  int? version;
}

abstract class ICrud {}

abstract class ICreateDb<Table> implements ICrud {}

abstract class IUpdateDb<Table> implements ICrud {}

abstract class IPatchDb<Table> implements ICrud {}

abstract class IDeleteDb<Table> implements ICrud {}

abstract class ISaveDb<Table> implements ICrud {}

// sync with DartGenerator.IgnoreTypeInfosFor
Map<String, TypeInfo> TypeInfos = <String, TypeInfo>{
  'dynamic': TypeInfo(TypeOf.Class, create: () => {}),
  'String': TypeInfo(TypeOf.Class, create: () => ""),
  'int': TypeInfo(TypeOf.Class, create: () => 0),
  'double': TypeInfo(TypeOf.Class, create: () => 0.toDouble()),
  'bool': TypeInfo(TypeOf.Class, create: () => true),
  'Map<String,dynamic>':
      TypeInfo(TypeOf.Class, create: () => Map<String, dynamic>()),
  'Map<String,String>':
      TypeInfo(TypeOf.Class, create: () => Map<String, String>()),
  'List<String>': TypeInfo(TypeOf.Class, create: () => <String>[]),
  'List<int>': TypeInfo(TypeOf.Class, create: () => <int>[]),
  'List<double>': TypeInfo(TypeOf.Class, create: () => <double>[]),
  'DateTime': TypeInfo(TypeOf.Class, create: () => DateTime(0)),
  'Duration': TypeInfo(TypeOf.Class, create: () => Duration()),
  'Tuple<T1,T2>': TypeInfo(TypeOf.GenericDef, create: () => Tuple()),
  'Tuple2<T1,T2>': TypeInfo(TypeOf.GenericDef, create: () => Tuple2()),
  'Tuple3<T1,T2,T3>': TypeInfo(TypeOf.GenericDef, create: () => Tuple3()),
  'Tuple4<T1,T2,T3,T4>': TypeInfo(TypeOf.GenericDef, create: () => Tuple4()),
  'KeyValuePair<K,V>':
      TypeInfo(TypeOf.GenericDef, create: () => KeyValuePair()),
  'KeyValuePair<String,String>':
      TypeInfo(TypeOf.Class, create: () => KeyValuePair<String, String>()),
  'ResponseStatus': TypeInfo(TypeOf.Class, create: () => ResponseStatus()),
  'ResponseError': TypeInfo(TypeOf.Class, create: () => ResponseError()),
  'List<ResponseError>':
      TypeInfo(TypeOf.Class, create: () => <ResponseError>[]),
  'QueryBase': TypeInfo(TypeOf.AbstractClass),
  'QueryData<T>': TypeInfo(TypeOf.AbstractClass),
  'QueryDb<T>': TypeInfo(TypeOf.AbstractClass),
  'QueryDb1<T>': TypeInfo(TypeOf.AbstractClass),
  'QueryDb2<From,Into>': TypeInfo(TypeOf.AbstractClass),
  'QueryResponse<T>':
      TypeInfo(TypeOf.GenericDef, create: () => QueryResponse()),
  'List<UserApiKey>': TypeInfo(TypeOf.Class, create: () => <UserApiKey>[]),
  'Authenticate': TypeInfo(TypeOf.Class, create: () => Authenticate()),
  'AuthenticateResponse':
      TypeInfo(TypeOf.Class, create: () => AuthenticateResponse()),
  'Register': TypeInfo(TypeOf.Class, create: () => Register()),
  'RegisterResponse': TypeInfo(TypeOf.Class, create: () => RegisterResponse()),
  'AssignRoles': TypeInfo(TypeOf.Class, create: () => AssignRoles()),
  'AssignRolesResponse':
      TypeInfo(TypeOf.Class, create: () => AssignRolesResponse()),
  'UnAssignRoles': TypeInfo(TypeOf.Class, create: () => UnAssignRoles()),
  'UnAssignRolesResponse':
      TypeInfo(TypeOf.Class, create: () => UnAssignRolesResponse()),
  'CancelRequest': TypeInfo(TypeOf.Class, create: () => CancelRequest()),
  'CancelRequestResponse':
      TypeInfo(TypeOf.Class, create: () => CancelRequestResponse()),
  'UpdateEventSubscriber':
      TypeInfo(TypeOf.Class, create: () => UpdateEventSubscriber()),
  'UpdateEventSubscriberResponse':
      TypeInfo(TypeOf.Class, create: () => UpdateEventSubscriberResponse()),
  'GetEventSubscribers':
      TypeInfo(TypeOf.Class, create: () => GetEventSubscribers()),
  'GetApiKeys': TypeInfo(TypeOf.Class, create: () => GetApiKeys()),
  'GetApiKeysResponse':
      TypeInfo(TypeOf.Class, create: () => GetApiKeysResponse()),
  'RegenerateApiKeys':
      TypeInfo(TypeOf.Class, create: () => RegenerateApiKeys()),
  'RegenerateApiKeysResponse':
      TypeInfo(TypeOf.Class, create: () => RegenerateApiKeysResponse()),
  'UserApiKey': TypeInfo(TypeOf.Class, create: () => UserApiKey()),
  'ConvertSessionToToken':
      TypeInfo(TypeOf.Class, create: () => ConvertSessionToToken()),
  'ConvertSessionToTokenResponse':
      TypeInfo(TypeOf.Class, create: () => ConvertSessionToTokenResponse()),
  'GetAccessToken': TypeInfo(TypeOf.Class, create: () => GetAccessToken()),
  'GetAccessTokenResponse':
      TypeInfo(TypeOf.Class, create: () => GetAccessTokenResponse()),
  'List<NavItem>': TypeInfo(TypeOf.Class, create: () => <NavItem>[]),
  'Map<String,List<NavItem>>':
      TypeInfo(TypeOf.Class, create: () => Map<String, List<NavItem>>()),
  'NavItem': TypeInfo(TypeOf.Class, create: () => NavItem()),
  'GetNavItems': TypeInfo(TypeOf.Class, create: () => GetNavItems()),
  'GetNavItemsResponse':
      TypeInfo(TypeOf.Class, create: () => GetNavItemsResponse()),
  'EmptyResponse': TypeInfo(TypeOf.Class, create: () => EmptyResponse()),
  'IdResponse': TypeInfo(TypeOf.Class, create: () => IdResponse()),
  'StringResponse': TypeInfo(TypeOf.Class, create: () => StringResponse()),
  'StringsResponse': TypeInfo(TypeOf.Class, create: () => StringsResponse()),
  'AuditBase': TypeInfo(TypeOf.AbstractClass),
};

TypeContext _ctx = TypeContext(typeName: 'JsonConverters', types: TypeInfos);

class ResponseError implements IConvertible {
  String? errorCode;
  String? fieldName;
  String? message;
  Map<String, String?>? meta;

  ResponseError({this.errorCode, this.fieldName, this.message, this.meta});

  ResponseError.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    errorCode = JsonConverters.getJson(json, 'errorCode');
    fieldName = JsonConverters.getJson(json, 'fieldName');
    message = JsonConverters.getJson(json, 'message');
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'fieldName': fieldName,
        'message': message,
        'meta': meta
      };

  getTypeName() => "ResponseError";
  TypeContext? context = _ctx;
}

class ResponseStatus implements IConvertible {
  String? errorCode;
  String? message;
  String? stackTrace;
  List<ResponseError>? errors;
  Map<String, String?>? meta;

  ResponseStatus(
      {this.errorCode, this.message, this.stackTrace, this.errors, this.meta});

  ResponseStatus.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    errorCode = JsonConverters.getJson(json, 'errorCode');
    message = JsonConverters.getJson(json, 'message');
    stackTrace = JsonConverters.getJson(json, 'stackTrace');
    errors = JsonConverters.fromJson(JsonConverters.getJson(json, 'errors'),
        'List<ResponseError>', context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors':
            JsonConverters.toJson(errors, 'List<ResponseError>', context!),
        'meta': meta
      };

  getTypeName() => "ResponseStatus";
  TypeContext? context = _ctx;
}

abstract class QueryBase implements IConvertible {
  int? skip;
  int? take;
  String? orderBy;
  String? orderByDesc;
  String? include;
  String? fields;
  Map<String, String?>? meta;

  QueryBase(
      {this.skip,
      this.take,
      this.orderBy,
      this.orderByDesc,
      this.include,
      this.fields,
      this.meta});

  QueryBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    skip = JsonConverters.getJson(json, 'skip');
    take = JsonConverters.getJson(json, 'take');
    orderBy = JsonConverters.getJson(json, 'orderBy');
    orderByDesc = JsonConverters.getJson(json, 'orderByDesc');
    include = JsonConverters.getJson(json, 'include');
    fields = JsonConverters.getJson(json, 'fields');
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'skip': skip,
        'take': take,
        'orderBy': orderBy,
        'orderByDesc': orderByDesc,
        'include': include,
        'fields': fields,
        'meta': meta
      };

  getTypeName() => "QueryBase";
  TypeContext? context = _ctx;
}

abstract class QueryData<T> extends QueryBase {
  QueryData();

  QueryData.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();

  getTypeName() => "QueryData<T>";
}

abstract class QueryDb<T> extends QueryBase {
  QueryDb();

  QueryDb.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();

  getTypeName() => "QueryDb<T>";
}

abstract class QueryDb1<T> extends QueryBase {
  QueryDb1();

  QueryDb1.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();

  getTypeName() => "QueryDb1<T>";
}

abstract class QueryDb2<From, Into> extends QueryBase {
  QueryDb2();

  QueryDb2.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => super.toJson();

  getTypeName() => "QueryDb2<From,Into>";
}

class QueryResponse<T> implements IConvertible {
  int? offset;
  int? total;
  List<T>? results;
  Map<String, String?>? meta;
  ResponseStatus? responseStatus;

  QueryResponse(
      {this.offset, this.total, this.results, this.meta, this.responseStatus});

  QueryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    offset = JsonConverters.getJson(json, 'offset');
    total = JsonConverters.getJson(json, 'total');
    results = JsonConverters.fromJson(JsonConverters.getJson(json, 'results'),
        'List<${runtimeGenericTypeDefs(this, [0]).join(",")}>', context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.toJson(results, 'List<T>', context!),
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "QueryResponse<$T>";
  TypeContext? context = _ctx;
}

class Authenticate
    implements IReturn<AuthenticateResponse>, IPost, IConvertible {
  String? provider;
  String? state;
  String? oauth_token;
  String? oauth_verifier;
  String? userName;
  String? password;
  bool? rememberMe;
  String? Continue;
  String? nonce;
  String? uri;
  String? response;
  String? qop;
  String? nc;
  String? cnonce;
  bool? useTokenCookie;
  String? accessToken;
  String? accessTokenSecret;
  Map<String, String?>? meta;

  Authenticate(
      {this.provider,
      this.state,
      this.oauth_token,
      this.oauth_verifier,
      this.userName,
      this.password,
      this.rememberMe,
      this.Continue,
      this.nonce,
      this.uri,
      this.response,
      this.qop,
      this.nc,
      this.cnonce,
      this.useTokenCookie,
      this.accessToken,
      this.accessTokenSecret,
      this.meta});

  Authenticate.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    provider = JsonConverters.getJson(json, 'provider');
    state = JsonConverters.getJson(json, 'state');
    oauth_token = JsonConverters.getJson(json, 'oauth_token');
    oauth_verifier = JsonConverters.getJson(json, 'oauth_verifier');
    userName = JsonConverters.getJson(json, 'userName');
    password = JsonConverters.getJson(json, 'password');
    rememberMe = JsonConverters.getJson(json, 'rememberMe');
    Continue = JsonConverters.getJson(json, 'continue');
    nonce = JsonConverters.getJson(json, 'nonce');
    uri = JsonConverters.getJson(json, 'uri');
    response = JsonConverters.getJson(json, 'response');
    qop = JsonConverters.getJson(json, 'qop');
    nc = JsonConverters.getJson(json, 'nc');
    cnonce = JsonConverters.getJson(json, 'cnonce');
    useTokenCookie = JsonConverters.getJson(json, 'useTokenCookie');
    accessToken = JsonConverters.getJson(json, 'accessToken');
    accessTokenSecret = JsonConverters.getJson(json, 'accessTokenSecret');
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'provider': provider,
        'state': state,
        'oauth_token': oauth_token,
        'oauth_verifier': oauth_verifier,
        'userName': userName,
        'password': password,
        'rememberMe': rememberMe,
        'continue': Continue,
        'nonce': nonce,
        'uri': uri,
        'response': response,
        'qop': qop,
        'nc': nc,
        'cnonce': cnonce,
        'useTokenCookie': useTokenCookie,
        'accessToken': accessToken,
        'accessTokenSecret': accessTokenSecret,
        'meta': meta
      };

  createResponse() => AuthenticateResponse();
  getTypeName() => "Authenticate";
  TypeContext? context = _ctx;
}

class AuthenticateResponse implements IConvertible {
  String? userId;
  String? sessionId;
  String? userName;
  String? displayName;
  String? referrerUrl;
  String? bearerToken;
  String? refreshToken;
  List<String>? roles;
  List<String>? permissions;
  ResponseStatus? responseStatus;
  Map<String, String?>? meta;

  AuthenticateResponse(
      {this.userId,
      this.sessionId,
      this.userName,
      this.displayName,
      this.referrerUrl,
      this.bearerToken,
      this.refreshToken,
      this.roles,
      this.permissions,
      this.responseStatus,
      this.meta});

  AuthenticateResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userId = JsonConverters.getJson(json, 'userId');
    sessionId = JsonConverters.getJson(json, 'sessionId');
    userName = JsonConverters.getJson(json, 'userName');
    displayName = JsonConverters.getJson(json, 'displayName');
    referrerUrl = JsonConverters.getJson(json, 'referrerUrl');
    bearerToken = JsonConverters.getJson(json, 'bearerToken');
    refreshToken = JsonConverters.getJson(json, 'refreshToken');
    roles = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'roles'), 'List<String>', context!);
    permissions = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'permissions'), 'List<String>', context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'displayName': displayName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'roles': JsonConverters.toJson(roles, 'List<String>', context!),
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!),
        'meta': meta
      };

  getTypeName() => "AuthenticateResponse";
  TypeContext? context = _ctx;
}

class Register implements IReturn<RegisterResponse>, IPost, IConvertible {
  String? userName;
  String? firstName;
  String? lastName;
  String? displayName;
  String? email;
  String? password;
  bool? autoLogin;
  String? Continue;

  Register(
      {this.userName,
      this.firstName,
      this.lastName,
      this.displayName,
      this.email,
      this.password,
      this.autoLogin,
      this.Continue});

  Register.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = JsonConverters.getJson(json, 'userName');
    firstName = JsonConverters.getJson(json, 'firstName');
    lastName = JsonConverters.getJson(json, 'lastName');
    displayName = JsonConverters.getJson(json, 'displayName');
    email = JsonConverters.getJson(json, 'email');
    password = JsonConverters.getJson(json, 'password');
    autoLogin = JsonConverters.getJson(json, 'autoLogin');
    Continue = JsonConverters.getJson(json, 'continue');
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'firstName': firstName,
        'lastName': lastName,
        'displayName': displayName,
        'email': email,
        'password': password,
        'autoLogin': autoLogin,
        'continue': Continue
      };

  createResponse() => RegisterResponse();
  getTypeName() => "Register";
  TypeContext? context = _ctx;
}

class RegisterResponse implements IConvertible {
  String? userId;
  String? sessionId;
  String? userName;
  String? referrerUrl;
  String? bearerToken;
  String? refreshToken;
  ResponseStatus? responseStatus;
  Map<String, String?>? meta;

  RegisterResponse(
      {this.userId,
      this.sessionId,
      this.userName,
      this.referrerUrl,
      this.bearerToken,
      this.refreshToken,
      this.responseStatus,
      this.meta});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userId = JsonConverters.getJson(json, 'userId');
    sessionId = JsonConverters.getJson(json, 'sessionId');
    userName = JsonConverters.getJson(json, 'userName');
    referrerUrl = JsonConverters.getJson(json, 'referrerUrl');
    bearerToken = JsonConverters.getJson(json, 'bearerToken');
    refreshToken = JsonConverters.getJson(json, 'refreshToken');
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'sessionId': sessionId,
        'userName': userName,
        'referrerUrl': referrerUrl,
        'bearerToken': bearerToken,
        'refreshToken': refreshToken,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!),
        'meta': meta
      };

  getTypeName() => "RegisterResponse";
  TypeContext? context = _ctx;
}

class AssignRoles implements IReturn<AssignRolesResponse>, IPost, IConvertible {
  String? userName;
  List<String>? permissions;
  List<String>? roles;

  AssignRoles({this.userName, this.permissions, this.roles});

  AssignRoles.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = JsonConverters.getJson(json, 'userName');
    permissions = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'permissions'), 'List<String>', context!);
    roles = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'roles'), 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context!),
        'roles': JsonConverters.toJson(roles, 'List<String>', context!)
      };

  createResponse() => AssignRolesResponse();
  getTypeName() => "AssignRoles";
  TypeContext? context = _ctx;
}

class AssignRolesResponse implements IConvertible {
  List<String>? allRoles;
  List<String>? allPermissions;
  ResponseStatus? responseStatus;

  AssignRolesResponse(
      {this.allRoles, this.allPermissions, this.responseStatus});

  AssignRolesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    allRoles = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'allRoles'), 'List<String>', context!);
    allPermissions = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'allPermissions'),
        'List<String>',
        context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles, 'List<String>', context!),
        'allPermissions':
            JsonConverters.toJson(allPermissions, 'List<String>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "AssignRolesResponse";
  TypeContext? context = _ctx;
}

class UnAssignRoles
    implements IReturn<UnAssignRolesResponse>, IPost, IConvertible {
  String? userName;
  List<String>? permissions;
  List<String>? roles;

  UnAssignRoles({this.userName, this.permissions, this.roles});

  UnAssignRoles.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = JsonConverters.getJson(json, 'userName');
    permissions = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'permissions'), 'List<String>', context!);
    roles = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'roles'), 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context!),
        'roles': JsonConverters.toJson(roles, 'List<String>', context!)
      };

  createResponse() => UnAssignRolesResponse();
  getTypeName() => "UnAssignRoles";
  TypeContext? context = _ctx;
}

class UnAssignRolesResponse implements IConvertible {
  List<String>? allRoles;
  List<String>? allPermissions;
  ResponseStatus? responseStatus;

  UnAssignRolesResponse(
      {this.allRoles, this.allPermissions, this.responseStatus});

  UnAssignRolesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    allRoles = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'allRoles'), 'List<String>', context!);
    allPermissions = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'allPermissions'),
        'List<String>',
        context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles, 'List<String>', context!),
        'allPermissions':
            JsonConverters.toJson(allPermissions, 'List<String>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UnAssignRolesResponse";
  TypeContext? context = _ctx;
}

class CancelRequest implements IConvertible {
  String? tag;

  CancelRequest({this.tag});

  CancelRequest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    tag = JsonConverters.getJson(json, 'tag');
    return this;
  }

  Map<String, dynamic> toJson() => {'tag': tag};

  createResponse() => CancelRequestResponse();
  getTypeName() => "CancelRequest";
  TypeContext? context = _ctx;
}

class CancelRequestResponse implements IConvertible {
  String? tag;
  Duration? elapsed;
  ResponseStatus? responseStatus;

  CancelRequestResponse({this.tag, this.elapsed, this.responseStatus});

  CancelRequestResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    tag = JsonConverters.getJson(json, 'tag');
    elapsed = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'elapsed'), 'Duration', context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'tag': tag,
        'elapsed': JsonConverters.toJson(elapsed, 'Duration', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "CancelRequestResponse";
  TypeContext? context = _ctx;
}

class UpdateEventSubscriber implements IConvertible {
  String? id;
  List<String>? subscribeChannels;
  List<String>? unsubscribeChannels;

  UpdateEventSubscriber(
      {this.id, this.subscribeChannels, this.unsubscribeChannels});

  UpdateEventSubscriber.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = JsonConverters.getJson(json, 'id');
    subscribeChannels = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'subscribeChannels'),
        'List<String>',
        context!);
    unsubscribeChannels = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'unsubscribeChannels'),
        'List<String>',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'subscribeChannels':
            JsonConverters.toJson(subscribeChannels, 'List<String>', context!),
        'unsubscribeChannels':
            JsonConverters.toJson(unsubscribeChannels, 'List<String>', context!)
      };

  createResponse() => UpdateEventSubscriberResponse();
  getTypeName() => "UpdateEventSubscriber";
  TypeContext? context = _ctx;
}

class UpdateEventSubscriberResponse implements IConvertible {
  ResponseStatus? responseStatus;

  UpdateEventSubscriberResponse({this.responseStatus});

  UpdateEventSubscriberResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "UpdateEventSubscriberResponse";
  TypeContext? context = _ctx;
}

class GetEventSubscribers implements IConvertible {
  List<String>? channels;

  GetEventSubscribers({this.channels});

  GetEventSubscribers.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    channels = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'channels'), 'List<String>', context!);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'channels': JsonConverters.toJson(channels, 'List<String>', context!)};

  createResponse() => <Map<String, String>>[];
  getTypeName() => "GetEventSubscribers";
  TypeContext? context = _ctx;
}

class GetApiKeys implements IReturn<GetApiKeysResponse>, IGet, IConvertible {
  String? environment;

  GetApiKeys({this.environment});

  GetApiKeys.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    environment = JsonConverters.getJson(json, 'environment');
    return this;
  }

  Map<String, dynamic> toJson() => {'environment': environment};

  createResponse() => GetApiKeysResponse();
  getTypeName() => "GetEventSubscribers";
  TypeContext? context = _ctx;
}

class GetApiKeysResponse implements IConvertible {
  List<UserApiKey>? results;
  ResponseStatus? responseStatus;

  GetApiKeysResponse({this.results, this.responseStatus});

  GetApiKeysResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'results'), 'List<UserApiKey>', context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'List<UserApiKey>', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetApiKeysResponse";
  TypeContext? context = _ctx;
}

class RegenerateApiKeys
    implements IReturn<RegenerateApiKeysResponse>, IPost, IConvertible {
  String? environment;

  RegenerateApiKeys({this.environment});

  RegenerateApiKeys.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    environment = JsonConverters.getJson(json, 'environment');
    return this;
  }

  Map<String, dynamic> toJson() => {'environment': environment};

  createResponse() => RegenerateApiKeysResponse();
  getTypeName() => "RegenerateApiKeys";
  TypeContext? context = _ctx;
}

class RegenerateApiKeysResponse implements IConvertible {
  List<UserApiKey>? results;
  ResponseStatus? responseStatus;

  RegenerateApiKeysResponse({this.results, this.responseStatus});

  RegenerateApiKeysResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'results'), 'Duration', context!);
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'Duration', context!),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "RegenerateApiKeysResponse";
  TypeContext? context = _ctx;
}

class UserApiKey implements IConvertible {
  String? key;
  String? keyType;
  DateTime? expiryDate;

  UserApiKey({this.key, this.keyType, this.expiryDate});

  UserApiKey.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    key = JsonConverters.getJson(json, 'key');
    keyType = JsonConverters.getJson(json, 'keyType');
    expiryDate = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'expiryDate'), 'DateTime', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'keyType': keyType,
        'expiryDate': JsonConverters.toJson(expiryDate, 'DateTime', context!)
      };

  getTypeName() => "UserApiKey";
  TypeContext? context = _ctx;
}

class ConvertSessionToToken
    implements IReturn<ConvertSessionToTokenResponse>, IPost, IConvertible {
  bool? preserveSession;

  ConvertSessionToToken({this.preserveSession});

  ConvertSessionToToken.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    preserveSession = JsonConverters.getJson(json, 'preserveSession');
    return this;
  }

  Map<String, dynamic> toJson() => {'preserveSession': preserveSession};

  createResponse() => ConvertSessionToTokenResponse();
  getTypeName() => "ConvertSessionToToken";
  TypeContext? context = _ctx;
}

class ConvertSessionToTokenResponse implements IConvertible {
  Map<String, String?>? meta;
  String? accessToken;
  ResponseStatus? responseStatus;

  ConvertSessionToTokenResponse(
      {this.meta, this.accessToken, this.responseStatus});

  ConvertSessionToTokenResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    accessToken = JsonConverters.getJson(json, 'accessToken');
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'meta': meta,
        'accessToken': accessToken,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "ConvertSessionToTokenResponse";
  TypeContext? context = _ctx;
}

class GetAccessToken
    implements IReturn<GetAccessTokenResponse>, IPost, IConvertible {
  String? refreshToken;

  GetAccessToken({this.refreshToken});

  GetAccessToken.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    refreshToken = JsonConverters.getJson(json, 'refreshToken');
    return this;
  }

  Map<String, dynamic> toJson() => {'refreshToken': refreshToken};

  createResponse() => GetAccessTokenResponse();
  getTypeName() => "GetAccessToken";
  TypeContext? context = _ctx;
}

class GetAccessTokenResponse implements IConvertible {
  String? accessToken;
  ResponseStatus? responseStatus;

  GetAccessTokenResponse({this.accessToken, this.responseStatus});

  GetAccessTokenResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    accessToken = JsonConverters.getJson(json, 'accessToken');
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetAccessTokenResponse";
  TypeContext? context = _ctx;
}

class NavItem implements IConvertible {
  String? label;
  String? href;
  bool? exact;
  String? id;
  String? className;
  String? iconHtml;
  String? show;
  String? hide;
  List<NavItem>? children;
  Map<String, String?>? meta;

  NavItem(
      {this.label,
      this.href,
      this.exact,
      this.id,
      this.className,
      this.iconHtml,
      this.show,
      this.hide,
      this.children,
      this.meta});

  NavItem.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    label = JsonConverters.getJson(json, 'label');
    href = JsonConverters.getJson(json, 'href');
    exact = JsonConverters.getJson(json, 'exact');
    id = JsonConverters.getJson(json, 'id');
    className = JsonConverters.getJson(json, 'className');
    iconHtml = JsonConverters.getJson(json, 'iconHtml');
    show = JsonConverters.getJson(json, 'show');
    hide = JsonConverters.getJson(json, 'hide');
    children = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'children'), 'List<NavItem>', context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    return this;
  }

  Map<String, dynamic> toJson() => {
        'label': label,
        'href': href,
        'exact': exact,
        'id': id,
        'className': className,
        'iconHtml': iconHtml,
        'show': show,
        'hide': hide,
        'children': JsonConverters.toJson(children, 'List<NavItem>', context!),
        'meta': meta
      };

  getTypeName() => "NavItem";
  TypeContext? context = _ctx;
}

class GetNavItems implements IReturn<GetNavItemsResponse>, IGet, IConvertible {
  GetNavItems();

  GetNavItems.fromJson(Map<String, dynamic> json) : super();

  fromMap(Map<String, dynamic> json) {
    return this;
  }

  Map<String, dynamic> toJson() => {};

  createResponse() => GetNavItemsResponse();
  getTypeName() => "GetNavItems";
  TypeContext? context = _ctx;
}

class GetNavItemsResponse implements IConvertible {
  String? baseUrl;
  List<NavItem>? results;
  Map<String, List<NavItem>>? navItemsMap;
  Map<String, String?>? meta;
  ResponseStatus? responseStatus;

  GetNavItemsResponse(
      {this.baseUrl,
      this.results,
      this.navItemsMap,
      this.meta,
      this.responseStatus});

  GetNavItemsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    baseUrl = JsonConverters.getJson(json, 'baseUrl');
    results = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'results'), 'List<NavItem>', context!);
    navItemsMap = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'navItemsMap'),
        'Map<String,List<NavItem>>',
        context!);
    meta = JsonConverters.toStringMap(JsonConverters.getJson(json, 'meta'));
    responseStatus = JsonConverters.fromJson(
        JsonConverters.getJson(json, 'responseStatus'),
        'ResponseStatus',
        context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'baseUrl': baseUrl,
        'results': JsonConverters.toJson(results, 'List<NavItem>', context!),
        'navItemsMap': JsonConverters.toJson(
            navItemsMap, 'Map<String,List<NavItem>>', context!),
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "GetNavItemsResponse";
  TypeContext? context = _ctx;
}

class Tuple<T1, T2> extends Tuple2<T1, T2> {
  Tuple({T1? item1, T2? item2}) : super(item1: item1, item2: item2);

  getTypeName() => "Tuple<T1,T2>";
}

class Tuple2<T1, T2> implements IConvertible {
  T1? item1;
  T2? item2;

  Tuple2({this.item1, this.item2});

  Tuple2.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = JsonConverters.getJson(json, 'item1');
    item2 = JsonConverters.getJson(json, 'item2');
    return this;
  }

  Map<String, dynamic> toJson() => {'item1': item1, 'item2': item2};

  getTypeName() => "Tuple<T1,T2>";
  TypeContext? context = _ctx;
}

class Tuple3<T1, T2, T3> implements IConvertible {
  T1? item1;
  T2? item2;
  T3? item3;

  Tuple3({this.item1, this.item2, this.item3});

  Tuple3.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = JsonConverters.getJson(json, 'item1');
    item2 = JsonConverters.getJson(json, 'item2');
    item3 = JsonConverters.getJson(json, 'item3');
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'item1': item1, 'item2': item2, 'item3': item3};

  getTypeName() => "Tuple3<T1,T2,T3>";
  TypeContext? context = _ctx;
}

class Tuple4<T1, T2, T3, T4> implements IConvertible {
  T1? item1;
  T2? item2;
  T3? item3;
  T4? item4;

  Tuple4({this.item1, this.item2, this.item3, this.item4});

  Tuple4.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = JsonConverters.getJson(json, 'item1');
    item2 = JsonConverters.getJson(json, 'item2');
    item3 = JsonConverters.getJson(json, 'item3');
    item4 = JsonConverters.getJson(json, 'item4');
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'item1': item1, 'item2': item2, 'item3': item3, 'item4': item4};

  getTypeName() => "Tuple4<T1,T2,T3,T4>";
  TypeContext? context = _ctx;
}

class KeyValuePair<K, V> implements IConvertible {
  K? key;
  V? value;

  KeyValuePair({this.key, this.value}) {}

  KeyValuePair.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    key = JsonConverters.getJson(json, 'key');
    value = JsonConverters.getJson(json, 'value');
    return this;
  }

  Map<String, dynamic> toJson() => {'key': key, 'value': value};

  getTypeName() => "KeyValuePair<K,V>";
  TypeContext? context = _ctx;
}

// @DataContract
class EmptyResponse implements IConvertible {
  // @DataMember(Order=1)
  ResponseStatus? responseStatus;

  EmptyResponse({this.responseStatus});

  EmptyResponse.fromJson(Map<String, dynamic> json) {
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

  getTypeName() => "EmptyResponse";
  TypeContext? context = _ctx;
}

// @DataContract
class IdResponse implements IConvertible {
  // @DataMember(Order=1)
  String? id;

  // @DataMember(Order=2)
  ResponseStatus? responseStatus;

  IdResponse({this.id, this.responseStatus});

  IdResponse.fromJson(Map<String, dynamic> json) {
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

  getTypeName() => "IdResponse";
  TypeContext? context = _ctx;
}

// @DataContract
class StringResponse implements IConvertible {
  // @DataMember(Order=1)
  String? results;

  // @DataMember(Order=2)
  Map<String, String?>? meta;

  // @DataMember(Order=3)
  ResponseStatus? responseStatus;

  StringResponse({this.results, this.meta, this.responseStatus});

  StringResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = json['results'];
    meta = JsonConverters.toStringMap(json['meta']);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': results,
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "StringResponse";
  TypeContext? context = _ctx;
}

// @DataContract
class StringsResponse implements IConvertible {
  // @DataMember(Order=1)
  List<String>? results;

  // @DataMember(Order=2)
  Map<String, String?>? meta;

  // @DataMember(Order=3)
  ResponseStatus? responseStatus;

  StringsResponse({this.results, this.meta, this.responseStatus});

  StringsResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results =
        JsonConverters.fromJson(json['results'], 'List<String>', context!);
    meta = JsonConverters.toStringMap(json['meta']);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context!);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'List<String>', context!),
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context!)
      };

  getTypeName() => "StringsResponse";
  TypeContext? context = _ctx;
}

abstract class AuditBase {
  // @DataMember(Order=1)
  DateTime? createdDate;

  // @DataMember(Order=2)
  // @required()
  String? createdBy;

  // @DataMember(Order=3)
  DateTime? modifiedDate;

  // @DataMember(Order=4)
  // @required()
  String? modifiedBy;

  // @DataMember(Order=5)
  DateTime? deletedDate;

  // @DataMember(Order=6)
  String? deletedBy;

  AuditBase(
      {this.createdDate,
      this.createdBy,
      this.modifiedDate,
      this.modifiedBy,
      this.deletedDate,
      this.deletedBy});

  AuditBase.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    createdDate =
        JsonConverters.fromJson(json['createdDate'], 'DateTime', context!);
    createdBy = json['createdBy'];
    modifiedDate =
        JsonConverters.fromJson(json['modifiedDate'], 'DateTime', context!);
    modifiedBy = json['modifiedBy'];
    deletedDate =
        JsonConverters.fromJson(json['deletedDate'], 'DateTime', context!);
    deletedBy = json['deletedBy'];
    return this;
  }

  Map<String, dynamic> toJson() => {
        'createdDate': JsonConverters.toJson(createdDate, 'DateTime', context!),
        'createdBy': createdBy,
        'modifiedDate':
            JsonConverters.toJson(modifiedDate, 'DateTime', context!),
        'modifiedBy': modifiedBy,
        'deletedDate': JsonConverters.toJson(deletedDate, 'DateTime', context!),
        'deletedBy': deletedBy
      };

  getTypeName() => "AuditBase";
  TypeContext? context = _ctx;
}
