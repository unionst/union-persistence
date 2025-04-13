//
//  Optional+Load.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Optional where Wrapped: Decodable {
    static func load() -> Optional<Wrapped> {
        Wrapped.load()
    }
}
