class FoodChain
  VERSION = 2

  LINES = [
    ['fly', "I don't know why she swallowed the fly. Perhaps she'll die.\n"],
    ['spider', 'It wriggled and jiggled and tickled inside her.'],
    ['bird', 'How absurd to swallow a bird!'],
    ['cat', 'Imagine that, to swallow a cat!'],
    ['dog', 'What a hog, to swallow a dog!'],
    ['goat', 'Just opened her throat and swallowed a goat!'],
    ['cow', "I don't know how she swallowed a cow!"],
    ['horse', "She's dead, of course!"]
  ]

  def self.verses(start, stop)
    start
      .upto(stop)
      .each_with_object([]) {|position, verses| verses << verse(position)}
      .join("\n") + "\n"
  end

  def self.verse(position)
    lines =
      if last_verse?(position)
        swallow_and_awe(LINES.last)
      else
        lines = (position - 1)
          .downto(1)
          .each_with_object(swallow_and_awe(LINES[position - 1])) do |p, lines|
            lines << swallowed_to_catch(LINES[p].first, LINES[p - 1].first)
          end

          unless first_verse?(position)
            lines << LINES.first.last
          end

          lines
      end

      lines.join("\n")
  end

  def self.song
    verses(1, 8)
  end


  private

  def self.first_verse?(position)
    position == 1
  end

  def self.last_verse?(position)
    position == LINES.size
  end

  def self.swallowed(animal)
    "I know an old lady who swallowed a #{animal}."
  end

  def self.swallowed_to_catch(predator, prey)
    "She swallowed the #{predator} to catch the #{prey}" + (prey == 'spider' ? ' that wriggled and jiggled and tickled inside her' : '') + "."
  end

  def self.swallow_and_awe(line)
    [
      swallowed(line.first),
      line.last
    ]
  end

end