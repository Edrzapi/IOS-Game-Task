import SwiftUI

class GameModel: ObservableObject {
    @Published var score: Int = 0            // Player's score
    @Published var timeRemaining: Int = 10  // Countdown timer
    @Published var isGameActive: Bool = false  // Track if the game is active

    private var timer: Timer?

    // Start the game
    func startGame() {
    
        
        timer?.invalidate()  // Reset any existing timer
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
        }

    // Increment the score when the button is tapped
    func buttonTapped() {
       
    }
}
