part of servicestack;

abstract class IReturn<T> {
  T createResponse();
  String getTypeName();
}

abstract class IReturnVoid implements IReturn<void> {}

abstract class IGet {}

abstract class IPost {}

abstract class IPut {}

abstract class IDelete {}

abstract class IPatch {}

abstract class IOptions {}

abstract class IMeta {
  Map<String, String> meta;
}

abstract class IHasSessionId {
  String sessionId;
}

abstract class IHasVersion {
  int version;
}

Map<String, TypeInfo> TypeInfos = <String, TypeInfo>{
  'dynamic': new TypeInfo(TypeOf.Class, create: () => {}),
  'String': new TypeInfo(TypeOf.Class, create: () => ""),
  'int': new TypeInfo(TypeOf.Class, create: () => 0),
  'double': new TypeInfo(TypeOf.Class, create: () => 0.toDouble()),
  'bool': new TypeInfo(TypeOf.Class, create: () => true),
  'Map<String,dynamic>':
      new TypeInfo(TypeOf.Class, create: () => new Map<String, dynamic>()),
  'Map<String,String>':
      new TypeInfo(TypeOf.Class, create: () => new Map<String, String>()),
  'List<String>': new TypeInfo(TypeOf.Class, create: () => new List<String>()),
  'List<int>': new TypeInfo(TypeOf.Class, create: () => new List<int>()),
  'List<double>': new TypeInfo(TypeOf.Class, create: () => new List<double>()),
  'DateTime': new TypeInfo(TypeOf.Class, create: () => new DateTime(0)),
  'Duration': new TypeInfo(TypeOf.Class, create: () => new Duration()),
  'Tuple<T1,T2>': new TypeInfo(TypeOf.GenericDef, create: () => new Tuple()),
  'Tuple2<T1,T2>': new TypeInfo(TypeOf.GenericDef, create: () => new Tuple2()),
  'Tuple3<T1,T2,T3>':
      new TypeInfo(TypeOf.GenericDef, create: () => new Tuple3()),
  'Tuple4<T1,T2,T3,T4>':
      new TypeInfo(TypeOf.GenericDef, create: () => new Tuple4()),
  'KeyValuePair<K,V>':
      new TypeInfo(TypeOf.GenericDef, create: () => new KeyValuePair()),
  'KeyValuePair<String,String>': new TypeInfo(TypeOf.Class,
      create: () => new KeyValuePair<String, String>()),
  'ResponseStatus':
      new TypeInfo(TypeOf.Class, create: () => new ResponseStatus()),
  'ResponseError':
      new TypeInfo(TypeOf.Class, create: () => new ResponseError()),
  'List<ResponseError>':
      new TypeInfo(TypeOf.Class, create: () => new List<ResponseError>()),
  'QueryBase': new TypeInfo(TypeOf.AbstractClass),
  'QueryData<T>': new TypeInfo(TypeOf.AbstractClass),
  'QueryDb<T>': new TypeInfo(TypeOf.AbstractClass),
  'QueryDb1<T>': new TypeInfo(TypeOf.AbstractClass),
  'QueryDb2<From,Into>': new TypeInfo(TypeOf.AbstractClass),
  'QueryResponse<T>':
      new TypeInfo(TypeOf.GenericDef, create: () => new QueryResponse()),
  'List<UserApiKey>':
      new TypeInfo(TypeOf.Class, create: () => new List<UserApiKey>()),
  'Authenticate': new TypeInfo(TypeOf.Class, create: () => new Authenticate()),
  'AuthenticateResponse':
      new TypeInfo(TypeOf.Class, create: () => new AuthenticateResponse()),
  'Register': new TypeInfo(TypeOf.Class, create: () => new Register()),
  'RegisterResponse':
      new TypeInfo(TypeOf.Class, create: () => new RegisterResponse()),
  'AssignRoles': new TypeInfo(TypeOf.Class, create: () => new AssignRoles()),
  'AssignRolesResponse':
      new TypeInfo(TypeOf.Class, create: () => new AssignRolesResponse()),
  'UnAssignRoles':
      new TypeInfo(TypeOf.Class, create: () => new UnAssignRoles()),
  'UnAssignRolesResponse':
      new TypeInfo(TypeOf.Class, create: () => new UnAssignRolesResponse()),
  'CancelRequest':
      new TypeInfo(TypeOf.Class, create: () => new CancelRequest()),
  'CancelRequestResponse':
      new TypeInfo(TypeOf.Class, create: () => new CancelRequestResponse()),
  'UpdateEventSubscriber':
      new TypeInfo(TypeOf.Class, create: () => new UpdateEventSubscriber()),
  'UpdateEventSubscriberResponse': new TypeInfo(TypeOf.Class,
      create: () => new UpdateEventSubscriberResponse()),
  'GetEventSubscribers':
      new TypeInfo(TypeOf.Class, create: () => new GetEventSubscribers()),
  'GetApiKeys': new TypeInfo(TypeOf.Class, create: () => new GetApiKeys()),
  'GetApiKeysResponse':
      new TypeInfo(TypeOf.Class, create: () => new GetApiKeysResponse()),
  'RegenerateApiKeys':
      new TypeInfo(TypeOf.Class, create: () => new RegenerateApiKeys()),
  'RegenerateApiKeysResponse':
      new TypeInfo(TypeOf.Class, create: () => new RegenerateApiKeysResponse()),
  'UserApiKey': new TypeInfo(TypeOf.Class, create: () => new UserApiKey()),
  'ConvertSessionToToken':
      new TypeInfo(TypeOf.Class, create: () => new ConvertSessionToToken()),
  'ConvertSessionToTokenResponse': new TypeInfo(TypeOf.Class,
      create: () => new ConvertSessionToTokenResponse()),
  'GetAccessToken':
      new TypeInfo(TypeOf.Class, create: () => new GetAccessToken()),
  'GetAccessTokenResponse':
      new TypeInfo(TypeOf.Class, create: () => new GetAccessTokenResponse()),
   'List<NavItem>': new TypeInfo(TypeOf.Class, create:() => new List<NavItem>()),
   'Map<String,List<NavItem>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<NavItem>>()),
   'NavItem': new TypeInfo(TypeOf.Class, create:() => new NavItem()),
   'GetNavItems': new TypeInfo(TypeOf.Class, create:() => new GetNavItems()),
   'GetNavItemsResponse': new TypeInfo(TypeOf.Class, create:() => new GetNavItemsResponse()),
 };

