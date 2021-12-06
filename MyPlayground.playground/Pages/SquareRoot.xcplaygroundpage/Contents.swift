import UIKit

enum RootError: Error {
case OutOfBound, NoRoot
}

func rootOfNumber(is number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw RootError.OutOfBound
    }
    
    
    var root = 0;
    
    for i in 1...100 {
        if i*i == number {
            root = i
            break
        }
    }
    
    if(root == 0) {
        throw RootError.NoRoot
    } else {
        return root
    }
    
}

do {
    let number = 10001;
    let root = try rootOfNumber(is: number)
    print("Square root of \(number) is \(root)")
} catch RootError.OutOfBound {
    print("Input was out of bound")
} catch RootError.NoRoot {
    print("No integer root was found")
}
