// Copyright (c) 2019 Manabu Nakazawa. Licensed under the MIT license. See LICENSE in the project root for license information.

import Foundation
import XCTest

// TODO: refactor after https://bugs.swift.org/browse/SR-2866 was solved
class TestResources {
    enum TrendingPageType {
        case top
        case language(name: String)
    }

    static var rootURL: URL {
        let url = URL(fileURLWithPath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .appendingPathComponent("TestResources")

        guard url.hasDirectoryPath else {
            fatalError("Test resources folder doesn't exist: \(url.absoluteString)")
        }

        return url
    }

    static func trendingPage(of pageType: TrendingPageType) -> String {
        let fileName: String
        switch pageType {
        case .top:
            fileName = "github.com_trending.html"
        case .language(let name):
            fileName = "github.com_trending_\(name).html"
        }
        return try! String(
            contentsOf: rootURL.appendingPathComponent(fileName),
            encoding: .utf8)
    }
}
