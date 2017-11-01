//
//  main.swift
//  Add Binary
//
//  Created by xuezhaofeng on 01/11/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        
        let arrayA = a.characters.flatMap({Int(String($0))})
        var countA = arrayA.count - 1;
        let arrayB = b.characters.flatMap({Int(String($0))})
        var countB = arrayB.count - 1;
        
        var result = ""
        var carryValue = 0
        var temp = 0
        
        while countA >= 0 || countB >= 0 || carryValue > 0 {
            
//            if countA == 0 {
//                resultArray.append(arrayA[0])
//                break
//            }
//
//            if countB == 0 {
//                resultArray.append(arrayB[0])
//                break
//            }
//
//            temp = arrayA[countA] + arrayB[countB] + carryValue
//
//            if temp == 2 {
//                temp = 0
//                carryValue = 1
//            }
//
//            resultArray.append(temp)
//
//            countA -= 1
//            countB -= 1
            
            temp = carryValue;
            
            if countA >= 0 {
                temp += arrayA[countA]
                countA -= 1
            }
            
            if countB >= 0 {
                temp += arrayB[countB]
                countB -= 1
            }
            
            carryValue = temp / 2
            temp = temp % 2
            result = String(temp) + result
        }
        return result
    }
}

let result = Solution().addBinary("11", "1");
print(result)

