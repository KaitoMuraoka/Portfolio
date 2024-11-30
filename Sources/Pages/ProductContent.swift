import Foundation
import Ignite

struct ProductContent: StaticPage {
    var title = "とんとんぼ's Product Content"
    
    func body(context: PublishingContext) -> [BlockElement] {
        let ossContentTag = "contribute"
        let productContentTag = "product"
        
        Text("My Product")
            .font(.title1)
            .horizontalAlignment(.center)
            .margin([.top, .bottom], 50)
        
        Section {
            for item in context.content(tagged: productContentTag) {
                ContentPreview(for: item)
                    .width(3)
                    .margin(.bottom)
            }
        }

        Text("The OSS project I contributed to")
            .font(.title1)
            .horizontalAlignment(.center)
            .margin([.top, .bottom], 50)
        
        Section {
            for item in context.content(tagged: ossContentTag) {
                ContentPreview(for: item)
                    .width(3)
                    .margin(.bottom)
            }
        }
        .horizontalAlignment(.center)
        
        Text("Content's Tags")
            .font(.title3)
            .margin([.top, .bottom], 20)
        List {
            Link("All tags", target: "/tags")
            Link("Swift(おすすめ！)", target: "/tags/swift")
        }
    }
}
