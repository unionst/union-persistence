//
//  Decodable+Load.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Decodable {
    public static func load(_ key: String? = nil, using userDefaults: UserDefaults = .standard) -> Self? {
        let key = key ?? String(describing: Self.self)
        guard let data = userDefaults.data(forKey: key) else { return nil }
        let decoder = JSONDecoder()
        return try? decoder.decode(Self.self, from: data)
    }
}
