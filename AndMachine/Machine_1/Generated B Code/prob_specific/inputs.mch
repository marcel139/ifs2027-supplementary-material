/* WARNING : LCHIP system source file, do not edit */

MACHINE
    inputs
SEES
    g_types /*@file ../g_types.mch */
ABSTRACT_VARIABLES
    board_0_I1,
    board_0_I2,
    board_0_I3
INVARIANT
    board_0_I1 : uint8_t &
    board_0_I2 : uint8_t &
    board_0_I3 : uint8_t
INITIALISATION
    board_0_I1 :: {0,1} ||
    board_0_I2 :: {0,1} ||
    board_0_I3 :: {0,1}
OPERATIONS
    read_inputs =
    BEGIN
        board_0_I1 :: {0,1} ||
        board_0_I2 :: {0,1} ||
        board_0_I3 :: {0,1}
    END;

    po <-- get_board_0_I1 =
    PRE
        po : uint8_t
    THEN
        po := board_0_I1
    END;

    po <-- get_board_0_I2 =
    PRE
        po : uint8_t
    THEN
        po := board_0_I2
    END;

    po <-- get_board_0_I3 =
    PRE
        po : uint8_t
    THEN
        po := board_0_I3
    END
END
