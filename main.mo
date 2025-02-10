actor DigitalPet {
    // State variables to track the pet's attributes
    var happiness : Nat = 50; // Happiness level (0-100)
    var energy : Nat = 50;    // Energy level (0-100)
    var hunger : Nat = 50;    // Hunger level (0-100)

    // Constants to define limits and thresholds
    let MAX_LEVEL : Nat = 100; // Maximum value for any attribute
    let MIN_LEVEL : Nat = 0;   // Minimum value for any attribute
    let HUNGER_THRESHOLD : Nat = 70; // Hunger level at which the pet becomes unhappy
    let ENERGY_THRESHOLD : Nat = 30; // Energy level at which the pet becomes tired

    // Function to feed the pet, reducing hunger and increasing energy
    public func feed() : async Text {
        if (hunger > MIN_LEVEL) {
            hunger := hunger - 10; // Reduce hunger by 10
            energy := energy + 5; // Increase energy by 5
            return "Yum! Your pet is feeling less hungry and more energetic.";
        } else {
            return "Your pet is already full and doesn't want to eat.";
        }
    };

    // Function to play with the pet, increasing happiness but reducing energy
    public func play() : async Text {
        if (energy > MIN_LEVEL) {
            happiness := happiness + 15; // Increase happiness by 15
            energy := energy - 10;      // Reduce energy by 10
            return "Your pet had a great time playing! Happiness increased, but energy decreased.";
        } else {
            return "Your pet is too tired to play. Try resting first.";
        }
    };

    // Function to let the pet rest, increasing energy but slightly reducing happiness
    public func rest() : async Text {
        if (energy < MAX_LEVEL) {
            energy := energy + 20; // Increase energy by 20
            happiness := happiness - 5; // Slightly reduce happiness
            return "Your pet is resting and regaining energy. Happiness slightly decreased.";
        } else {
            return "Your pet is already fully energized and doesn't need to rest.";
        }
    };

    // Function to check the pet's current status
    public func checkStatus() : async Text {
        var status : Text = "";

        // Check hunger level
        if (hunger >= HUNGER_THRESHOLD) {
            status #= "Your pet is very hungry. ";
        } else {
            status #= "Your pet is not hungry. ";
        };

        // Check energy level
        if (energy <= ENERGY_THRESHOLD) {
            status #= "Your pet is feeling tired. ";
        } else {
            status #= "Your pet is full of energy. ";
        };

        // Check happiness level
        if (happiness >= 75) {
            status #= "Your pet is very happy!";
        } else if (happiness >= 50) {
            status #= "Your pet is content.";
        } else {
            status #= "Your pet is feeling sad.";
        };

        return status;
    };

    // Function to reset the pet's state to default values
    public func reset() : async Text {
        happiness := 50;
        energy := 50;
        hunger := 50;
        return "Your pet has been reset to its initial state.";
    };
};
