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
        NavigationBar(logo: Text("Hello, Swift").font(.title1)) {

//            Link("About", target: "#")
//            Link("Experiense", target: "#")
//            Link("Project", target: "#")

            Link("Created Product", target: ProductContent())
            Link("GitHub", target: "https://twitter.com/Ktombow1110")
            Link("X(Twitter)", target: "https://twitter.com/Ktombow1110")
        }
        .navigationItemAlignment(.trailing)
        .backgroundColor(.white)
        .position(.fixedTop)
    }
}
