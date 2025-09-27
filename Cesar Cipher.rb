# Overall Plan
    # Take input from console for a string and a shift
    # Put input into an array
    # Split the array into letters
    # Convert letters into ascii code
    # Shift the letters
    # Convert back to letters
    # Put the shifted letters into an array
    # Combine the shifted letters back into words
    # Return the shifted array as an out put in the console


# Take input from console
unshift_string = ARGV[0].to_s()
shift_key = ARGV[1].to_i()
# Check if input is valid
if unshift_string.is_a?(String) && shift_key != 0
    puts "Your unencrypted message is: #{unshift_string}"
    puts "Your message will shift by #{shift_key}"
else
    abort('Error! Please input as follows: Cesar Cipher.rb "Message" 2')
end

def cesar_cipher(string, shift)
    # Split unshift_string into an array of individual letters
    string_split = string.split("")
    shifted_letters = []
    string_split.each do |letter|
      if letter.match(/[A-Z]/)
        shifted_ascii = cap_shifter(letter, shift)
        shifted_letters << shifted_ascii.chr
      elsif letter.match(/[a-z]/)
        shifted_ascii = small_shifter(letter, shift)
        shifted_letters << shifted_ascii.chr
      else
        shifted_letters << letter
      end
    end
    shifted_string = shifted_letters.join("")
    shifted_string
end

# Method to shift capital letters
def cap_shifter(letter, shift)
    # Check whether shift will require wrap
    if 90 - letter.ord < shift
        # Wrap the shift back through "A"
        shifted_ascii_letter = shift - (90 - letter.ord) + 64
    else
        shifted_ascii_letter = letter.ord + shift
    end
    return shifted_ascii_letter
end

# Method to shift small letters
def small_shifter(letter, shift)
    # Check whether shift will require wrap
    if 122 - letter.ord < shift
        # Wrap the shift back through "a"
        shifted_ascii_letter = 96 + shift - (122 - letter.ord)        
    else
        shifted_ascii_letter = letter.ord + shift
    end
    return shifted_ascii_letter
end

puts "The encrypted message: #{cesar_cipher(unshift_string, shift_key)}"