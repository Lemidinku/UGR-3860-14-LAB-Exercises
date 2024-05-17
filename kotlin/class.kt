class Rectangle(private val length: Double, private val width: Double) {

    fun perimeter(): Double {
        return 2 * (length + width)
    }

    fun area(): Double {
        return length * width
    }
}

class Triangle(val side1: Double, val side2: Double, val side3: Double) {

    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }
    fun isIsosceles(): Boolean {
        return side1 == side2 || side2 == side3 || side1 == side3
    }
    fun isScalene(): Boolean {
        return side1 != side2 && side2 != side3 && side1 != side3
    }
}


class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun totalPrice(): Double {
        return items.sumOf { it.price }
    }

    fun listItems() {
        items.forEach { println("Item: ${it.name}, Price: ${it.price}") }
    }
}

data class Item(val name: String, val price: Double)

fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Rectangle perimeter: ${rectangle.perimeter()}")
    println("Rectangle area: ${rectangle.area()}")


    val cart = ShoppingCart()
    val item1 = Item("Apple", 1.0)
    val item2 = Item("Banana", 0.5)
    val item3 = Item("Orange", 1.2)

    cart.addItem(item1)
    cart.addItem(item2)
    cart.addItem(item3)

    println("Items in cart:")
    cart.listItems()
    println("Total price: ${cart.totalPrice()}")

    cart.removeItem(item2)
    println("\nAfter removing an item:")
    cart.listItems()
    println("Total price: ${cart.totalPrice()}")
    println()



    // Example triangles
    val triangle1 = Triangle(5.0, 5.0, 5.0)

    // Determine and print the type of triangle for triangle1
    println("Triangle with sides ${triangle1.side1}, ${triangle1.side2}, ${triangle1.side3}:")
    println("Is Equilateral? ${triangle1.isEquilateral()}")
    println("Is Isosceles? ${triangle1.isIsosceles()}")
    println("Is Scalene? ${triangle1.isScalene()}")
    println()
}
