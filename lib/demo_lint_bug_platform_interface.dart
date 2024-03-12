import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'demo_lint_bug_method_channel.dart';

abstract class DemoLintBugPlatform extends PlatformInterface {
  /// Constructs a DemoLintBugPlatform.
  DemoLintBugPlatform() : super(token: _token);

  static final Object _token = Object();

  static DemoLintBugPlatform _instance = MethodChannelDemoLintBug();

  /// The default instance of [DemoLintBugPlatform] to use.
  ///
  /// Defaults to [MethodChannelDemoLintBug].
  static DemoLintBugPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DemoLintBugPlatform] when
  /// they register themselves.
  static set instance(DemoLintBugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
