library client_test;

import 'package:test/test.dart';
import '../lib/inspect.dart';
import 'dart:convert';
import 'dart:io';
import '../lib/client.dart';
import 'dtos/techstacks.dtos.dart';

class GithubRepo {
  final String? name;
  final String? description;
  final String? lang;
  final int? watchers;
  final int? forks;

  GithubRepo(
      {this.name, this.description, this.lang, this.watchers, this.forks});

  factory GithubRepo.fromJson(Map<String, dynamic> json) {
    return GithubRepo(
        name: json['name'],
        description: json['description'],
        lang: json['language'],
        watchers: json['watchers_count'],
        forks: json['forks']);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'lang': lang,
        'watchers': watchers,
        'forks': forks,
      };
}

void main() {
  group('Inspect tests', () {
    test('Can use Inspect', () {
      var json = File('test_resources/repos.json').readAsStringSync();
      Iterable repos = jsonDecode(json);

      final orgRepos = repos.map((e) => GithubRepo.fromJson(e)).toList();
      orgRepos.sort((a, b) => b.watchers! - a.watchers!);

      var dump = Inspect.dump(orgRepos.take(3));
      expect(dump, isNotEmpty);
      var orgName = 'dart-lang';
      print('Top 3 ${orgName} Github Repos:');
      print(dump);

      var table = Inspect.dumpTable(orgRepos.take(10));
      print('\nTop 10 ${orgName} Github Repos:');
      expect(table, isNotEmpty);
      print(table);

      Inspect.vars({'orgRepos': orgRepos});
    });

    test('Does not emit nulls on Typed DTOs', () async {
      var client = JsonServiceClient("https://techstacks.io");
      var response = await client.get((FindTechnologies()
        ..vendorName = "Google"
        ..take = 3
        ..orderByDesc = "ViewCount"
        ..fields = "Id,Name,ProductUrl,Tier,VendorName"));

      var dump = Inspect.dump(response);
      expect(dump, isNot(contains("null")));
      print(dump);

      expect(response.total, equals(20));
      expect(response.results!.length, equals(3));
      var names = response.results!.map((x) => x.name).join(",");
      expect(names, equals("AngularJS,Go,Protocol Buffers"));
      var ids = response.results!.map((x) => x.id.toString()).join(",");
      expect(ids, equals("7,18,77"));
      var tiers = response.results!
          .map((x) => rightPart(x.tier.toString(), "."))
          .join(",");
      expect(tiers, equals("Client,ProgrammingLanguage,Server"));
    });
  });
}
