import Publish
import Plot

extension Theme where Site == Portfolio {
    static var portfolio: Self {
        Theme(htmlFactory: PortfolioHTMLFactory())
    }
}
