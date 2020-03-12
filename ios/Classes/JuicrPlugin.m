#import "JuicrPlugin.h"
#if __has_include(<juicr/juicr-Swift.h>)
#import <juicr/juicr-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "juicr-Swift.h"
#endif

@implementation JuicrPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJuicrPlugin registerWithRegistrar:registrar];
}
@end
