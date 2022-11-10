import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func page(for page: Page, context: PublishingContext<Portfolio>) -> Node {
        switch page.path.string {
        case Portfolio.SectionID.projects.rawValue: return projectsPage(for: page, on: context.site)
        case Portfolio.SectionID.contact.rawValue: return contactPage(for: page, on: context.site)
        default: return .defaultPage(for: context.site)
        }
    }
}
