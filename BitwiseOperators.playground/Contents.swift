// Helper functions
func pad(string : String, toSize: Int = 8) -> String {
    var padded = string
    for _ in 0..<(toSize - string.count) {
        padded = "0" + padded
    }
    return padded
}

func printBinary(of num: UInt8) {
    let str = String(num, radix: 2)
    print("num:\t\(num)\t\tbinary:\t\(pad(string: str))")  // 00010110
}

// 1. NOT Operator  ~ inverts all the bits
print("\n=========== NOT Operator ============")
printBinary(of: 1)
printBinary(of: ~1)
printBinary(of: 0)
printBinary(of: ~0)
/*
 =========== NOT Operator ============
 num:    1        binary:    00000001
 num:    254        binary:    11111110
 num:    0        binary:    00000000
 num:    255        binary:    11111111
 */


// 2. AND Operator  &  both 1 -> 1,  otherwise -> 0
print("\n=========== AND Operator ============")
printBinary(of: 3)
printBinary(of: 18)
printBinary(of: 3 & 18)
/*
 =========== AND Operator ============
 num:    1        binary:    00000001
 num:    18        binary:    00010010
 num:    0        binary:    00000000
 */

// 3. OR Operator   |   0|1 -> 1, 1|1 -> 1, 0|0 -> 0
print("\n=========== OR Operator ============")
printBinary(of: 3)
printBinary(of: 21)
printBinary(of: 3 | 21)
/*
 =========== OR Operator ============
 num:    3        binary:    00000011
 num:    21        binary:    00010101
 num:    23        binary:    00010111
 */

// 4. XOR Operator   ^   same -> 0, not same -> 1
print("\n=========== XOR Operator ============")
printBinary(of: 3)
printBinary(of: 21)
printBinary(of: 3 ^ 21)
/*
 =========== XOR Operator ============
 num:    3        binary:    00000011
 num:    21        binary:    00010101
 num:    22        binary:    00010110
 */

/* 5. Shift Operator   >>, <<
 Note: the number to be shift should on the left hand side
 6 << 1 means: left shift the bits of 1 by 6
 */
print("\n=========== Shift Operator ============")
printBinary(of: 6)
printBinary(of: 6 >> 1)
printBinary(of: 6 >> 2)
printBinary(of: 6 << 1)
/*
 =========== Shift Operator ============
 num:    3        binary:    00000011
 num:    21        binary:    00010101
 num:    22        binary:    00010110
 */
