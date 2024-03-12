import 'package:flutter_test/flutter_test.dart';
import 'package:demo_lint_bug/demo_lint_bug.dart';
import 'package:demo_lint_bug/demo_lint_bug_platform_interface.dart';
import 'package:demo_lint_bug/demo_lint_bug_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDemoLintBugPlatform
    with MockPlatformInterfaceMixin
    implements DemoLintBugPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DemoLintBugPlatform initialPlatform = DemoLintBugPlatform.instance;

  test('$MethodChannelDemoLintBug is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDemoLintBug>());
  });

  test('getPlatformVersion', () async {
    DemoLintBug demoLintBugPlugin = DemoLintBug();
    MockDemoLintBugPlatform fakePlatform = MockDemoLintBugPlatform();
    DemoLintBugPlatform.instance = fakePlatform;

    expect(await demoLintBugPlugin.getPlatformVersion(), '42');
  });
}
