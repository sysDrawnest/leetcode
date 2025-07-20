#!/bin/bash

# This script calculates the frequency of each word in 'words.txt'
# and outputs them sorted by descending frequency.

# 1. Use 'cat' to read the content of words.txt.
# 2. Use 'tr -s " "' to squeeze multiple spaces into a single space.
# 3. Use 'tr " " "\n"' to replace all spaces with newlines, putting each word on its own line.
#    This handles cases where words are separated by one or more whitespace characters.
# 4. Use 'sort' to sort the words alphabetically. This groups identical words together.
# 5. Use 'uniq -c' to count the occurrences of each unique, consecutive word.
#    The output format will be " COUNT WORD".
# 6. Use 'sort -nr' to sort the results numerically (-n) in reverse (-r) order.
#    This sorts by the frequency (the count) in descending order.
# 7. Use 'awk '{print $2, $1}'' to reformat the output.
#    $2 refers to the second field (the word), and $1 refers to the first field (the count).
#    This prints the word followed by its count, separated by a space.

cat words.txt | tr -s " " "\n" | sort | uniq -c | sort -nr | awk '{print $2, $1}'
