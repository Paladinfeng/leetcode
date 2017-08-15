//
//  main.swift
//  Roman to Integer
//
//  Created by xuezhaofeng on 2017/8/7.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        
        var strArray = s.characters.flatMap { str -> Int in
            switch str {
            case "I": return 1
            case "V": return 5
            case "X": return 10
            case "L": return 50
            case "C": return 100
            case "D": return 500
            case "M": return 1000
            default: return -1
            }
        }
//        print(strArray)
        
//        let result = strArray.map {
//
//        }
//        let result = strArray.reduce(0) { //$0 + $1
//            print($0, $1)
//            if $0 > $1 {
//                return $0 + $1
//            } else {
//                return $0 - $1
//            }
//        }
//        for i in 0..<strArray.count {
//            for j in i+1..<strArray.count {
//                if strArray[i] < strArray[j] {
//
////                    print(i, strArray[i])
////                    print(j, strArray[j])
//
//
//
//                    strArray[i] = 0 - strArray[i]
//
////                    print(strArray[i])
////                    print(i, strArray[i])
////                    print(j, strArray[j])
//                }
////                print(i, j)
//                break
//            }
//        }
        for i in 0..<strArray.count-1 {
            if strArray[i] < strArray[i+1] {
                strArray[i] = 0 - strArray[i]
            }
        }
//        print(strArray)
        
        return strArray.reduce(0) { $0 + $1 }
//        print(result)
        
    }
}

let result = Solution().romanToInt("MCMX")
print(result)