TypeContext _ctx =
    new TypeContext(typeName: 'JsonConverters', types: TypeInfos);

class ResponseError implements IConvertible {
  String errorCode;
  String fieldName;
  String message;
  Map<String, String> meta;

  ResponseError({this.errorCode, this.fieldName, this.message, this.meta});
  ResponseError.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    errorCode = json['errorCode'];
    fieldName = json['fieldName'];
    message = json['message'];
    meta = JsonConverters.toStringMap(json['meta']);
  }

  Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'fieldName': fieldName,
        'message': message,
        'meta': meta
      };
  TypeContext context = _ctx;
}

class ResponseStatus implements IConvertible {
  String errorCode;
  String message;
  String stackTrace;
  List<ResponseError> errors;
  Map<String, String> meta;

  ResponseStatus(
      {this.errorCode, this.message, this.stackTrace, this.errors, this.meta});

  ResponseStatus.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    errorCode = json['errorCode'];
    message = json['message'];
    stackTrace = json['stackTrace'];
    errors =
        JsonConverters.fromJson(json['errors'], 'List<ResponseError>', context);
    meta = JsonConverters.toStringMap(json['meta']);
  }

  Map<String, dynamic> toJson() => {
        'errorCode': errorCode,
        'message': message,
        'stackTrace': stackTrace,
        'errors': JsonConverters.toJson(errors, 'List<ResponseError>', context),
        'meta': meta
      };

  TypeContext context = _ctx;
}

abstract class QueryBase implements IConvertible {
  int skip;
  int take;
  String orderBy;
  String orderByDesc;
  String include;
  String fields;
  Map<String, String> meta;

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
    skip = json['skip'];
    take = json['take'];
    orderBy = json['orderBy'];
    orderByDesc = json['orderByDesc'];
    include = json['include'];
    fields = json['fields'];
    meta = JsonConverters.toStringMap(json['meta']);
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
  TypeContext context = _ctx;
}

abstract class QueryData<T> extends QueryBase {
  QueryData();
  QueryData.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() => super.toJson();
}

abstract class QueryDb<T> extends QueryBase {
  QueryDb();
  QueryDb.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() => super.toJson();
}

