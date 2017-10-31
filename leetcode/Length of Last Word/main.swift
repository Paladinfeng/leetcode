//
//  main.swift
//  Length of Last Word
//
//  Created by xuezhaofeng on 31/10/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if let count = s.split(separator: " ").last?.count {
            return count
        }
        return 0
    }
}

let result = Solution().lengthOfLastWord("Hello World")
print(result)
