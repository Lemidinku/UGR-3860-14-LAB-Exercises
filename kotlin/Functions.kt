fun sortArray(arr: IntArray): IntArray {
    // Using built-in sort function
    arr.sort()
    return arr
}

fun factorial(n: Int): Long {
    return if (n <= 1) 1 else n * factorial(n - 1)
}
fun hasUniqueCharacters(s: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in s) {
        if (char in charSet) {
            return false
        }
        charSet.add(char)
    }
    return true
}


fun main() {

    // sort function
    val array = intArrayOf(5, 3, 8, 4, 2)
    val sortedArray = sortArray(array)
    println("Sorted array: ${sortedArray.joinToString(", ")}")


    // factorial
    println("Enter a number:")
    val number = readLine()?.toIntOrNull() ?: return println("Invalid input")
    val result = factorial(number)
    println("Factorial of $number is: $result")

    // has a unique characters
    println("Enter a string:")
    val inputString = readLine() ?: return println("Invalid input")
    val isUnique = hasUniqueCharacters(inputString)
    println("The string \"$inputString\" has unique characters: $isUnique")
}

