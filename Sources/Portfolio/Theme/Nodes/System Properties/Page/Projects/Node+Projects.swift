import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func projectsPage(for page: Page, on site: Portfolio) -> Node {
        return .main(
            .id("site-main"),
            .class("site-main outer"),
            .div(
                 .class("inner"),
                 .div(
                    .class("site-about-header"),
                    .h2(.text("Projects"))
                 ),
                 .div(
                    .class("site-about-body"),
                    .contentBody(page.body)
                 )
            )
        )
    }
}
