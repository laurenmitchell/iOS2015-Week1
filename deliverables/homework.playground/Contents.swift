//: Shopping List - Week 1

import Foundation

//: Create an empty array to store shopping list items
var arrayEmpty = [String] ()
//: Add at least 5 items to the array using 3 different insertion methods
var list: [String] = ["Milk", "Cheese", "Bread", "Butter","Juice"]
list.append("Flour")
list += ["Noosa"]
print(list)
//: Sort your array of items
func insertionsort(Item:[String]){
    var array = Item
    for i in 0 ..< array.count{
        for j in i ..< array.count{
            if array[i] > array[j]{
                let Temp = array[i]
                array[i] = array[j]
                array[j] = Temp
            }
        }
    }
    print(array)
    for i in array{
        print(i)
    }
}
insertionsort(list)
//: Create a function to print an array, with it's index, with one item per line
//see above
//: Combine the above. Create a function that takes an array, sorts it and prints it with it's index, with one item per line
//see above 
//: Create a function that returns a new array containing the first letter of each item, in uppercase. The returned array should be sorted and not have any repeated characters.
func sorting(value1: String, value2: String) -> Bool{
    return value1 < value2;
}

func upperCase(var Item:[String]) {
    Item = Item.sort()
    var newList: [String] = []
    for totalList in 0 ..< Item.count{
        let word = Item[totalList]
        let firstLetter: String = String(word[word.startIndex]) //getting first letter of string
        if totalList == 0 {
            newList.append(firstLetter.capitalizedString) //capitalize letter
        }
    }
    let unique = Array(Set(newList)) //making sure each letter is unique 
    print(unique.sort(sorting))
}

//: Create a function that searches the items array and returns all items that match the input string. Ignore uppercase/lowercase differences.

