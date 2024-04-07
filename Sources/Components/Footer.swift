import Foundation
import Ignite

struct Footer: Component {
    public init() { }

    public func body(context: PublishingContext) -> [any PageElement] {
        Group {
//            Text {
//                Link("X(Twitter)", target: "").role(.dark)
//            }
            Text {
                "This Site is OSS: "
                Link("GitHub Repo", target: "https://github.com/KaitoMuraoka/Portfolio").role(.dark)
            }
            Text {
                Link("RSS", target: "https://portfolio-f6628.web.app/feed.rss").role(.dark)
            }
            Text {
                "This Site Created with "
                Link("Ignite", target: URL("https://github.com/twostraws/Ignite")).role(.dark)
            }
        }
        .horizontalAlignment(.trailing)
        .margin(.top, .extraLarge)
    }
}
