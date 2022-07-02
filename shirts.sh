#!/bin/bash

__OLD_IFS=$IFS
IFS=$'\n'

strings=()
strings+=("4TW")
strings+=("All batbelt. No tights.")
strings+=("Australian for grep.")
strings+=("Be an IT superhero, Go home early.")
strings+=("Because Ninjas Are Too Busy.")
strings+=("Because you can\'t always blame Canada.")
strings+=("Can you SPL?")
strings+=("CENSORED")
strings+=("Cloud control.")
strings+=("Counter errorism.")
strings+=("CSI: Logfiles")
strings+=("data with destiny")
strings+=("Don\'t be a SOAR loser.")
strings+=("Drop your breaches.")
strings+=("Finding your faults, just like mom.")
strings+=("Finding your faults, just like mum.")
strings+=("garbage in, pretty useful crap out.")
strings+=("I\'m ESXi and I know it.")
strings+=("It\'s not a | line problem.")
strings+=("Join the in cloud.")
strings+=("Like an F-18, bro")
strings+=("Log cleanup on IL5")
strings+=("Log, I am your father.")
strings+=("Looking for trouble.")
strings+=("Machine watchable.")
strings+=("Map. Reduce. Recycle.")
strings+=("More brain, less surgery.")
strings+=("More JSON, less Freddy.")
strings+=("Needle. Haystack. Found.")
strings+=("Nobody puts data in corner.")
strings+=("Now with more code!.")
strings+=("Observe ability.")
strings+=("Put ollie your data to work.")
strings+=("Put that in your | and Splunk it.")
strings+=("s/data/doing/gi")
strings+=("See the light before you tunnel.")
strings+=("See your world. Maybe wish you hadn\'t")
strings+=("Stop chasing your tail -f")
strings+=("Take the sh out of IT.")
strings+=("The Notorious B.I.G. D.A.T.A.")
strings+=("We don\'t need no stinking batches.")
strings+=("Weapon of a security warrior.")
strings+=("Winning the War on Error.")
strings+=("You bet your sweet SaaS")
strings+=("You came to the right trace.")
strings+=("You\'re just my sourcetype.")
strings+=("ERMAHGERD, SPLERNK!")
strings+=("All up in your business.")
strings+=("Bragging rights included.")
strings+=("Here To Save The Day.")
strings+=("Find your Achilles\' heel, before a Trojan does.")
strings+=("Log and load.")


counter=0

for string in ${strings[@]}
do

    printf "%03d %s\n" "${counter}" "${string}"
    
    convert \
      splunk-white-black-bg.png \
      -fill white \
      -font helvetica \
      -pointsize 128 \
      -gravity center \
      -draw "text 0,0 '$string'" \
      wallpapers/$(printf "splunk_%03d.png" "${counter}")
    
    
    ((counter=counter+1))
done

IFS=$__OLD_IFS