abstract class QueryDb1<T> extends QueryBase {
  QueryDb1();
  QueryDb1.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() => super.toJson();
}

abstract class QueryDb2<From, Into> extends QueryBase {
  QueryDb2();
  QueryDb2.fromJson(Map<String, dynamic> json) : super.fromJson(json);
  fromMap(Map<String, dynamic> json) {}
  Map<String, dynamic> toJson() => super.toJson();
}

class QueryResponse<T> implements IConvertible {
  int offset;
  int total;
  List<T> results;
  Map<String, String> meta;
  ResponseStatus responseStatus;

  QueryResponse(
      {this.offset, this.total, this.results, this.meta, this.responseStatus});
  QueryResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    offset = json['offset'];
    total = json['total'];
    results = JsonConverters.fromJson(json['results'],
        'List<${runtimeGenericTypeDefs(this, [0]).join(",")}>', context);
    meta = JsonConverters.toStringMap(json['meta']);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'total': total,
        'results': JsonConverters.toJson(results, 'List<T>', context),
        'meta': meta,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class Authenticate
    implements IReturn<AuthenticateResponse>, IPost, IConvertible {
  String provider;
  String state;
  String oauth_token;
  String oauth_verifier;
  String userName;
  String password;
  bool rememberMe;
  String Continue;
  String nonce;
  String uri;
  String response;
  String qop;
  String nc;
  String cnonce;
  bool useTokenCookie;
  String accessToken;
  String accessTokenSecret;
  Map<String, String> meta;

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
    provider = json['provider'];
    state = json['state'];
    oauth_token = json['oauth_token'];
    oauth_verifier = json['oauth_verifier'];
    userName = json['userName'];
    password = json['password'];
    rememberMe = json['rememberMe'];
    Continue = json['continue'];
    nonce = json['nonce'];
    uri = json['uri'];
    response = json['response'];
    qop = json['qop'];
    nc = json['nc'];
    cnonce = json['cnonce'];
    useTokenCookie = json['useTokenCookie'];
    accessToken = json['accessToken'];
    accessTokenSecret = json['accessTokenSecret'];
    meta = JsonConverters.toStringMap(json['meta']);
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

  createResponse() {
    return new AuthenticateResponse();
  }

  String getTypeName() {
    return "Authenticate";
  }

  TypeContext context = _ctx;
}

class AuthenticateResponse implements IConvertible {
  String userId;
  String sessionId;
  String userName;
  String displayName;
  String referrerUrl;
  String bearerToken;
  String refreshToken;
  List<String> roles;
  List<String> permissions;
  ResponseStatus responseStatus;
  Map<String, String> meta;

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
    userId = json['userId'];
    sessionId = json['sessionId'];
    userName = json['userName'];
    displayName = json['displayName'];
    referrerUrl = json['referrerUrl'];
    bearerToken = json['bearerToken'];
    refreshToken = json['refreshToken'];
    roles = JsonConverters.fromJson(json['roles'], 'List<String>', context);
    permissions = JsonConverters.fromJson(json['permissions'], 'List<String>', context);
    responseStatus = JsonConverters.fromJson(json['responseStatus'], 'ResponseStatus', context);
    meta = JsonConverters.toStringMap(json['meta']);
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
        'roles': JsonConverters.toJson(roles, 'List<String>', context)
        'permissions': JsonConverters.toJson(permissions, 'List<String>', context),
        'responseStatus': JsonConverters.toJson(responseStatus, 'ResponseStatus', context),
        'meta': meta
      };
  TypeContext context = _ctx;
}

class Register implements IReturn<RegisterResponse>, IPost, IConvertible {
  String userName;
  String firstName;
  String lastName;
  String displayName;
  String email;
  String password;
  bool autoLogin;
  String Continue;

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
    userName = json['userName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    displayName = json['displayName'];
    email = json['email'];
    password = json['password'];
    autoLogin = json['autoLogin'];
    Continue = json['continue'];
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

  createResponse() {
    return new RegisterResponse();
  }

  String getTypeName() {
    return "Register";
  }

  TypeContext context = _ctx;
}

class RegisterResponse implements IConvertible {
  String userId;
  String sessionId;
  String userName;
  String referrerUrl;
  String bearerToken;
  String refreshToken;
  ResponseStatus responseStatus;
  Map<String, String> meta;

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
    userId = json['userId'];
    sessionId = json['sessionId'];
    userName = json['userName'];
    referrerUrl = json['referrerUrl'];
    bearerToken = json['bearerToken'];
    refreshToken = json['refreshToken'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    meta = JsonConverters.toStringMap(json['meta']);
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
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context),
        'meta': meta
      };
  TypeContext context = _ctx;
}

