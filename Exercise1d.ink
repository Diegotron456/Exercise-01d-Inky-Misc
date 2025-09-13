/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR strength = -1


-> seashore


== seashore ==

It is { advance_time() }, and the weather today is {random1()}

{time == 0: You stand upon the golden shimmers of sand, beamed down by a golden light in the sky.}
{time == 1: A cool breeze rushes through the sky, with the sun dazzling glittering light through the clouds.}
{time == 2: As the gold light sinks in the horizon, you can't do much other than rest for now.}



+ {time <= 1} [Stroll down the beach] -> beach2
+ {time == 2 } [Rest] -> cottage
+ {time <= 1} [Go Fishing!] -> fishing
+ {time <= 1} [Workout] -> workout
+ [Check Strength] -> check_strength1

== beach2 ==

It is {advance_time() }, and the weather is {random1()}

{time == 0: The coast glimmers with white light, a refreshing sight indeed.}
{time == 1: As the sparkles in the sand shimmer, you see some seashells lying around.}
{time == 2: With the light fading in the backround, the golden sands change into glistening silver, as you drift off to sleep.}


* { time == 1 } [Pick up some seashells!] -> shells
+ {time <= 1} [Stroll back down the beach] -> seashore
+ {time == 2 } [Rest] -> cottage
+ [Go Fishing!] -> fishing
+ [Check Strength] -> check_strength2

== shells ==
You pick up the shells!

-> beach2

== fishing ==
You caught {random2()}

{time == 2: After some fighting against the fish, you decide its time to hit the hay and continue your journey tomorrow.}

+ {time == 2} [Rest] -> cottage
+ {time <= 1} [Go Back] -> seashore


== workout ==

{~You decide to do some pushups.|You do some situps.|You do some burpees.}
You have {strength_num()} strength.


/* I want to be able to make strength a tool to be able to fish up larger fish/more difficult fish in the game.*/



+ [Back To Seashore] ->seashore


== check_strength1 ==
You have {strength_num()} strength.
~ time = time -1
-> seashore
== check_strength2 ==
You have {strength_num()} strength.
~ time = time -1
-> beach2


== function strength_num ==
~ strength = strength + 1
~ return strength

== cottage ==
{&You nod off peacefully in your tiny cottage, hoping to start another journey tomorrow!|After a long day, you decide right now is the best time for some good rest.|Finally! Some rest! Now is the best time to get rest for a big day tomorrow!}
->dream

== dream ==
{~As you drift off, you feel a weird presence, like a figure trying to pry your eyes open, but in a totally not so killing way, but rather much of a caring way. "Wake up..."|Fish, fish, and more fish... I wonder what types I will catch tomorrow...|Man, those Blood Moons sure do have some unique effect on the fish, too bad that I cannot code that yet at my level.}
+ [Wake up...] -> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    
    {    
        - time == 0:
            ~ return "morning"
        
        - time == 1:
            ~ return "noon"
        
        - time == 2:
            ~ return "night"
    
    }
    
    
        
    ~ return time
    

== function random1 ==
{shuffle:
- ~ return "cloudy."
- ~ return "rainy."
- ~ return "clear."
- ~ return "BLOOD MOON!"
- ~ return "sunny."
}

~ return random1

== function random2 ==
/*More fish to come in the future, im gonna make this the game for my final project!!!*/
{shuffle:
- ~ return "nothing... better luck next time!"
- ~ return "a bass!"
- ~ return "a Johnathan Carpicuss!"
- ~ return "a carp!"
- ~ return "a salmon!"
- ~ return "a tuna!"
- ~ return "a whale shark!"
- ~ return "a puffer fish!"
- ~ return "a eel!"
- ~ return "starfish."
- ~ return "a mahi-mahi!"
- ~ return "a bluegill"
- ~ return "a parrotfish!"
- ~ return "a crab!"
- ~ return "a Red Lobster! (YUM)"
- ~ return "a red herring!"
- ~ return "a Dreadnautilus!"
- ~ return "a treasure chest!!!"
- ~ return "a fishing rod...?"
- ~ return "a kraken!"
    }
    ~ return random2
    
    
    
    
    
    
    
    