## 3.0.5 (2025-10-29)

* Release 3.0.5

## 3.0.4 (2025-10-29)

* Release 3.0.4

## 3.0.3 (2025-10-29)

* Release 3.0.3

## 3.0.0

* Upgraded environment to `sdk: '>=3.0.0 <4.0.0'`
* Upgraded dependency to `http: ^1.2.1`
* Changed default base route to use [JSON /api predefined route](https://docs.servicestack.net/endpoint-routing#api-pre-defined-route)
* Add new `ClientFactory.legacy()` to create Clients configured with previous `/json/reply` Route

## 2.0.3

* Add new `ClientFactory.api()` and `ClientFactory.apiWith()` methods for calling `.api()` ServiceClient constructors
* Add new `JsonServiceClient.api()` and `JsonWebClient.api()` constructors configured to call ServiceStack pre-defined `/api` JSON route
* Add new `api` and `apiVoid` methods which return an `ApiResult<T>` value that encapsulates an API Response or Error

## 2.0.2

* Fix nullable toDouble method signature

## 2.0.1

* Update to latest code-gen of existing built-in DTOs

## 2.0.0

* Upgrade code base to null safety 

## 1.0.32

* Upgraded **http** dependency to ^0.13.3

## 1.0.31

* Added `getTokenCookie()` & `getRefreshTokenCookie()` APIs to `IServiceClient`

## 1.0.30

* Remove `null` values from `Inspect.dump()` output

## 1.0.29

* Improve support for handling minified types in release builds
* Add new `Log` provider abstraction and debug logging 

## 1.0.28

* Improve naked List handling in minified builds

## 1.0.26 

* Add Inspect for quickly viewing API responses
* Added host.dart abstraction with IO + Web providers

## 1.0.25 

* Downgrade **http** dependency to stable 0.12.2

## 1.0.24

* Add support for Refresh Token Cookies
* Include support for built-in EmptyResponse, IdResponse, StringResponse & StringsResponse DTOs

## 1.0.23

* Fix connection leak with auto retry connections
* Add `close()` API to IServiceClient + Dart VM + Web Service Clients
