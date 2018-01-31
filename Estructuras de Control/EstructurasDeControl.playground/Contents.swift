import UIKit

// IF - ELSE - ELSE IF

let isTrue = true

if isTrue == true {
    print("OMG!! IT'S TRUE!!")
}

let isFalse = false

if isFalse == true {
    print("U R LYING!! Is TRUE")
} else {
    print("OK, IT'S FALSE")
}

if !isTrue {
    print ("IS FALSE")
} else if !isFalse {
    print("IS TRUE")
} else {
    print("I DON'T KNOW WHAT IT IS")
}

let myArray = [10,45,32,74,1]

// FOR-IN (RANGED)
for index in 0..<myArray.count {
    print(myArray[index])
}

print("---------")

//FOR-IN
for item in myArray {
    print(item)
}


// SWITCH

let variableSwitch = 1

switch variableSwitch {
case 1:
    print("WOOOW")
default:
    print("MEEH")
}

let i = 1
let j = 1

switch (i,j) {
case (1,1):
    print("Pair matched")
default:
    print("MEEH")
}
