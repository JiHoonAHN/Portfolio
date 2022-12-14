import Foundation
import Publish
import SplashPublishPlugin
import Plot

try Portfolio().publish(using: [
    .installPlugin(.splash(withClassPrefix: "")),
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .portfolio),
    .generateRSSFeed(including: [.intro]),
    .move404FileForBlog(),
    .generateSiteMap(),
    .deploy(using: .gitHub("JiHoonAHN/Portfolio"))
])
