import UIKit

func areStringsIdentical(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

let answer = areStringsIdentical(str1: "abcd", str2: "cbade")
print(answer)



            



