Feature: Card Minimum

    Scenario: Total charge is over $2 credit card Minimum
        Given Maria orders $3 of Coffee from Li
        And the total charge is over the card minimum
        When Maria pays with a credit card
        Then Li should process the payment

    Scenario: Total charge is under $2 credit card Minimum
        Given Maria orders $1 of Coffee from Li
        When Maria pays with a credit card
        Then Li should not process the payment