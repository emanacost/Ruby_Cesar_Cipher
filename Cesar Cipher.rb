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


# Method to shift capital letters
def cap_shifter(letter, shift)
    # Check whether shift will require wrap
    if letter.ord - 90 > shift
        # Wrap the shift back through "A"
        wrapped_shift = shift - (90 - letter.ord)
        shifted_ascii_letter = 64 + wrapped_shift
    else
        shifted_ascii_letter = letter.ord + shift
    end
    return shifted_ascii_letter
end

# Method to shift small letters
def small_shifter(letter, shift)
    # Check whether shift will require wrap
    if letter.ord - 122 > shift
        # Wrap the shift back through "a"
        wrapped_shift = shift - (122 - letter.ord)
        shifted_ascii_letter = 96 + wrapped_shift        
    else
        shifted_ascii_letter = letter.ord + shift
    end
    return shifted_ascii_letter
end