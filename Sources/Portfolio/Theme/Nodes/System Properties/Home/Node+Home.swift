import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func homePage(on site: Portfolio) -> Node {
        return .main(
            .id("site-main"),
            .class("site-main outer"),
            .div(
                .class("inner"),
                .div(
                   .class("site-about-header"),
                   .h2(.text("Home"))
                )
            )
        )
    }
}
