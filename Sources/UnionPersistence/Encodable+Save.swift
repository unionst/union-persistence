//
//  Encodable+Save.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Encodable {
    func save(_ key: String? = nil, using userDefaults: UserDefaults = .standard) {
        let key = key ?? String(describing: type(of: self))
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(self) {
            userDefaults.set(encoded, forKey: key)
        }
    }
}
