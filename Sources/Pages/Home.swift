//
// Home.swift
// IgniteSamples
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation
import Ignite

struct Home: StaticPage {
    var title = "とんとんぼ"
    
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
            .padding(.top, 134)
        
        showAboutMeSection()
            .horizontalAlignment(.center)
            .padding(.top, 134)
        
        showContents()
            .horizontalAlignment(.center)
            .padding(.top, 134)

        
    }
    private func showTopSection() -> BlockElement {
        Section {
            Image("/images/tonfly.png", description: "This is My Icon!")
                .frame(width: 350)
            
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
                        
                        Link("GitHub", target: "https://github.com/KaitoMuraoka")
                            .linkStyle(.button)
                            .role(.secondary)
                            .margin(10)
                        
                        Link("Qiita", target: "https://qiita.com/KaitoMuraoka")
                            .linkStyle(.button)
                            .role(.secondary)
                            .margin(10)
                    }
                }
            }
        }
    }
    
    private func showAboutMeSection() -> BlockElement{
        Group {
            Text("About me")
                .font(.title1)
                .padding(.bottom, 20)
            
            Section {
                Card {
                    Text("I live in Minato-ku, Tokyo🗼")
                    Text("From Chigasaki, Kanagawa🌊")
                    Text("🎓Department of Physics, Faculty of Science, Tokai University <br> (東海大学 理学部 物理学科)")
                } header: { "Basic Info" }.horizontalAlignment(.center)
                
                Card {
                    Text {
                        Link("どすこい塾", target: "https://dosukoi-juku.github.io/DosukoiWebSite/")
                            .role(.dark)
                    }
                    
                    Text{
                        Link("iOS Osushi", target: "https://ios-osushi.github.io/")
                            .role(.dark)
                    }
                } header: { "My current community" }.horizontalAlignment(.center)
                
                Card {
                    Text("iOS(Swift): 2023/4 - Current")
                    Text("Android(Kotlin, Java): 2023/4 - Current")
                    Text("OSS Activities: 2023/7 - Current")
                    Link("At Coder", target: "https://atcoder.jp/users/Ktombow1110").role(.secondary)
                } header: { "Skill" }.horizontalAlignment(.center)
                
                Card {
                    Text("iOS 新卒研修・教育")
                    Text("社内勉強会の提案・企画・運営")
                    Text("技術イベント(LT会も含む)の登壇")
                } header: { "Other Skill" }.horizontalAlignment(.center)
            }
            .columns(2)
        }
    }
    
    private func showContents() -> BlockElement {
        let backgroundOpacityValue = 0.3
        
        return Group {
            Text("Contents")
                .font(.title1)
                .padding(.bottom, 20)
            
            Carousel {
                Slide(background: "/images/SNSIcons/GitHub_Logo_White.png") {
                    Text("Product")
                        .font(.title2)
                    
                    Text("Here are some of the products I have created.<br>私が作ったプロダクトを紹介します")
                        .font(.lead)
                    
                    Text {
                        Link("Go Product Page", target: ProductContent())
                            .linkStyle(.button)
                    }
                }
                .backgroundOpacity(backgroundOpacityValue)
                
                Slide(background: "/images/SNSIcons/qiita-icon.png") {
                    Text("Qiita")
                        .font(.title2)
                    
                    Text("What I have learned is mainly posted here.<br>学んだことは主にここに投稿しています。")
                        .font(.lead)
                    
                    Text {
                        Link("Go Qiita site", target: "https://qiita.com/KaitoMuraoka")
                            .linkStyle(.button)
                    }
                }
                .backgroundOpacity(backgroundOpacityValue)
                
                Slide(background: "/images/note-logo.png") {
                    Text("note")
                        .font(.title2)
                    
                    Text("I am posting here about non-technical matters.<br>技術以外のことはここに投稿しています。")
                        .font(.lead)
                    
                    Text {
                        Link("Go note site", target: "https://note.com/ktombow1110")
                            .linkStyle(.button)
                    }
                }
                .backgroundOpacity(backgroundOpacityValue)
            }
        }
    }
}
