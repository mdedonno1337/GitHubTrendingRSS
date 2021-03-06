// Copyright (c) 2018 Manabu Nakazawa. Licensed under the MIT license. See LICENSE in the project root for license information.

import Foundation

public struct RepositoryPageLink: PageLinkable {
    public var href: String

    public init(href: String) {
        self.href = href
    }

    public var url: URL {
        return Const.gitHubBaseURL.appendingPathComponent(href)
    }

    public var readMeAPIEndpointURL: URL {
        return URL(string: "\(Const.gitHubAPIBaseURL)/repos/\(userID)/\(repositoryName)/readme")!
    }

    public var userID: String {
        return String(splittedHref[0])
    }

    public var repositoryName: String {
        return String(splittedHref[1])
    }

    private var splittedHref: [Substring] {
        return href.split(separator: "/")
    }
}
