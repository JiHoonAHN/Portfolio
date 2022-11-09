import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    private static var sections: [Portfolio.SectionID] { [.projects, .services, .opensources] }
    
    static func header(for site: Portfolio) -> Node {
        return .header(
            .id("portfolio-head"),
            .class("portfolio-head outer"),
            .nav(
                .class("portfolio-head-inner inner"),
                .div(
                    .class("portfolio-head-brand"),
                    .a(
                        .class("portfolio-head-logo"),
                        .img(.src("/images/logo/logo.svg")),
                        .href("/")
                    ),
                    .div(
                        .class("portfolio-head-brand-wrapper"),
                        .button(
                            .class("portfolio-menu"),
                            .i(
                                .class("fa-solid fa-bars")
                            )
                        )
                    )
                ),
                .div(
                    .class("portfolio-head-menu"),
                    .ul(
                        .class("nav"),
                        .li(
                            .class("nav-item"),
                            .a(
                                .text("Home"),
                                .href("/")
                            )
                        ),
                        .forEach(sections) { section in
                                .li(
                                    .class("nav-item"),
                                    .a(
                                        .text(section.name),
                                        .href(site.path(for: section))
                                    )
                                )
                        },
                        .li(
                            .class("nav-item"),
                            .a(
                                .text("Blog"),
                                .href("https://blog.jihoon.me")
                            )
                        )
                    )
                )
            ),
            .script(
                .src("/js/Header/header-menu.js"),
                .defer()
            ),
            .script(
                .src("/js/Header/header-scroll.js"),
                .defer()
            )
        )
    }
}
