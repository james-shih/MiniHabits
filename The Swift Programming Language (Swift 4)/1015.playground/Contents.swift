//: Playground - noun: a place where people can play

import UIKit

//Nested Types in Action
struct BlackjackCard {
    enum Suit: Character {
        case speades = "♠", hearts = "♡", diamond = "◇", clubs = "♣"
    }
    
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
    }
    
    let rank: Rank, suit: Suit
    var description: String {
        var output = "suit is \(suit.rawValue),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
}

let theAceOfSpades = BlackjackCard(rank: .ace, suit: .speades)
print("theAceOfSpades: \(theAceOfSpades.description)")

//Referring to Nested Types
let heartsSymbol = BlackjackCard.Suit.hearts.rawValue


