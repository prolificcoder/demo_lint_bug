import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_lint_bug/demo_lint_bug_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDemoLintBug platform = MethodChannelDemoLintBug();
  const MethodChannel channel = MethodChannel('demo_lint_bug');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
