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
   
    do {
        try guess(number: Int = 20)
        print("Guess the right number: \(targetNumber)")
        }

        catch GuessNumberGameError.wrongNumber {
        print("Error")
        }
    }
    
//guess(number:20)
