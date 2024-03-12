import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'demo_lint_bug_platform_interface.dart';

/// An implementation of [DemoLintBugPlatform] that uses method channels.
class MethodChannelDemoLintBug extends DemoLintBugPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('demo_lint_bug');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
