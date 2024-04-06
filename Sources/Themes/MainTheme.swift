//
// MainTheme.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)
            
            Body {
                NavBar()
                
                page.body
                    .horizontalAlignment(.center)
                
                //IgniteFooter() Thank you Ignite!
                Footer()
            }
            .padding(.vertical, 80)
        }
    }
}
