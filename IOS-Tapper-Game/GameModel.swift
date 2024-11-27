import SwiftUI

class GameModel: ObservableObject {
    @Published var score: Int = 0            // Player's score
    @Published var timeRemaining: Int = 10  // Countdown timer
    @Published var isGameActive: Bool = false  // Track if the game is active

    private var timer: Timer?

    // Start the game
    func startGame() {
        score = 0
        timeRemaining = 10
        isGameActive = true
	
        timer?.invalidate()  // Reset any existing timer
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.timeRemaining -= 1
            if self.timeRemaining <= 0 {
                self.timer?.invalidate()
                self.isGameActive = false  // Stop the game when time runs out
            }
        }
    }

    // Increment the score when the button is tapped
    func buttonTapped() {
        if isGameActive {
            score += 1
        }
    }
}
