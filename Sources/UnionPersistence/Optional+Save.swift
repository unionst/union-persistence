//
//  Optional+Save.swift
//  union-persistence
//
//  Created by Ben Sage on 4/12/25.
//

import Foundation

extension Optional where Wrapped: Encodable {
    func save() {
        if let self = self {
            self.save()
        }
    }
}
