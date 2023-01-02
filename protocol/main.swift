protocol CanFly {
    func fly()
    
}


class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird make a new bird in a shell")
        }
    }
}


class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flpas its wings and lift off into the sky.")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("The pinguin paddles through the water.")
    }
    
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}


struct AirPlane: CanFly {
    func fly() {
        print("the airplane uses its engine to lift off into the air")
    }
    
}

let myEagle = Eagle()
let penguin = Penguin()
let myPlane = AirPlane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
