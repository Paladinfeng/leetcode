//
//  main.swift
//  Remove Duplicates from Sorted List
//
//  Created by xuezhaofeng on 08/11/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var res = head
        while res?.next != nil {
            if res?.val == res?.next?.val {
                res?.next = res?.next?.next
            } else {
                res = res?.next
            }
        }
        return head
    }
}

let node = ListNode.init(1)
node.next = ListNode(1)
node.next?.next = ListNode(2)
node.next?.next?.next = ListNode(2)
var result = Solution().deleteDuplicates(node)

while result != nil {
    print(result!.val)
    result = result?.next
}
