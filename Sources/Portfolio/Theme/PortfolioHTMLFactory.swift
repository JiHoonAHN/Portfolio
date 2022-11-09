import Publish
import Plot

struct PortfolioHTMLFactory: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<Portfolio>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeSectionHTML(for section: Section<Portfolio>, context: PublishingContext<Portfolio>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeItemHTML(for item: Item<Portfolio>, context: PublishingContext<Portfolio>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Portfolio>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Portfolio>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Portfolio>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context.site),
                    .footer(for: context.site)
                )
            )
        )
    }
}
