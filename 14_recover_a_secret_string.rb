def recover_secret triplets

  ranking_array = []

  triplets.each do |triplet|
  # first check if any of the letters in this triplet have been seen before

    char1 = triplet[0]
    char2 = triplet[1]
    char3 = triplet[2]

    char1_found = false
    char2_found = false
    char3_found = false

    ranking_array.each do |header_char|
      char1_found = true if header_char[0] == char1
      char2_found = true if header_char[0] == char2
      char3_found = true if header_char[0] == char3
    end

    # now create ranking arrays for any new characters
    ranking_array.push([char1]) unless char1_found
    ranking_array.push([char2]) unless char2_found
    ranking_array.push([char3]) unless char3_found

    # next we need to append char1's ranking array with any new letters, and char2 with a letter if it's new
    char2_in1_found = false
    char3_in1_found = false

    char3_in2_found = false

    ranking_array.each do |header_char|
      if header_char[0] == char1
        header_char.each do |sub_letter|
          char2_in1_found = true if sub_letter == char2
          char3_in1_found = true if sub_letter == char3
        end
        # now we push char2 and char3 if they're not already in there
        header_char.push(char2) unless char2_in1_found
        header_char.push(char3) unless char3_in1_found
      end

      if header_char[0] == char2
        header_char.each do |sub_letter|
          if sub_letter == char3
            char3_in2_found = true
          end
        end
        # now we push on char3 if it's not already in there
        header_char.push(char3) unless char3_in2_found
      end
    end
  end

  # now we need to sort out final ranking, and recursively test the ranking arrays against each other until we've caught everything, i.e. nothing changes anymore

  keep_running = true

  while keep_running do
    ranking_array_old = ranking_array.dup

    ranking_array.each do |header_char| # at this point we're looking at ["t", "u", "p", "s", "i"]
      header_char.each_with_index do |head_letter, i| # at this point we're looking at each letter from ["t", "u", "p", "s", "i"]
        unless i == 0
          ranking_array.each do |comparison|
            if comparison[0] == head_letter # for first successful loop we're looking at "u"
              comparison.each do |letter| # here we're looking at each letter from ["u", "p"]
                letter_found = false
                header_char.each do |test|
                  if test == letter
                    letter_found = true
                  end
                end
                header_char.push(letter) unless letter_found
              end
            end
          end
        end
      end
    end
    keep_running = false if ranking_array == ranking_array_old
  end

  # penultimate step is making a hash of all the ranking array lengths
  ranking_hash = {}

  ranking_array.each do |header_char|
    ranking_hash[header_char.length] = header_char[0]
  end

  i = ranking_hash.length
  secret = ""

  while i > 0 do
    secret << ranking_hash[i]
    i -= 1
  end

  return secret
end


triplets_1 = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]

recover_secret triplets_1