class AssignRoles implements IReturn<AssignRolesResponse>, IPost, IConvertible {
  String userName;
  List<String> permissions;
  List<String> roles;

  AssignRoles({this.userName, this.permissions, this.roles});
  AssignRoles.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = json['userName'];
    permissions =
        JsonConverters.fromJson(json['permissions'], 'List<String>', context);
    roles = JsonConverters.fromJson(json['roles'], 'List<String>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context),
        'roles': JsonConverters.toJson(roles, 'List<String>', context)
      };

  createResponse() {
    return new AssignRolesResponse();
  }

  String getTypeName() {
    return "AssignRoles";
  }

  TypeContext context = _ctx;
}

class AssignRolesResponse implements IConvertible {
  List<String> allRoles;
  List<String> allPermissions;
  ResponseStatus responseStatus;

  AssignRolesResponse(
      {this.allRoles, this.allPermissions, this.responseStatus});
  AssignRolesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    allRoles =
        JsonConverters.fromJson(json['allRoles'], 'List<String>', context);
    allPermissions = JsonConverters.fromJson(
        json['allPermissions'], 'List<String>', context);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles, 'List<String>', context),
        'allPermissions':
            JsonConverters.toJson(allPermissions, 'List<String>', context),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class UnAssignRoles
    implements IReturn<UnAssignRolesResponse>, IPost, IConvertible {
  String userName;
  List<String> permissions;
  List<String> roles;

  UnAssignRoles({this.userName, this.permissions, this.roles});
  UnAssignRoles.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    userName = json['userName'];
    permissions =
        JsonConverters.fromJson(json['permissions'], 'List<String>', context);
    roles = JsonConverters.fromJson(json['roles'], 'List<String>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'permissions':
            JsonConverters.toJson(permissions, 'List<String>', context),
        'roles': JsonConverters.toJson(roles, 'List<String>', context)
      };

  createResponse() {
    return new UnAssignRolesResponse();
  }

  String getTypeName() {
    return "UnAssignRoles";
  }

  TypeContext context = _ctx;
}

class UnAssignRolesResponse implements IConvertible {
  List<String> allRoles;
  List<String> allPermissions;
  ResponseStatus responseStatus;

  UnAssignRolesResponse(
      {this.allRoles, this.allPermissions, this.responseStatus});
  UnAssignRolesResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    allRoles =
        JsonConverters.fromJson(json['allRoles'], 'List<String>', context);
    allPermissions = JsonConverters.fromJson(
        json['allPermissions'], 'List<String>', context);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'allRoles': JsonConverters.toJson(allRoles, 'List<String>', context),
        'allPermissions':
            JsonConverters.toJson(allPermissions, 'List<String>', context),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class CancelRequest implements IConvertible {
  String tag;

  CancelRequest({this.tag});
  CancelRequest.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    tag = json['tag'];
    return this;
  }

  Map<String, dynamic> toJson() => {'tag': tag};
  TypeContext context = _ctx;
}

class CancelRequestResponse implements IConvertible {
  String tag;
  Duration elapsed;
  ResponseStatus responseStatus;

  CancelRequestResponse({this.tag, this.elapsed, this.responseStatus});
  CancelRequestResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    tag = json['tag'];
    elapsed = JsonConverters.fromJson(json['elapsed'], 'Duration', context);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'tag': tag,
        'elapsed': JsonConverters.toJson(elapsed, 'Duration', context),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class UpdateEventSubscriber implements IConvertible {
  String id;
  List<String> subscribeChannels;
  List<String> unsubscribeChannels;

  UpdateEventSubscriber(
      {this.id, this.subscribeChannels, this.unsubscribeChannels});
  UpdateEventSubscriber.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    id = json['id'];
    subscribeChannels = JsonConverters.fromJson(
        json['subscribeChannels'], 'List<String>', context);
    unsubscribeChannels = JsonConverters.fromJson(
        json['unsubscribeChannels'], 'List<String>', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'subscribeChannels':
            JsonConverters.toJson(subscribeChannels, 'List<String>', context),
        'unsubscribeChannels':
            JsonConverters.toJson(unsubscribeChannels, 'List<String>', context)
      };
  TypeContext context = _ctx;
}

class UpdateEventSubscriberResponse implements IConvertible {
  ResponseStatus responseStatus;

