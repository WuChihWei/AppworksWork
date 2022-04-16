


import UIKit
import Foundation

//func detectorOdd(odd: Int) -> Bool {
//    if (odd % 2 == 1) {
//        return true
//    }
//
//    else{
//        return false
//}
//}
//
//detectorOdd(odd: 5)

var detectorOdd = { (odd: Int) -> (Bool) in
    if (odd % 2 == 1) {
        return true
    }
    else{
        return false
    }
}

detectorOdd(2)

