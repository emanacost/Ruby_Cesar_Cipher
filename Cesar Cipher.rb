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