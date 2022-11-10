import Plot

extension Node where Context == HTML.HeadContext {
    static func seo(for site : Portfolio, description: String? = nil) -> Node {
        return .group(
            .title("\(site.name) ‣ JiHoonAHN"),
            .meta(
                .name("description"),
                .content(site.description)
            ),
            .meta(
                .property("og:description"),
                .content(description ?? "")
            ),
            .meta(
                .property("og:url"),
                .content(site.url.description)
            ),
            .meta(
                .property("og:image"),
                .content("/images/Logo/portfolio_logo.jpg")
            ),
            .meta(
                .property("og:type"),
                .content("website")
            )
        )
    }
}
