import SwiftUI
struct GameView: View {
    @StateObject private var game = GameModel()

    var body: some View {
        VStack {
            // Display time remaining
            Text("Time Remaining: \(game.timeRemaining)")
                .font(.largeTitle)
                .padding()

            // Display the score
            Text("Score: \(game.score)")
                .font(.title)
                .padding()

            // Tap button
            Button(action: {
                game.buttonTapped()
            }) {
                Text("Tap Me!")
                    .font(.headline)
                    .padding()
                    .frame(width: 150, height: 150)
                    .background(game.isGameActive ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .padding()
            .disabled(!game.isGameActive) // Disable button if game is not active

            Spacer()

            // Start game button
            Button("Start Game") {
                game.startGame()
            }
            .font(.title2)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .padding()
    }
}

#Preview {
    GameView()
}
