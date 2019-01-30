def badge_maker(name)
  badge = "Hello, my name is #{name}."
  return badge
end

def batch_badge_creator(array_of_names)
  array_of_messages = []
  array_of_names.each do |guest|
  array_of_messages << badge_maker(guest)
  end
  return array_of_messages
end

def assign_rooms(list_of_speakers)
  room_assignments = []
  list_of_speakers.each_with_index { |speaker, index|room_assignments <<
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!" }
  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |name|
    puts name
  end
  assign_rooms(attendees).each do |phrase|
    puts phrase
  end
end
