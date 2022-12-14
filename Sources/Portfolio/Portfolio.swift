import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Portfolio: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case intro
        case projects
        case contact
        
        var name: String {
            switch self {
            case .intro: return "Introduce"
            case .projects: return "Projects"
            case .contact: return "Contact"
            }
        }
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://JiHoon.me")!
    var name = "Portfolio"
    var description = "A description of Portfolio"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var socialMediaLinks: [SocialMediaLink] { [.github,.email] }
}