  UpdateEventSubscriberResponse({this.responseStatus});
  UpdateEventSubscriberResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class GetEventSubscribers implements IConvertible {
  List<String> channels;

  GetEventSubscribers({this.channels});
  GetEventSubscribers.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    channels =
        JsonConverters.fromJson(json['channels'], 'List<String>', context);
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'channels': JsonConverters.toJson(channels, 'List<String>', context)};
  TypeContext context = _ctx;
}

class GetApiKeys implements IConvertible {
  String environment;

  GetApiKeys({this.environment});
  GetApiKeys.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    environment = json['environment'];
    return this;
  }

  Map<String, dynamic> toJson() => {'environment': environment};
  TypeContext context = _ctx;
}

class GetApiKeysResponse implements IConvertible {
  List<UserApiKey> results;
  ResponseStatus responseStatus;

  GetApiKeysResponse({this.results, this.responseStatus});
  GetApiKeysResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(json['results'], 'Duration', context);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'Duration', context),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class RegenerateApiKeys
    implements IReturn<RegenerateApiKeysResponse>, IPost, IConvertible {
  String environment;

  RegenerateApiKeys({this.environment});
  RegenerateApiKeys.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    environment = json['environment'];
    return this;
  }

  Map<String, dynamic> toJson() => {'environment': environment};

  createResponse() {
    return new RegenerateApiKeysResponse();
  }

  String getTypeName() {
    return "RegenerateApiKeys";
  }

  TypeContext context = _ctx;
}

class RegenerateApiKeysResponse implements IConvertible {
  List<UserApiKey> results;
  ResponseStatus responseStatus;

  RegenerateApiKeysResponse({this.results, this.responseStatus});
  RegenerateApiKeysResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    results = JsonConverters.fromJson(json['results'], 'Duration', context);
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results, 'Duration', context),
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class UserApiKey implements IConvertible {
  String key;
  String keyType;
  DateTime expiryDate;

  UserApiKey({this.key, this.keyType, this.expiryDate});
  UserApiKey.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    key = json['key'];
    keyType = json['keyType'];
    expiryDate =
        JsonConverters.fromJson(json['expiryDate'], 'DateTime', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'keyType': keyType,
        'expiryDate': JsonConverters.toJson(expiryDate, 'DateTime', context)
      };
  TypeContext context = _ctx;
}

class ConvertSessionToToken
    implements IReturn<ConvertSessionToTokenResponse>, IPost, IConvertible {
  bool preserveSession;

  ConvertSessionToToken({this.preserveSession});
  ConvertSessionToToken.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    preserveSession = json['preserveSession'];
    return this;
  }

  Map<String, dynamic> toJson() => {'preserveSession': preserveSession};

  createResponse() {
    return new ConvertSessionToTokenResponse();
  }

  String getTypeName() {
    return "ConvertSessionToToken";
  }

  TypeContext context = _ctx;
}

class ConvertSessionToTokenResponse implements IConvertible {
  Map<String, String> meta;
  String accessToken;
  ResponseStatus responseStatus;

  ConvertSessionToTokenResponse(
      {this.meta, this.accessToken, this.responseStatus});
  ConvertSessionToTokenResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    meta = JsonConverters.toStringMap(json['meta']);
    accessToken = json['accessToken'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'meta': meta,
        'accessToken': accessToken,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class GetAccessToken
    implements IReturn<GetAccessTokenResponse>, IPost, IConvertible {
  String refreshToken;

  GetAccessToken({this.refreshToken});
  GetAccessToken.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    refreshToken = json['refreshToken'];
    return this;
  }

  Map<String, dynamic> toJson() => {'refreshToken': refreshToken};

  createResponse() {
    return new GetAccessTokenResponse();
  }

  String getTypeName() {
    return "GetAccessToken";
  }

  TypeContext context = _ctx;
}

class GetAccessTokenResponse implements IConvertible {
  String accessToken;
  ResponseStatus responseStatus;

