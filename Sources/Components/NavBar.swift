//
// NavBar.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

/// An example navigation bar, demonstrating how to create reusable components.
struct NavBar: Component {
    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: Text("とんとんぼ").foregroundStyle(.white)) {
            Link("Created Product", target: ProductContent())
                .role(.light)
            Link("GitHub", target: "https://github.com/KaitoMuraoka")
                .role(.light)
            Link("X(Twitter)", target: "https://twitter.com/Ktombow1110")
                .role(.light)
        }
        .navigationItemAlignment(.trailing)
        .background(.skyBlue)
        .position(.fixedTop)
    }
}
