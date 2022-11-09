import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func homePage(for items: [Item<Portfolio>],on site: Portfolio) -> Node {
        return .main(
            .id("site-main"),
            .class("site-main outer"),
            .div(
                .class("inner"),
                .div(
                    .class("post-feed")
                    
                )
            )
        )
    }
}
