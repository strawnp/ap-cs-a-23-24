public class Animal {
    private String name;

    public Animal(String name) {
        this.name = name;
    }

    public void speak() {
        System.out.println("generic animal sound");
    }

    public void sayName() {
        System.out.print(this.name + ": ");
        this.speak();
    }

    public static void main(String[] args) {
        Animal a = new Dog("Larry");
        a.speak();
        // a.beg();
        a.sayName();
        Dog d = new Dog("Magic");
        d.speak();
        d.beg();
        d.sayName();
    }
}

class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }

    public void speak() {
        System.out.println("woof");
    }

    public void beg() {
        System.out.println("*puppy eyes*");
    }
}


