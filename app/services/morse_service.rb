class MorseService
    CODE = {
    "A" => ".-",    "B" => "-...",  "C" => "-.-.",
    "D" => "-..",   "E" => ".",     "F" => "..-.",
    "G" => "--.",   "H" => "....",  "I" => "..",
    "J" => ".---",  "K" => "-.-",   "L" => ".-..",
    "M" => "--",    "N" => "-.",    "O" => "---",
    "P" => ".--.",  "Q" => "--.-",  "R" => ".-.",
    "S" => "...",   "T" => "-",     "U" => "..-",
    "V" => "...-",  "W" => ".--",   "X" => "-..-",
    "Y" => "-.--",  "Z" => "--..",

    "0" => "-----", "1" => ".----", "2" => "..---",
    "3" => "...--", "4" => "....-", "5" => ".....",
    "6" => "-....", "7" => "--...", "8" => "---..",
    "9" => "----.",

    " " => "/"  # use "/" to represent space between words
  }
  DECODE = CODE.invert
  def self.encode(text)
    res =[]
    text.upcase.each_char do|char|
        res << CODE[char] if CODE[char]
    end
        res.join(" ")
  end
  def self.decode(morse_text)
    res =[]
    morse_text.split(" ").each do |char|
        res << DECODE[char] if DECODE[char]
    end
    res.join
   end   
end


