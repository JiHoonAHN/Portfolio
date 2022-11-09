import Foundation
import Publish
import SplashPublishPlugin
import Plot

try Portfolio().publish(using: [
    .installPlugin(.splash(withClassPrefix: "")),
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .portfolio),
    .generateRSSFeed(including: [.services]),
//    .move404FileForBlog(),
    .generateSiteMap(),
    .deploy(using: .gitHub("JiHoonAHN/Blog"))
])