  GetAccessTokenResponse({this.accessToken, this.responseStatus});
  GetAccessTokenResponse.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    responseStatus = JsonConverters.fromJson(
        json['responseStatus'], 'ResponseStatus', context);
    return this;
  }

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'responseStatus':
            JsonConverters.toJson(responseStatus, 'ResponseStatus', context)
      };
  TypeContext context = _ctx;
}

class NavItem implements IConvertible
{
    String label;
    String href;
    bool exact;
    String id;
    String className;
    String iconHtml;
    String show;
    String hide;
    List<NavItem> children;
    Map<String,String> meta;

    NavItem({this.label,this.href,this.exact,this.id,this.className,this.iconHtml,this.show,this.hide,this.children,this.meta});
    NavItem.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        label = json['label'];
        href = json['href'];
        exact = json['exact'];
        id = json['id'];
        className = json['className'];
        iconHtml = json['iconHtml'];
        show = json['show'];
        hide = json['hide'];
        children = JsonConverters.fromJson(json['children'],'List<NavItem>',context);
        meta = JsonConverters.toStringMap(json['meta']);
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
        'children': JsonConverters.toJson(children,'List<NavItem>',context),
        'meta': meta
    };

    TypeContext context = _ctx;
}
class GetNavItems implements IReturn<GetNavItemsResponse>, IConvertible
{
    GetNavItems();
    GetNavItems.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetNavItemsResponse(); }
    String getTypeName() { return "GetNavItems"; }
    TypeContext context = _ctx;
}
class GetNavItemsResponse implements IConvertible
{
    String baseUrl;
    List<NavItem> results;
    Map<String,List<NavItem>> navItemsMap;
    Map<String,String> meta;
    ResponseStatus responseStatus;

    GetNavItemsResponse({this.baseUrl,this.results,this.navItemsMap,this.meta,this.responseStatus});
    GetNavItemsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        baseUrl = json['baseUrl'];
        results = JsonConverters.fromJson(json['results'],'List<NavItem>',context);
        navItemsMap = JsonConverters.fromJson(json['navItemsMap'],'Map<String,List<NavItem>>',context);
        meta = JsonConverters.toStringMap(json['meta']);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'baseUrl': baseUrl,
        'results': JsonConverters.toJson(results,'List<NavItem>',context),
        'navItemsMap': JsonConverters.toJson(navItemsMap,'Map<String,List<NavItem>>',context),
        'meta': meta,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class Tuple<T1, T2> extends Tuple2<T1, T2> {
  Tuple({T1 item1, T2 item2}) : super(item1: item1, item2: item2);
}

class Tuple2<T1, T2> implements IConvertible {
  T1 item1;
  T2 item2;

  Tuple2({this.item1, this.item2});
  Tuple2.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = json['item1'];
    item2 = json['item2'];
    return this;
  }

  Map<String, dynamic> toJson() => {'item1': item1, 'item2': item2};
  TypeContext context = _ctx;
}

class Tuple3<T1, T2, T3> implements IConvertible {
  T1 item1;
  T2 item2;
  T3 item3;

  Tuple3({this.item1, this.item2, this.item3});
  Tuple3.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = json['item1'];
    item2 = json['item2'];
    item3 = json['item3'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'item1': item1, 'item2': item2, 'item3': item3};
  TypeContext context = _ctx;
}

class Tuple4<T1, T2, T3, T4> implements IConvertible {
  T1 item1;
  T2 item2;
  T3 item3;
  T4 item4;

  Tuple4({this.item1, this.item2, this.item3, this.item4});
  Tuple4.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    item1 = json['item1'];
    item2 = json['item2'];
    item3 = json['item3'];
    item4 = json['item4'];
    return this;
  }

  Map<String, dynamic> toJson() =>
      {'item1': item1, 'item2': item2, 'item3': item3, 'item4': item4};
  TypeContext context = _ctx;
}

class KeyValuePair<K, V> implements IConvertible {
  K key;
  V value;

  KeyValuePair({this.key, this.value}) {}
  KeyValuePair.fromJson(Map<String, dynamic> json) {
    fromMap(json);
  }

  fromMap(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
    return this;
  }

  Map<String, dynamic> toJson() => {'key': key, 'value': value};
  TypeContext context = _ctx;
}
