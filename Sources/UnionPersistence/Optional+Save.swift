//
//  Optional+Save.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Optional where Wrapped: Encodable {
    public func save(_ key: String? = nil, using userDefaults: UserDefaults = .standard) {
        let key = key ?? String(describing: Wrapped.self)
        
        switch self {
        case .some(let value):
            value.save(key, using: userDefaults)
        case .none:
            userDefaults.removeObject(forKey: key)
        }
    }
}
