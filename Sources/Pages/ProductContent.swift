import Foundation
import Ignite

struct ProductContent: StaticPage {
    var title = "とんとんぼ's Product Content"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text("I Created My Prodcut!")
        
        Section {
            for item in context.allContent {
                ContentPreview(for: item)
                    .width(3)
                    .margin(.bottom)
            }
        }
        
        List {
            Link("All tags", target: "/tags")
            Link("Swift(おすすめ！)", target: "/tags/swift")
        }
    }
}
