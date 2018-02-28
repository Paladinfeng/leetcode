//
//  main.swift
//  Valid Palindrome
//
//  Created by xuezhaofeng on 27/02/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        var alphaArray = [String]()
        
        _ = s.map {
//            if String($0).range(of: "[a-zA-Z]", options: .regularExpression) != nil {
//                print($0)
//            }
            if String($0).rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil {
//                print(String($0).lowercased())
                alphaArray.append(String($0).lowercased())
            }
        }
        
        for i in 0..<alphaArray.count {
            if alphaArray[i] != alphaArray[alphaArray.count - i - 1] {
                return false
            }
        }
        
        return true
    }
}

let result = Solution().isPalindrome(" ")
print(result)
