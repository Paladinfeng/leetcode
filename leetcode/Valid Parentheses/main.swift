//
//  main.swift
//  Valid Parentheses
//
//  Created by xuezhaofeng on 14/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.characters.count % 2 != 0 {
            return false
        }
        var stack = [Character]()
        for value in s.characters {
            switch value {
            case "{", "[", "(":
                stack.append(value)
                break
            case "}":
                if stack.count == 0 || stack.removeLast() != "{" {
                    return false
                }
                break
            case "]":
                if stack.count == 0 || stack.removeLast() != "[" {
                    return false
                }
                break
            case ")":
                if stack.count == 0 || stack.removeLast() != "(" {
                    return false
                }
                break
            default:
                continue
            }
        }
        return stack.isEmpty
    }
}

let result = Solution().isValid("[(){}]")
print(result)

