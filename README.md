# Union Persistence

## Overview

Union Persistence is a simple Swift library for persisting Codable objects to UserDefaults with a clean, straightforward API. It makes saving and loading model objects effortless, with seamless integration with Swift's Observation framework.

## Installation

Add the package to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/unionst/union-persistence", from: "1.0.0")
]
```

## Features

- Simple save/load methods for any Codable type
- Automatic type inference for storage keys
- Extensions for handling optional values and arrays
- Integrates nicely with Swift's Observation framework
- iOS 17+ compatible

## Usage

### Basic Usage

```swift
// Define a Codable model
struct User: Codable {
    var name: String
    var email: String
}

// Save to UserDefaults
let user = User(name: "John", email: "john@example.com")
user.save() // Uses type name as the key

// Load from UserDefaults
if let loadedUser = User.load() {
    print(loadedUser.name) // "John"
}
```

### Custom Keys

```swift
// Save with custom key
user.save("currentUser")

// Load with custom key
if let user = User.load("currentUser") {
    print(user.email)
}
```

### Integration with Observation

```swift
@Observable class UserModel {
    var currentUser: User? {
        get {
            access(keyPath: \.currentUser)
            return User.load("currentUser")
        }
        set {
            withMutation(keyPath: \.currentUser) {
                newValue?.save("currentUser")
            }
        }
    }
}
```

## License

MIT