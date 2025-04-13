//
//  Array+Load.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Array where Element: Decodable {
    static func load() -> Array<Element> {
        Array<Element>.load() ?? []
    }
}
