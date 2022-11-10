import Plot

extension Node where Context == HTML.DocumentContext {
    static func head(for site : Portfolio, description: String? = nil) -> Node {
        return Node.head(
            .meta(
                .charset(.utf8),
                .name("viewport"),
                .content("width=device-width, initial-scale=1")
            ),
            .icon_Link(),
            .font_Link(),
            .css_Links(),
            .script_Links(),
            .seo(for: site)
        )
    }
}
