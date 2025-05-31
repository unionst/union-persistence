//
//  Optional+Load.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Optional where Wrapped: Decodable {
    public static func load(_ key: String? = nil, using userDefaults: UserDefaults = .standard) -> Optional<Wrapped> {
        let key = key ?? String(describing: Wrapped.self)
        return Wrapped.load(key, using: userDefaults)
    }
}
