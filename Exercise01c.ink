/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 In the assignment:
 * Add four more knots
 * Assign at least TWO new variables through player choices
 * Print at least one of the variables to the player in a passage
 * Check the value of a variable and have it do something
*/

Varaible Checking!

Equality:   "Spot" == "Spot"
Not equality: 1 != 2
Greater: >
Less: <
Great or equal: >=
Less or Equal: <=


VAR health = 5
VAR pet_name = ""
VAR Torches = 0 
VAR food_option = ()
VAR weapon_type = <> 
VAR health packs = ++



-> cave_mouth

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might be less imtimidating then. What was your pet's name?

* [Charlie]
~ pet_name = "Charlie" 
-> cave_mouth
* [Susan]
~ pet_name = "Susan"
-> cave_mouth
* [Spot]
~ pet_name = "Spot"
-> cave_mouth

== memory ==
Don't forget to eat during your journey. What will you choice to eat?

*[Apple]
~ food_option = (Apple)
-> cave_mouth
*[Peach]
~ food_option = (Peach)
-> cave_mouth
*[Watermelon]
~ food_option = (Watermelon)

== cave_mouth ==
Expect to find weapons on your journey. You have the choice to pick whatever weapon you wish to have.
You have these options:
*[Assault Rifle]
~ weapon_type = <Assault Rifle>
-> cave_mouth
*[Scar]
~ weapon_type = <Scar>
-> cave_mouth
*[Pistol]
~ weapon_type = <Pistol>
-> cave_mouth
*[Sniper]
~ weapon_type = <Sniper>
-> cave_mouth

You will face a lot of danger so it's important to keep your health up. Here are locations where you can find health packs.

*[Vending Machines]
~ health packs = +Vending machines+
-> cave_mouth
*[Treasure chest]
~ health packs = +Treasure chest+
-> cave_mouth
*[Behind Paintings]
~ health packs = +Behind Paintings+
-> cave_mouth
 You have {torches} torches


+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{pet_name == "Spot": Scout would love it here in the west|}

+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END