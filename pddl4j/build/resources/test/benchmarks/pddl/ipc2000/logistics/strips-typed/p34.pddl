(define (problem logistics-16-1)
(:domain logistics)
(:objects
    APN2
    APN1
 - AIRPLANE
    APT6
    APT5
    APT4
    APT3
    APT2
    APT1
 - AIRPORT
    POS6
    POS5
    POS4
    POS3
    POS2
    POS1
 - LOCATION
    CIT6
    CIT5
    CIT4
    CIT3
    CIT2
    CIT1
 - CITY
    TRU6
    TRU5
    TRU4
    TRU3
    TRU2
    TRU1
 - TRUCK
    OBJ63
    OBJ62
    OBJ61
    OBJ53
    OBJ52
    OBJ51
    OBJ43
    OBJ42
    OBJ41
    OBJ33
    OBJ32
    OBJ31
    OBJ23
    OBJ22
    OBJ21
    OBJ13
    OBJ12
    OBJ11
 - PACKAGE
)
(:init
    (AT APN1 APT6)
    (AT APN2 APT5)
    (AT TRU1 POS1)
    (AT OBJ11 POS1)
    (AT OBJ12 POS1)
    (AT OBJ13 POS1)
    (AT TRU2 POS2)
    (AT OBJ21 POS2)
    (AT OBJ22 POS2)
    (AT OBJ23 POS2)
    (AT TRU3 POS3)
    (AT OBJ31 POS3)
    (AT OBJ32 POS3)
    (AT OBJ33 POS3)
    (AT TRU4 POS4)
    (AT OBJ41 POS4)
    (AT OBJ42 POS4)
    (AT OBJ43 POS4)
    (AT TRU5 POS5)
    (AT OBJ51 POS5)
    (AT OBJ52 POS5)
    (AT OBJ53 POS5)
    (AT TRU6 POS6)
    (AT OBJ61 POS6)
    (AT OBJ62 POS6)
    (AT OBJ63 POS6)
    (IN-CITY POS1 CIT1)
    (IN-CITY APT1 CIT1)
    (IN-CITY POS2 CIT2)
    (IN-CITY APT2 CIT2)
    (IN-CITY POS3 CIT3)
    (IN-CITY APT3 CIT3)
    (IN-CITY POS4 CIT4)
    (IN-CITY APT4 CIT4)
    (IN-CITY POS5 CIT5)
    (IN-CITY APT5 CIT5)
    (IN-CITY POS6 CIT6)
    (IN-CITY APT6 CIT6)
)
(:goal (and
    (AT OBJ11 POS5)
    (AT OBJ31 APT2)
    (AT OBJ52 APT4)
    (AT OBJ13 APT1)
    (AT OBJ32 APT6)
    (AT OBJ53 APT3)
    (AT OBJ22 POS5)
    (AT OBJ63 APT5)
    (AT OBJ12 APT4)
    (AT OBJ62 APT6)
    (AT OBJ43 APT6)
    (AT OBJ51 APT6)
    (AT OBJ33 APT2)
    (AT OBJ61 APT5)
    (AT OBJ42 POS2)
    (AT OBJ21 APT4)
)
)
)
