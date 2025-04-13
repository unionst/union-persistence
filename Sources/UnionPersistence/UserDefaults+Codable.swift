//
//  UserDefaults+Codable.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

public extension UserDefaults {
    func setCodable<T: Codable>(_ object: T, forKey key: String) {
        if let encoded = try? JSONEncoder().encode(object) {
            set(encoded, forKey: key)
        } else {
            removeObject(forKey: key)
        }
    }

    func codable<T: Codable>(forKey key: String) -> T? {
        if let data = object(forKey: key) as? Data {
            return try? JSONDecoder().decode(T.self, from: data)
        }
        return nil
    }

    func clearAll() {
        for key in UserDefaults.standard.dictionaryRepresentation().keys {
            UserDefaults.standard.removeObject(forKey: key)
        }
    }

    static func clear() {
        standard.clearAll()
    }
}

