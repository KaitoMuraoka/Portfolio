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
    var url = URL("https://www.yoursite.com")

    var language: Language = .japanese
    var builtInIconsEnabled = true
    var syntaxHighlighters = [SyntaxHighlighter.swift, .python, .ruby]
//    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 20, image: .init(url: "https://www.yoursite.com/images/icon32.png", width: 32, height: 32))
//    var robotsConfiguration = Robots()
    var author = "とんとんぼ"

    var homePage = Home()
    var tagPage = Tags()
    var theme = MyTheme()

//    var pages: [any StaticPage] {
//        ContentExamples()
//        GridExamples()
//        NavigationExamples()
//        TextExamples()
//
//        AccordionExamples()
//        AlertExamples()
//        BadgeExamples()
//        CardExamples()
//        CarouselExamples()
//        CodeExamples()
//        DropdownExamples()
//        EmbedExamples()
//        ImageExamples()
//        IncludeExamples()
//        LinkExamples()
//        ListExamples()
//        QuoteExamples()
//        StylingExamples()
//        TableExamples()
//    }

    var layouts: [any ContentPage] {
        Story()
    }
}


