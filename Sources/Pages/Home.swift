//
// Home.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
//        Text("Welcome to とんとんぼハウス!")
//            .font(.title1)

//        let welcomeMessage = """
//やあ （´・ω・｀)<br>
//ようこそ、とんとんぼハウスへ。<br>
//このテキーラはサービスだから、まず飲んで落ち着いて欲しい。<br>
//<br>
//うん、「また」なんだ。済まない。<br>
//仏の顔もって言うしね、謝って許してもらおうとも思っていない。<br>
//<br>
//でも、このサイトを見たとき、君は、きっと言葉では言い表せない「Swift」みたいなものを感じてくれたと思う。<br>
//殺伐とした世の中で、そういう気持ちを忘れないで欲しい<br>
//そう思って、このサイトを作ったんだ。<br>
//<br>
//じゃあ、注文を聞こうか。<br>
//"""
//        Text(welcomeMessage).font(.body)
        showTopSection()
            .horizontalAlignment(.center)
            .padding(.top, 264)
        
        showAboutMeSection()
            .horizontalAlignment(.center)
            .padding(.top, 264)
        
        Text("Contents")

//
//        List {
//            Link("Accordions", target: AccordionExamples())
//            Link("Alerts", target: AlertExamples())
//            Link("Badges", target: BadgeExamples())
//            Link("Buttons", target: ButtonExamples())
//            Link("Cards", target: CardExamples())
//            Link("Carousels", target: CarouselExamples())
//            Link("Code", target: CodeExamples())
//            Link("Dropdowns", target: DropdownExamples())
//            Link("Embeds", target: EmbedExamples())
//            Link("Images", target: ImageExamples())
//            Link("Includes", target: IncludeExamples())
//            Link("Links", target: LinkExamples())
//            Link("Lists", target: ListExamples())
//            Link("Quotes", target: QuoteExamples())
//            Link("Tables", target: TableExamples())
//        }
//        .listStyle(.unordered(.default))

        // TODO: 追加
//        NavigationBar {
//            Link("About", target: About.self)
//            Link("Articles", target: Articles.self)
//        }

//        Carousel {
//            Slide(background: "singapore.jpg") {
//                Text("Example headline.")
//                    .font(.title1)
//
//                Text("Some representative placeholder content for the first slide of the carousel.")
//                    .foregroundStyle(.secondary)
//
//                Text {
//                    Link("Sign up Today", target: self)
//                        .linkStyle(.button)
//                }
//            }
//
//            Slide(background: "dog.jpg") {
//                Text("Another example headline.")
//                    .font(.title1)
//
//                Text("Some representative placeholder content for the first slide of the carousel.")
//
//                Text {
//                    Link("Learn more", target: self)
//                        .linkStyle(.button)
//                }
//            }
//        }

//        Image("singapore.jpg", description: "Singapore Changi airport")
//            .lazy()
//            .cornerRadius(.bottom, "20%")

//        Accordion {
//            Section("Section 1") {
//                Text {
//                    "This is some important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//
//            Section("Section 2") {
//                Text {
//                    "This is more important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//
//            Section("Section 3") {
//                Text {
//                    "This is even more important text."
//                    Link("Click Me", target: About.self)
//                }
//            }
//        }
//        .openMode(.all)
//
//        Section {
//            Quote {
//                Text("This is an important quote.")
//            }
//            .width(3)
//
//        }
//
//        Text {
//            "Big tooltip here"
//            Link("Go home", target: Home())
//                .hint(text: "This is very important.")
//        }
//

//        Alert {
//            "A simple primary alert—check it out!"
//        }
//        .role(.danger)
//

//
//        Row {
//            Embed(url: URL(string: "https://www.youtube.com/live/n4SCMC25BxY?feature=shared")!, title: "My Video")
//                .embedType(.youTube)
//                .width(12)
//        }
//
//        Include("important.html")
    }
    
    private func showTopSection() -> BlockElement {
        Section {
            Image("/images/tonfly.png", description: "This is My Icon!")
                .frame(maxWidth: 400)
                .horizontalAlignment(.center)
                .padding([.leading, .trailing], 20)

            Group {
                Text("Hi There 👋")
                    .font(.title1)
                    .padding(.bottom, .large)
                
                Text("I'm とんとんぼ")
                    .font(.title1)
                    .padding(.bottom, .large)

                Text("iOS Developer")
                    .font(.title1)
                
                Section {
                    Text{
                        // TODO: 辞書配列で管理
                        Link("X(Twitter)", target: "https://twitter.com/Ktombow1110")
                            .linkStyle(.button)
                            .role(.secondary)
                            .margin(10)
                        
                        Link("GitHub", target: "https://twitter.com/Ktombow1110")
                            .linkStyle(.button)
                            .role(.secondary)
                            .margin(10)

                        Link("Qiita", target: "https://twitter.com/Ktombow1110")
                            .linkStyle(.button)
                            .role(.secondary)
                            .margin(10)
                    }
                    .horizontalAlignment(.center)
                }
                .horizontalAlignment(.center)
            }
            .horizontalAlignment(.center)
            .padding(.leading, 20)
        }
    }
    
    private func showAboutMeSection() -> BlockElement{
        Group {
            Text("About me")
                .font(.title1)
                .horizontalAlignment(.center)

            Section {
                Card {
                    Text("I live in Minato-ku, Tokyo🗼")
                    Text("From Chigasaki, Kanagawa🌊")
                    Text("🎓Department of Physics, Faculty of Science, Tokai University <br> (東海大学 理学部 物理学科)")
                    Text("")
                } header: { "Basic Info" }.horizontalAlignment(.center)

                Card {
                    Text("Swift: 2023/4 - Current")
                    Text("Kotlin: 2023/4 - Current")
                    Text("Java: 2023/4 - Current")
                } header: { "Programing Language Skill" }.horizontalAlignment(.center)

                Card {
                    Text("Xcode, CocoaPods, Carthage, Swift Package Manager")
                    Text("Firebase(Hosting, Crashlytics, RemoteConfig)")
                    Text("AndroidStudio, Android View")
                } header: {
                    "Tool Skill"
                }.horizontalAlignment(.center)
                
                Card {
                    Text("iOS 新卒研修・教育")
                    Text("社内イベントの提案・企画・運営")
                    Text("技術イベント(LT会も含む)の登壇")
                } header: {
                    "Other Skill"
                }.horizontalAlignment(.center)
            }.columns(2)
        }
    }
}
