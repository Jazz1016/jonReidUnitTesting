
// A String is a palindrome if it reads the same backwards and forwards – so 'hannah', 'racecar', 'bob', and 'tattarrattat' are all palindromes, while 'suzy', 'pumpkin', and 'booboo' are not.
// Write a function that takes a String as a parameter and returns true if it is a palindrome, false if not.

func checkForPalindrome(str: String) -> Bool {
    var reversed: [Character] = []
    
    for i in 0..<reversed.count {
        if reversed[i] == reversed[reversed.count - i - 1] {} else {
            return false
        }
    }
    return true
}

checkForPalindrome(str: "racecar")
checkForPalindrome(str: "hannah")
checkForPalindrome(str: "pumpkin")
checkForPalindrome(str: "suzy")
checkForPalindrome(str: "barb")


// write a function that takes an array of integers and returns an array of integers of equal length but each elements is increased by 3

func simpleMap(arr: [Int]) -> [Int] {
    let newArr = arr.map { el in
        return el + 3
    }
    return newArr
}



// write a function that takes an arry of integers and returns an array containing any value from the input array that is divisible by 3.

func filterDivisibleBy3(arr: [Int]) -> [Int] {
    return arr.filter { el in
        el % 3 == 0
    }
}

filterDivisibleBy3(arr: [1,2,3,4,5,6])
