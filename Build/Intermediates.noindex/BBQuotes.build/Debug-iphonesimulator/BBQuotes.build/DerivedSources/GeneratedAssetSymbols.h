#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.ri.BBQuotes";

/// The "BetterCallSaulButton" asset catalog color resource.
static NSString * const ACColorNameBetterCallSaulButton AC_SWIFT_PRIVATE = @"BetterCallSaulButton";

/// The "BetterCallSaulShadow" asset catalog color resource.
static NSString * const ACColorNameBetterCallSaulShadow AC_SWIFT_PRIVATE = @"BetterCallSaulShadow";

/// The "BreakingBadButton" asset catalog color resource.
static NSString * const ACColorNameBreakingBadButton AC_SWIFT_PRIVATE = @"BreakingBadButton";

/// The "BreakingBadShadow" asset catalog color resource.
static NSString * const ACColorNameBreakingBadShadow AC_SWIFT_PRIVATE = @"BreakingBadShadow";

/// The "ElCaminoButton" asset catalog color resource.
static NSString * const ACColorNameElCaminoButton AC_SWIFT_PRIVATE = @"ElCaminoButton";

/// The "ElCaminoShadow" asset catalog color resource.
static NSString * const ACColorNameElCaminoShadow AC_SWIFT_PRIVATE = @"ElCaminoShadow";

/// The "bettercallsaul" asset catalog image resource.
static NSString * const ACImageNameBettercallsaul AC_SWIFT_PRIVATE = @"bettercallsaul";

/// The "breakingbad" asset catalog image resource.
static NSString * const ACImageNameBreakingbad AC_SWIFT_PRIVATE = @"breakingbad";

/// The "elcamino" asset catalog image resource.
static NSString * const ACImageNameElcamino AC_SWIFT_PRIVATE = @"elcamino";

#undef AC_SWIFT_PRIVATE
