/* WARNING : LCHIP system source file, do not edit */
/* VERSION FOR PROB */
// you can attach a file pragma to use this file instead of g_operators.mch
// SEES g_operators /*@file prob_specific/g_operators.mch */

MACHINE
    g_operators
DEFINITIONS //added for ProB
   "LibraryBits.def"
SEES
    g_types /*@file ../g_types.mch */
CONCRETE_CONSTANTS
    bitwise_sll_uint32,
    bitwise_srl_uint32,
    bitwise_not_uint32,
    bitwise_and_uint32,
    bitwise_xor_uint32,
    bitwise_or_uint32,
    bitwise_sll_uint16,
    bitwise_srl_uint16,
    bitwise_not_uint16,
    bitwise_and_uint16,
    bitwise_xor_uint16,
    bitwise_or_uint16,
    bitwise_sll_uint8,
    bitwise_srl_uint8,
    bitwise_not_uint8,
    bitwise_and_uint8,
    bitwise_xor_uint8,
    bitwise_or_uint8,

    add_uint32,
    sub_uint32,
    mul_uint32,
    add_uint16,
    sub_uint16,
    mul_uint16,
    add_uint8,
    sub_uint8,
    mul_uint8
PROPERTIES

    bitwise_not_uint8 = /*@symbolic */ %x.(x:uint8_t | BXOR(x,MAX_UINT8)) &
    bitwise_and_uint8 = /*@symbolic */ %(x,y).(x:uint8_t & y: uint8_t|BAND(x,y)) &
    bitwise_or_uint8 =  /*@symbolic */ %(x,y).(x:uint8_t & y: uint8_t|BOR(x,y)) &
    bitwise_xor_uint8 = /*@symbolic */ %(x,y).(x:uint8_t & y: uint8_t|BXOR(x,y)) &

    bitwise_not_uint16 = /*@symbolic */ %x.(x:uint16_t | BXOR(x,MAX_UINT16)) &
    bitwise_and_uint16 = /*@symbolic */ %(x,y).(x:uint16_t & y: uint16_t|BAND(x,y)) &
    bitwise_or_uint16 =  /*@symbolic */ %(x,y).(x:uint16_t & y: uint16_t|BOR(x,y)) &
    bitwise_xor_uint16 = /*@symbolic */ %(x,y).(x:uint16_t & y: uint16_t|BXOR(x,y)) &

    bitwise_not_uint32 = /*@symbolic */ %x.(x:uint32_t | BXOR(x,MAX_UINT32)) &
    bitwise_and_uint32 = /*@symbolic */ %(x,y).(x:uint32_t & y: uint32_t|BAND(x,y)) &
    bitwise_or_uint32 =  /*@symbolic */ %(x,y).(x:uint32_t & y: uint32_t|BOR(x,y)) &
    bitwise_xor_uint32 = /*@symbolic */ %(x,y).(x:uint32_t & y: uint32_t|BXOR(x,y)) &

    bitwise_sll_uint32 = /*@symbolic */ %(x1,x2).(x1 : uint32_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT32 + 1)) &
    bitwise_sll_uint16 = /*@symbolic */ %(x1,x2).(x1 : uint16_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT16 + 1)) &
    bitwise_sll_uint8 = /*@symbolic */ %(x1,x2).(x1 : uint8_t & x2 : uint8_t | (x1 * (2**x2)) mod (MAX_UINT8 + 1)) &
    bitwise_srl_uint32 = /*@symbolic */ %(x1,x2).(x1 : uint32_t & x2 : uint8_t | x1 / (2**x2)) &
    bitwise_srl_uint16 = /*@symbolic */ %(x1,x2).(x1 : uint16_t & x2 : uint8_t | x1 / (2**x2)) &
    bitwise_srl_uint8 = /*@symbolic */ %(x1,x2).(x1 : uint8_t & x2 : uint8_t | x1 / (2**x2)) &

    add_uint32 = /*@symbolic */ %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 + x2) mod (MAX_UINT32 + 1)) &
    sub_uint32 = /*@symbolic */ %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 - x2 + MAX_UINT32 + 1) mod (MAX_UINT32 + 1)) &
    mul_uint32 = /*@symbolic */ %(x1,x2).(x1 : uint32_t & x2 : uint32_t | (x1 * x2) mod (MAX_UINT32 + 1)) &
    add_uint16 = /*@symbolic */ %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 + y2) mod (MAX_UINT16 + 1)) &
    sub_uint16 = /*@symbolic */ %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 - y2 + MAX_UINT16 + 1) mod (MAX_UINT16 + 1)) &
    mul_uint16 = /*@symbolic */ %(y1,y2).(y1 : uint16_t & y2 : uint16_t | (y1 * y2) mod (MAX_UINT16 + 1)) &
    add_uint8 = /*@symbolic */ %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 + y2) mod (MAX_UINT8 + 1)) &
    sub_uint8 = /*@symbolic */ %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 - y2 + MAX_UINT8 + 1) mod (MAX_UINT8 + 1)) &
    mul_uint8 = /*@symbolic */ %(y1,y2).(y1 : uint8_t & y2 : uint8_t | (y1 * y2) mod (MAX_UINT8 + 1))

END
