enum GuessNumberGameError: Error {
      case wrongNumber
  }

  class GuessNumerGame {
      var targetNumber = 10
      func guess(number: Int) throws {
          guard number == targetNumber
          else {
              throw GuessNumberGameError.wrongNumber
          }
      }
  }

func check(guessNumerGame: GuessNumerGame) {
    do {
        try guessNumerGame.guess(number: 20)
    }
    catch {
        print("I'm bad")
    }
}

check(guessNumerGame: GuessNumerGame())
