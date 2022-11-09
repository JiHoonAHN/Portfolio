import Plot

extension Node where Context == HTML.BodyContext {
    
    private static var sections: [Portfolio.SectionID] { [.projects, .services, .opensources, .contact] }
    
    static func footer(for site: Portfolio) -> Node {
        return .footer(
            .class("site-footer outer"),
            .div(
                .class("inner"),
                .section(
                    .class("copyright"),
                    .a(
                        .text("Pelagornis"),
                        .href("https://github.com/Pelagornis")
                    ),
                    .text(" © 2022")
                ),
                .nav(
                    .class("site-footer-nav"),
                    .ul(
                        .class("nav"),
                        .li(
                            .class("nav-list-item"),
                            .a(
                                .text("Home"),
                                .href("/")
                            )
                        ),
                        .forEach(sections) { section in
                                .li(
                                    .class("nav-list-item"),
                                    .a(
                                        .text(section.name),
                                        .href(site.path(for: section))
                                    )
                                )
                        },
                        .li(
                            .class("nav-list-item"),
                            .a(
                                .text("Blog"),
                                .href("https://blog.jihoon.me")
                            )
                        )
                    )
                ),
                .ul(
                    .class("site-footer-social-list"),
                    .forEach(site.socialMediaLinks, { socialMedia in
                            .li(
                                .class("site-footer-social-list-item"),
                                .a(
                                    .i(
                                        .class(socialMedia.icon)
                                    ),
                                    .href(socialMedia.url)
                                )
                            )
                    })
                )
            )
        )
    }
}
