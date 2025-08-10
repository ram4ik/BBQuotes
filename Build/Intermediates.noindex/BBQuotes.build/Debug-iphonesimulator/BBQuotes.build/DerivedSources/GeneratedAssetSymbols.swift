import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "BetterCallSaulButton" asset catalog color resource.
    static let betterCallSaulButton = DeveloperToolsSupport.ColorResource(name: "BetterCallSaulButton", bundle: resourceBundle)

    /// The "BetterCallSaulShadow" asset catalog color resource.
    static let betterCallSaulShadow = DeveloperToolsSupport.ColorResource(name: "BetterCallSaulShadow", bundle: resourceBundle)

    /// The "BreakingBadButton" asset catalog color resource.
    static let breakingBadButton = DeveloperToolsSupport.ColorResource(name: "BreakingBadButton", bundle: resourceBundle)

    /// The "BreakingBadShadow" asset catalog color resource.
    static let breakingBadShadow = DeveloperToolsSupport.ColorResource(name: "BreakingBadShadow", bundle: resourceBundle)

    /// The "ElCaminoButton" asset catalog color resource.
    static let elCaminoButton = DeveloperToolsSupport.ColorResource(name: "ElCaminoButton", bundle: resourceBundle)

    /// The "ElCaminoShadow" asset catalog color resource.
    static let elCaminoShadow = DeveloperToolsSupport.ColorResource(name: "ElCaminoShadow", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "bettercallsaul" asset catalog image resource.
    static let bettercallsaul = DeveloperToolsSupport.ImageResource(name: "bettercallsaul", bundle: resourceBundle)

    /// The "breakingbad" asset catalog image resource.
    static let breakingbad = DeveloperToolsSupport.ImageResource(name: "breakingbad", bundle: resourceBundle)

    /// The "elcamino" asset catalog image resource.
    static let elcamino = DeveloperToolsSupport.ImageResource(name: "elcamino", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "BetterCallSaulButton" asset catalog color.
    static var betterCallSaulButton: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .betterCallSaulButton)
#else
        .init()
#endif
    }

    /// The "BetterCallSaulShadow" asset catalog color.
    static var betterCallSaulShadow: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .betterCallSaulShadow)
#else
        .init()
#endif
    }

    /// The "BreakingBadButton" asset catalog color.
    static var breakingBadButton: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .breakingBadButton)
#else
        .init()
#endif
    }

    /// The "BreakingBadShadow" asset catalog color.
    static var breakingBadShadow: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .breakingBadShadow)
#else
        .init()
#endif
    }

    /// The "ElCaminoButton" asset catalog color.
    static var elCaminoButton: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .elCaminoButton)
#else
        .init()
#endif
    }

    /// The "ElCaminoShadow" asset catalog color.
    static var elCaminoShadow: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .elCaminoShadow)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "BetterCallSaulButton" asset catalog color.
    static var betterCallSaulButton: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .betterCallSaulButton)
#else
        .init()
#endif
    }

    /// The "BetterCallSaulShadow" asset catalog color.
    static var betterCallSaulShadow: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .betterCallSaulShadow)
#else
        .init()
#endif
    }

    /// The "BreakingBadButton" asset catalog color.
    static var breakingBadButton: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .breakingBadButton)
#else
        .init()
#endif
    }

    /// The "BreakingBadShadow" asset catalog color.
    static var breakingBadShadow: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .breakingBadShadow)
#else
        .init()
#endif
    }

    /// The "ElCaminoButton" asset catalog color.
    static var elCaminoButton: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .elCaminoButton)
#else
        .init()
#endif
    }

    /// The "ElCaminoShadow" asset catalog color.
    static var elCaminoShadow: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .elCaminoShadow)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "BetterCallSaulButton" asset catalog color.
    static var betterCallSaulButton: SwiftUI.Color { .init(.betterCallSaulButton) }

    /// The "BetterCallSaulShadow" asset catalog color.
    static var betterCallSaulShadow: SwiftUI.Color { .init(.betterCallSaulShadow) }

    /// The "BreakingBadButton" asset catalog color.
    static var breakingBadButton: SwiftUI.Color { .init(.breakingBadButton) }

    /// The "BreakingBadShadow" asset catalog color.
    static var breakingBadShadow: SwiftUI.Color { .init(.breakingBadShadow) }

    /// The "ElCaminoButton" asset catalog color.
    static var elCaminoButton: SwiftUI.Color { .init(.elCaminoButton) }

    /// The "ElCaminoShadow" asset catalog color.
    static var elCaminoShadow: SwiftUI.Color { .init(.elCaminoShadow) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "BetterCallSaulButton" asset catalog color.
    static var betterCallSaulButton: SwiftUI.Color { .init(.betterCallSaulButton) }

    /// The "BetterCallSaulShadow" asset catalog color.
    static var betterCallSaulShadow: SwiftUI.Color { .init(.betterCallSaulShadow) }

    /// The "BreakingBadButton" asset catalog color.
    static var breakingBadButton: SwiftUI.Color { .init(.breakingBadButton) }

    /// The "BreakingBadShadow" asset catalog color.
    static var breakingBadShadow: SwiftUI.Color { .init(.breakingBadShadow) }

    /// The "ElCaminoButton" asset catalog color.
    static var elCaminoButton: SwiftUI.Color { .init(.elCaminoButton) }

    /// The "ElCaminoShadow" asset catalog color.
    static var elCaminoShadow: SwiftUI.Color { .init(.elCaminoShadow) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "bettercallsaul" asset catalog image.
    static var bettercallsaul: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bettercallsaul)
#else
        .init()
#endif
    }

    /// The "breakingbad" asset catalog image.
    static var breakingbad: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .breakingbad)
#else
        .init()
#endif
    }

    /// The "elcamino" asset catalog image.
    static var elcamino: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .elcamino)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "bettercallsaul" asset catalog image.
    static var bettercallsaul: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bettercallsaul)
#else
        .init()
#endif
    }

    /// The "breakingbad" asset catalog image.
    static var breakingbad: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .breakingbad)
#else
        .init()
#endif
    }

    /// The "elcamino" asset catalog image.
    static var elcamino: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .elcamino)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

