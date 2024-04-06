//
// Story.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct Story: ContentPage {
    func body(content: Content, context: PublishingContext) -> [any BlockElement] {
        Text(content.title)
            .font(.title1)
        
        Text("Reading minutes: \(content.estimatedReadingMinutes) min")

        if let image = content.image {
            Text {
                Image(image, description: content.imageDescription)
                    .resizable()
                    .cornerRadius(20)
                    .frame(maxHeight: 300)
            }
            .horizontalAlignment(.center)
        }

        Text(content.body)
        
        
        if content.hasTags {
            Card {
                Text("Date: \(content.date)")
                Text("Words: \(content.estimatedWordCount)")
            }
        }

    }
}
