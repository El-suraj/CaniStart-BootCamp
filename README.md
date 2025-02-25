# CaniStart-BootCamp
ICP sponsored bootcamp fro motoko programming language, Assignment and tutorial repository

# Detailed Explanation of the Contract
# 1. State Variables
happiness, energy, and hunger track the pet's current state. These values range from 0 to 100.

MAX_LEVEL and MIN_LEVEL define the upper and lower bounds for these attributes.

HUNGER_THRESHOLD and ENERGY_THRESHOLD are used to determine when the pet becomes unhappy or tired.

# 2. Functions
feed(): Reduces the pet's hunger and increases its energy. If the pet is already full, it returns a message indicating no further feeding is needed.

play(): Increases the pet's happiness but decreases its energy. If the pet is too tired, it refuses to play.

rest(): Increases the pet's energy but slightly decreases its happiness. If the pet is already fully energized, it doesn't need to rest.

checkStatus(): Provides a detailed status update about the pet's current state, including hunger, energy, and happiness levels.

reset(): Resets the pet's attributes to their default values.

# 3. Logic and Constraints
The pet's attributes are constrained within the range 0 to 100 to prevent unrealistic values.

The pet's behavior changes based on its current state. For example:

If the pet is too hungry (hunger >= HUNGER_THRESHOLD), it becomes unhappy.

If the pet is too tired (energy <= ENERGY_THRESHOLD), it refuses to play.

# 4. User Interaction 
Users can interact with the pet by calling the feed, play, and rest functions.

The checkStatus function allows users to monitor the pet's well-being and make informed decisions.
![Screenshot 2025-02-10 130315](https://github.com/user-attachments/assets/16e6295a-d00b-49fb-9155-da0569c4f5a8)

![Screenshot 2025-02-10 130315](https://github.com/user-attachments/assets/462bbd6d-1799-4af4-85af-3f9798922bc5)

![Screenshot 2025-02-10 130859](https://github.com/user-attachments/assets/092ec5cc-1590-431b-ab1f-7581a7b9d202)


