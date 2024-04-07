import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() {
        let site = ExampleSite()

        do {
            try site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "とんとんぼ Site"
    var baseTitle = " – とんとんぼ Site"
    var url = URL("https://portfolio-f6628.web.app")

    var language: Language = .japanese
    var builtInIconsEnabled = true
    var syntaxHighlighters = [SyntaxHighlighter.swift, .python, .ruby]
    var feedConfiguration = FeedConfiguration(
        mode: .full,
        contentCount: 20,
        image: .init(url: "https://avatars.githubusercontent.com/u/70003919?v=4", width: 32, height: 32)
    )
    
    var robotsConfiguration = Robots()
    var author = "とんとんぼ"
    var homePage = Home()
    var tagPage = Tags()
    var theme = MyTheme()

    var pages: [any StaticPage] {
        ProductContent()
    }

    var layouts: [any ContentPage] {
        Story()
    }
}


