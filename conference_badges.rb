def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badges = []

    names.each do |name|
        badges << badge_maker(name)
    end

    return badges
end

def assign_rooms(speakers)
    rooms = speakers.collect.with_index{ |speaker, index| "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}

    return rooms
end

def printer(names)
    badges = batch_badge_creator(names)
    rooms = assign_rooms(names)

    badges.each do |badge|
        puts badge
    end

    rooms.each do |message|
        puts message
    end
end