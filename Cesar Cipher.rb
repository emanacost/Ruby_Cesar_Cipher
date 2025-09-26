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





# Method to shift capital letters
def cap_shifter(letter, shift)
    ascii_letter = letter.ord
    # Check whether shift will require wrap
    if letter.ord - 90 > shift
        # Wrap the shift back to "A"
    else
        shifted_ascii_letter = letter.ord + shift
    end
end

# Method to shift small letters
def small_shifter(letter, shift)
    ascii_letter = letter.ord
    # Check whether shift will require wrap
    if letter.ord - 122 > shift
        # Wrap the shift back to "a"
    else
        shifted_ascii_letter = letter.ord + shift
    end
end