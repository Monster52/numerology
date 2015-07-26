def birthpath(date)
  first_num = (date[0].to_i + date[1].to_i + 
               date[2].to_i + date[3].to_i +
               date[4].to_i + date[5].to_i +
               date[6].to_i + date[7].to_i
              )

  stringy = first_num.to_s
  second_num = (stringy[0].to_i + stringy[1].to_i)
  stringy = second_num.to_s

  if second_num > 9
    third_num = (stringy[0].to_i + stringy[1].to_i)
    stringy = third_num.to_s
  end

  return stringy
end

def message(birthday)
  case birthday 
  when "1"
    puts "One is the leader.  The number One indicates the ability to stand alone, and is strong vibration.  Ruled by the Sun."
  when "2"
    puts "This is the mediator and peace-maker.  The number Two idicates the desire for harmony.  It is a gentle, considerate, and sensitive vibration.  Ruled by the Moon."
  when "3"
    puts "Number Three is sociable, friendly, and outgoing vibration.  Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor.  Ruled by Jupiter."
  when "4"
    puts "This is the worker.  Practical, with a love for detail.  Fours are a trustworthy, hard-working, and helpful.  Ruled by Uranus."
  when "5"
    puts "This is the freedom lover.  The number Five is an intellectual vibration.  These are 'Idea' people with a love of variety and the ability to adapt to most situations.  Ruled by Mercury."
  when "6"
    puts "This is the peace lover.  The number Six is loving, stable, and harmonious vibration.  Ruled by Venus."
  when "7"
    puts "This is the deep thinker.  The number Seven is a spiritual vibration.  These people are not very attached to material things, are introspective, and gernerally quiet.  Ruled by Neptune."
  when "8"
    puts "This is the manager.  Number Eight is a strong, successful, and material vibration.  Ruled by Saturn."
  when "9"
    puts "This is the teacher.  Number Nine is a tolerant, somewhat impractical, and sympathetic vibration.  Ruled by Mars."
  else
    puts "You number did not compute, try again."
  end
end

puts "Please enter your birthday (MMDDYYYY):"
date = gets.chomp

birthday = birthpath(date)
output = message(birthday)

puts output

