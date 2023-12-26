#!/bin/bash
# Fortune Teller

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")

GET_FORTUNE() {
    if [[ ! $1 ]]; then
        echo 'Ask a YES or NO question'
    else
        echo 'Try again. Make sure it ends with a question mark'
    fi
    read -p "Your question: " QUESTION
}

GET_FORTUNE
until [[ $QUESTION =~ \?$ ]]; do
    GET_FORTUNE again
done

echo -e "\nThe fortune-teller says: ${RESPONSES[$N]}"
