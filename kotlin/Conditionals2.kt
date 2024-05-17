fun determineSeason(month: Int, day: Int): String {
    return if (month == 1 || month == 2) {
        "Winter"
    } else if (month == 3) {
        if (day < 20) "Winter" else "Spring"
    } else if (month == 4 || month == 5) {
        "Spring"
    } else if (month == 6) {
        if (day < 21) "Spring" else "Summer"
    } else if (month == 7 || month == 8) {
        "Summer"
    } else if (month == 9) {
        if (day < 22) "Summer" else "Fall"
    } else if (month == 10 || month == 11) {
        "Fall"
    } else if (month == 12) {
        if (day < 21) "Fall" else "Winter"
    } else {
        "Invalid month"
    }
}
fun largest_number() {
    println("Enter the first number:")
    val num1 = readLine()?.toIntOrNull() ?: return println("Invalid input")

    println("Enter the second number:")
    val num2 = readLine()?.toIntOrNull() ?: return println("Invalid input")

    println("Enter the third number:")
    val num3 = readLine()?.toIntOrNull() ?: return println("Invalid input")

    val largest = if (num1 >= num2) {
        if (num1 >= num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 >= num3) {
            num2
        } else {
            num3
        }
    }

    println("The largest number is: $largest")
}

fun main() {
    println("Enter month (1-12):")
    val month = readLine()?.toIntOrNull() ?: return println("Invalid input")

    println("Enter day (1-31):")
    val day = readLine()?.toIntOrNull() ?: return println("Invalid input")

    if (month !in 1..12 || day !in 1..31) {
        println("Invalid month or day")
    } else {
        val season = determineSeason(month, day)
        println("The season is: $season")
    }

    largest_number()
}
