import Foundation

// Data Model for Game Prototype Notifier
struct GamePrototypeNotifier {
    let gameId: Int
    let prototypeName: String
    let notificationType: NotificationType
    let timestamp: Date
    let gameIconURL: URL?
    let gameDescription: String
    let developerName: String
    let notificationMessage: String
    
    enum NotificationType: String, CaseIterable {
        case newPrototype, updateAvailable, testingInvitation, feedbackRequest
    }
}

// Convenience Initializer
extension GamePrototypeNotifier {
    init(gameId: Int, prototypeName: String, notificationType: NotificationType, gameIconURL: URL? = nil, gameDescription: String, developerName: String, notificationMessage: String) {
        self.gameId = gameId
        self.prototypeName = prototypeName
        self.notificationType = notificationType
        self.timestamp = Date()
        self.gameIconURL = gameIconURL
        self.gameDescription = gameDescription
        self.developerName = developerName
        self.notificationMessage = notificationMessage
    }
}

// Example Usage
let prototypeNotifier = GamePrototypeNotifier(gameId: 1, prototypeName: "Epic Quest", notificationType: .newPrototype, gameIconURL: URL(string: "https://example.com/icon.png"), gameDescription: "Embark on a magical journey", developerName: "GameDev Studio", notificationMessage: "Get ready for an epic adventure!")

print(prototypeNotifier.notificationMessage) // Output: Get ready for an epic adventure!