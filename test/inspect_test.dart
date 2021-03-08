library client_test;
import 'package:test/test.dart';
import '../lib/inspect.dart';
import 'dart:convert';
import 'dart:io';

class GithubRepo {
  final String name;
  final String description;
  final String lang;
  final int watchers;
  final int forks;

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

  test('Can use Inspect', () {
    var json = File('test_resources/repos.json').readAsStringSync();
    Iterable repos = jsonDecode(json);

    final orgRepos = repos.map((e) => GithubRepo.fromJson(e)).toList();
    orgRepos.sort((a, b) => b.watchers - a.watchers);

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

}