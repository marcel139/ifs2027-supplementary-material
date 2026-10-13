/* WARNING : LCHIP system source file, do not edit */
/* version for ProB to allow increasing ms_tick clock */
/* the original Atelier-B version declares ms_tick as a constant that stays at 0 always */
/* One can add and prove an invariant ms_tick = 0 */

MACHINE
    lchip_interface
SEES
    g_types /*@file "../g_types.mch" */,
    lchip_configuration  /*@file "../lchip_configuration.mch" */
ABSTRACT_VARIABLES
    ms_tick
INVARIANT
    ms_tick : uint32_t
INITIALISATION
    ms_tick := 0
OPERATIONS
    print_global_inputs=
    BEGIN
        skip
    END;

    state <-- read_global_input(input_id) =
    PRE
        input_id : uint8_t &
        input_id < MAX_NB_INPUTS &
        state : uint8_t
    THEN
        state :: uint8_t
    END;

    write_global_output(output_id, state) =
    PRE
        output_id : uint8_t &
        output_id < MAX_NB_OUTPUTS &
        state : uint8_t
    THEN
        skip
    END;

    out <-- get_ms_tick =
    PRE
        out : uint32_t
    THEN
        out := ms_tick
    END;

    /* removed, as it plays no role in animation
    print_uint8(tag, value) =
    PRE
        tag : uint8_t &
        value : uint8_t
    THEN
        skip
    END
    */

    time_elapses(delta) =
    PRE
        delta : uint32_t & delta>0
        & delta : {1, 10, 100, 1000} // reduce non-determinism in animation
    THEN
        ms_tick := ms_tick + delta
    END
END
