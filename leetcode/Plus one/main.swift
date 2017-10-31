//
//  main.swift
//  Plus one
//
//  Created by xuezhaofeng on 31/10/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var count = digits.count - 1
        while count >= 0 {
            digits[count] += 1
            if digits[count] <= 9 {
                return digits
            }
            digits[count] = 0
            count -= 1
        }
        digits.insert(1, at: 0);
        return digits
        
    }
}

let result = Solution().plusOne([8, 9, 9, 9])
print(result)

