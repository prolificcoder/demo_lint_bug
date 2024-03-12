
import 'demo_lint_bug_platform_interface.dart';

class DemoLintBug {
  Future<String?> getPlatformVersion() {
    return DemoLintBugPlatform.instance.getPlatformVersion();
  }
}
