Feature: code-breaker submit guess

    The code-breaker submits a guess of four numbers. The game marks a guess
    with + and - signs.

    For each number in the guess that matches the number and position of a number in the secret code,
    the mark includes one + sign. For each number in the guess that matchs the number but not the
    position of a number in the secret code, the mark include one - sign.

    Scenario Outline: submit a guess
        Given the secret code is "<code>"
        When I guess "<guess>"
        Then the mark should be "<mark>"

    Scenarios: no matches
        | code   | guess  | mark  |
        | 1234   | 5678   |       |

    Scenarios: 1 number correct
        | code   | guess  | mark  |
        | 1234   | 1555   | +     |
        | 1234   | 2555   | -     |

    Scenarios: 2 numbers correct
        | code   | guess  | mark  |
        | 1234   | 1255   | ++    |
        | 1234   | 1355   | +-    |
        | 1234   | 2355   | --    |

    Scenarios: 3 numbers correct
        | code   | guess  | mark  |
        | 1234   | 1234   | ++++  |
        | 1234   | 1243   | ++--  |
        | 1234   | 1423   | +---  |
        | 1234   | 4321   | ----  |

    Scenarios: all numbers correct
        | code   | guess  | mark  |
        | 1234   | 1234   | ++++  |
        | 1234   | 1243   | ++--  |
        | 1234   | 1423   | +---  |
        | 1234   | 4321   | +---  |
