(define (problem depotprob1935) (:domain Depot)
(:objects
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 depot7 depot8 depot9 - Depot
	distributor0 distributor1 distributor2 distributor3 distributor4 distributor5 distributor6 distributor7 distributor8 distributor9 - Distributor
	truck0 truck1 truck2 truck3 truck4 truck5 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 pallet29 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 crate30 crate31 crate32 crate33 crate34 crate35 crate36 crate37 crate38 crate39 crate40 crate41 crate42 crate43 crate44 crate45 crate46 crate47 crate48 crate49 crate50 crate51 crate52 crate53 crate54 crate55 crate56 crate57 crate58 crate59 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 hoist6 hoist7 hoist8 hoist9 hoist10 hoist11 hoist12 hoist13 hoist14 hoist15 hoist16 hoist17 hoist18 hoist19 hoist20 hoist21 hoist22 hoist23 hoist24 hoist25 hoist26 hoist27 hoist28 hoist29 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate16)
	(at pallet1 depot1)
	(clear pallet1)
	(at pallet2 depot2)
	(clear crate45)
	(at pallet3 depot3)
	(clear crate14)
	(at pallet4 depot4)
	(clear crate52)
	(at pallet5 depot5)
	(clear crate56)
	(at pallet6 depot6)
	(clear crate39)
	(at pallet7 depot7)
	(clear crate55)
	(at pallet8 depot8)
	(clear crate59)
	(at pallet9 depot9)
	(clear crate51)
	(at pallet10 distributor0)
	(clear crate40)
	(at pallet11 distributor1)
	(clear crate43)
	(at pallet12 distributor2)
	(clear crate36)
	(at pallet13 distributor3)
	(clear crate57)
	(at pallet14 distributor4)
	(clear pallet14)
	(at pallet15 distributor5)
	(clear pallet15)
	(at pallet16 distributor6)
	(clear pallet16)
	(at pallet17 distributor7)
	(clear crate53)
	(at pallet18 distributor8)
	(clear crate28)
	(at pallet19 distributor9)
	(clear crate58)
	(at pallet20 depot9)
	(clear crate9)
	(at pallet21 depot1)
	(clear crate41)
	(at pallet22 distributor6)
	(clear crate42)
	(at pallet23 distributor5)
	(clear crate3)
	(at pallet24 depot2)
	(clear crate34)
	(at pallet25 depot2)
	(clear crate50)
	(at pallet26 distributor6)
	(clear crate2)
	(at pallet27 distributor7)
	(clear crate22)
	(at pallet28 distributor6)
	(clear crate47)
	(at pallet29 distributor2)
	(clear crate32)
	(at truck0 distributor4)
	(= (speed truck0) 6)
	(at truck1 depot8)
	(= (speed truck1) 4)
	(at truck2 distributor2)
	(= (speed truck2) 1)
	(at truck3 depot3)
	(= (speed truck3) 7)
	(at truck4 distributor7)
	(= (speed truck4) 1)
	(at truck5 depot0)
	(= (speed truck5) 8)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 3)
	(at hoist1 depot1)
	(available hoist1)
	(= (power hoist1) 1)
	(at hoist2 depot2)
	(available hoist2)
	(= (power hoist2) 10)
	(at hoist3 depot3)
	(available hoist3)
	(= (power hoist3) 8)
	(at hoist4 depot4)
	(available hoist4)
	(= (power hoist4) 9)
	(at hoist5 depot5)
	(available hoist5)
	(= (power hoist5) 4)
	(at hoist6 depot6)
	(available hoist6)
	(= (power hoist6) 7)
	(at hoist7 depot7)
	(available hoist7)
	(= (power hoist7) 7)
	(at hoist8 depot8)
	(available hoist8)
	(= (power hoist8) 1)
	(at hoist9 depot9)
	(available hoist9)
	(= (power hoist9) 8)
	(at hoist10 distributor0)
	(available hoist10)
	(= (power hoist10) 1)
	(at hoist11 distributor1)
	(available hoist11)
	(= (power hoist11) 9)
	(at hoist12 distributor2)
	(available hoist12)
	(= (power hoist12) 8)
	(at hoist13 distributor3)
	(available hoist13)
	(= (power hoist13) 8)
	(at hoist14 distributor4)
	(available hoist14)
	(= (power hoist14) 3)
	(at hoist15 distributor5)
	(available hoist15)
	(= (power hoist15) 4)
	(at hoist16 distributor6)
	(available hoist16)
	(= (power hoist16) 6)
	(at hoist17 distributor7)
	(available hoist17)
	(= (power hoist17) 2)
	(at hoist18 distributor8)
	(available hoist18)
	(= (power hoist18) 7)
	(at hoist19 distributor9)
	(available hoist19)
	(= (power hoist19) 9)
	(at hoist20 depot8)
	(available hoist20)
	(= (power hoist20) 8)
	(at hoist21 depot2)
	(available hoist21)
	(= (power hoist21) 6)
	(at hoist22 depot7)
	(available hoist22)
	(= (power hoist22) 5)
	(at hoist23 depot5)
	(available hoist23)
	(= (power hoist23) 5)
	(at hoist24 distributor0)
	(available hoist24)
	(= (power hoist24) 3)
	(at hoist25 depot3)
	(available hoist25)
	(= (power hoist25) 5)
	(at hoist26 depot5)
	(available hoist26)
	(= (power hoist26) 1)
	(at hoist27 depot5)
	(available hoist27)
	(= (power hoist27) 1)
	(at hoist28 distributor5)
	(available hoist28)
	(= (power hoist28) 8)
	(at hoist29 distributor6)
	(available hoist29)
	(= (power hoist29) 6)
	(at crate0 depot2)
	(on crate0 pallet24)
	(= (weight crate0) 1)
	(at crate1 distributor1)
	(on crate1 pallet11)
	(= (weight crate1) 1)
	(at crate2 distributor6)
	(on crate2 pallet26)
	(= (weight crate2) 1)
	(at crate3 distributor5)
	(on crate3 pallet23)
	(= (weight crate3) 1)
	(at crate4 depot1)
	(on crate4 pallet21)
	(= (weight crate4) 1)
	(at crate5 distributor8)
	(on crate5 pallet18)
	(= (weight crate5) 1)
	(at crate6 depot8)
	(on crate6 pallet8)
	(= (weight crate6) 1)
	(at crate7 depot2)
	(on crate7 pallet2)
	(= (weight crate7) 1)
	(at crate8 distributor6)
	(on crate8 pallet28)
	(= (weight crate8) 1)
	(at crate9 depot9)
	(on crate9 pallet20)
	(= (weight crate9) 1)
	(at crate10 depot2)
	(on crate10 crate0)
	(= (weight crate10) 1)
	(at crate11 depot4)
	(on crate11 pallet4)
	(= (weight crate11) 1)
	(at crate12 depot2)
	(on crate12 pallet25)
	(= (weight crate12) 1)
	(at crate13 distributor2)
	(on crate13 pallet12)
	(= (weight crate13) 1)
	(at crate14 depot3)
	(on crate14 pallet3)
	(= (weight crate14) 1)
	(at crate15 depot6)
	(on crate15 pallet6)
	(= (weight crate15) 1)
	(at crate16 depot0)
	(on crate16 pallet0)
	(= (weight crate16) 1)
	(at crate17 depot5)
	(on crate17 pallet5)
	(= (weight crate17) 1)
	(at crate18 distributor0)
	(on crate18 pallet10)
	(= (weight crate18) 1)
	(at crate19 depot6)
	(on crate19 crate15)
	(= (weight crate19) 1)
	(at crate20 depot4)
	(on crate20 crate11)
	(= (weight crate20) 1)
	(at crate21 depot4)
	(on crate21 crate20)
	(= (weight crate21) 1)
	(at crate22 distributor7)
	(on crate22 pallet27)
	(= (weight crate22) 1)
	(at crate23 depot4)
	(on crate23 crate21)
	(= (weight crate23) 1)
	(at crate24 distributor7)
	(on crate24 pallet17)
	(= (weight crate24) 1)
	(at crate25 depot5)
	(on crate25 crate17)
	(= (weight crate25) 1)
	(at crate26 distributor7)
	(on crate26 crate24)
	(= (weight crate26) 1)
	(at crate27 distributor2)
	(on crate27 pallet29)
	(= (weight crate27) 1)
	(at crate28 distributor8)
	(on crate28 crate5)
	(= (weight crate28) 1)
	(at crate29 depot5)
	(on crate29 crate25)
	(= (weight crate29) 1)
	(at crate30 distributor3)
	(on crate30 pallet13)
	(= (weight crate30) 1)
	(at crate31 distributor9)
	(on crate31 pallet19)
	(= (weight crate31) 1)
	(at crate32 distributor2)
	(on crate32 crate27)
	(= (weight crate32) 1)
	(at crate33 depot9)
	(on crate33 pallet9)
	(= (weight crate33) 1)
	(at crate34 depot2)
	(on crate34 crate10)
	(= (weight crate34) 1)
	(at crate35 distributor1)
	(on crate35 crate1)
	(= (weight crate35) 1)
	(at crate36 distributor2)
	(on crate36 crate13)
	(= (weight crate36) 1)
	(at crate37 distributor0)
	(on crate37 crate18)
	(= (weight crate37) 1)
	(at crate38 distributor6)
	(on crate38 pallet22)
	(= (weight crate38) 1)
	(at crate39 depot6)
	(on crate39 crate19)
	(= (weight crate39) 1)
	(at crate40 distributor0)
	(on crate40 crate37)
	(= (weight crate40) 1)
	(at crate41 depot1)
	(on crate41 crate4)
	(= (weight crate41) 1)
	(at crate42 distributor6)
	(on crate42 crate38)
	(= (weight crate42) 1)
	(at crate43 distributor1)
	(on crate43 crate35)
	(= (weight crate43) 1)
	(at crate44 depot2)
	(on crate44 crate7)
	(= (weight crate44) 1)
	(at crate45 depot2)
	(on crate45 crate44)
	(= (weight crate45) 1)
	(at crate46 distributor6)
	(on crate46 crate8)
	(= (weight crate46) 1)
	(at crate47 distributor6)
	(on crate47 crate46)
	(= (weight crate47) 1)
	(at crate48 distributor7)
	(on crate48 crate26)
	(= (weight crate48) 1)
	(at crate49 depot8)
	(on crate49 crate6)
	(= (weight crate49) 1)
	(at crate50 depot2)
	(on crate50 crate12)
	(= (weight crate50) 1)
	(at crate51 depot9)
	(on crate51 crate33)
	(= (weight crate51) 1)
	(at crate52 depot4)
	(on crate52 crate23)
	(= (weight crate52) 1)
	(at crate53 distributor7)
	(on crate53 crate48)
	(= (weight crate53) 1)
	(at crate54 depot5)
	(on crate54 crate29)
	(= (weight crate54) 1)
	(at crate55 depot7)
	(on crate55 pallet7)
	(= (weight crate55) 1)
	(at crate56 depot5)
	(on crate56 crate54)
	(= (weight crate56) 1)
	(at crate57 distributor3)
	(on crate57 crate30)
	(= (weight crate57) 1)
	(at crate58 distributor9)
	(on crate58 crate31)
	(= (weight crate58) 1)
	(at crate59 depot8)
	(on crate59 crate49)
	(= (weight crate59) 1)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 depot1) 3)
	(= (distance depot0 depot2) 6)
	(= (distance depot0 depot3) 9)
	(= (distance depot0 depot4) 9)
	(= (distance depot0 depot5) 3)
	(= (distance depot0 depot6) 1)
	(= (distance depot0 depot7) 9)
	(= (distance depot0 depot8) 7)
	(= (distance depot0 depot9) 4)
	(= (distance depot0 distributor0) 8)
	(= (distance depot0 distributor1) 8)
	(= (distance depot0 distributor2) 6)
	(= (distance depot0 distributor3) 7)
	(= (distance depot0 distributor4) 8)
	(= (distance depot0 distributor5) 9)
	(= (distance depot0 distributor6) 4)
	(= (distance depot0 distributor7) 4)
	(= (distance depot0 distributor8) 5)
	(= (distance depot0 distributor9) 2)
	(= (distance depot1 depot0) 6)
	(= (distance depot1 depot1) 0)
	(= (distance depot1 depot2) 10)
	(= (distance depot1 depot3) 2)
	(= (distance depot1 depot4) 10)
	(= (distance depot1 depot5) 6)
	(= (distance depot1 depot6) 9)
	(= (distance depot1 depot7) 1)
	(= (distance depot1 depot8) 7)
	(= (distance depot1 depot9) 8)
	(= (distance depot1 distributor0) 9)
	(= (distance depot1 distributor1) 7)
	(= (distance depot1 distributor2) 1)
	(= (distance depot1 distributor3) 5)
	(= (distance depot1 distributor4) 5)
	(= (distance depot1 distributor5) 9)
	(= (distance depot1 distributor6) 7)
	(= (distance depot1 distributor7) 6)
	(= (distance depot1 distributor8) 7)
	(= (distance depot1 distributor9) 3)
	(= (distance depot2 depot0) 9)
	(= (distance depot2 depot1) 5)
	(= (distance depot2 depot2) 0)
	(= (distance depot2 depot3) 4)
	(= (distance depot2 depot4) 2)
	(= (distance depot2 depot5) 8)
	(= (distance depot2 depot6) 3)
	(= (distance depot2 depot7) 6)
	(= (distance depot2 depot8) 2)
	(= (distance depot2 depot9) 7)
	(= (distance depot2 distributor0) 8)
	(= (distance depot2 distributor1) 7)
	(= (distance depot2 distributor2) 10)
	(= (distance depot2 distributor3) 8)
	(= (distance depot2 distributor4) 8)
	(= (distance depot2 distributor5) 10)
	(= (distance depot2 distributor6) 3)
	(= (distance depot2 distributor7) 7)
	(= (distance depot2 distributor8) 1)
	(= (distance depot2 distributor9) 10)
	(= (distance depot3 depot0) 4)
	(= (distance depot3 depot1) 9)
	(= (distance depot3 depot2) 6)
	(= (distance depot3 depot3) 0)
	(= (distance depot3 depot4) 3)
	(= (distance depot3 depot5) 1)
	(= (distance depot3 depot6) 3)
	(= (distance depot3 depot7) 10)
	(= (distance depot3 depot8) 6)
	(= (distance depot3 depot9) 10)
	(= (distance depot3 distributor0) 2)
	(= (distance depot3 distributor1) 5)
	(= (distance depot3 distributor2) 5)
	(= (distance depot3 distributor3) 3)
	(= (distance depot3 distributor4) 8)
	(= (distance depot3 distributor5) 6)
	(= (distance depot3 distributor6) 10)
	(= (distance depot3 distributor7) 10)
	(= (distance depot3 distributor8) 2)
	(= (distance depot3 distributor9) 1)
	(= (distance depot4 depot0) 7)
	(= (distance depot4 depot1) 9)
	(= (distance depot4 depot2) 8)
	(= (distance depot4 depot3) 7)
	(= (distance depot4 depot4) 0)
	(= (distance depot4 depot5) 5)
	(= (distance depot4 depot6) 7)
	(= (distance depot4 depot7) 8)
	(= (distance depot4 depot8) 1)
	(= (distance depot4 depot9) 7)
	(= (distance depot4 distributor0) 7)
	(= (distance depot4 distributor1) 5)
	(= (distance depot4 distributor2) 6)
	(= (distance depot4 distributor3) 3)
	(= (distance depot4 distributor4) 10)
	(= (distance depot4 distributor5) 8)
	(= (distance depot4 distributor6) 3)
	(= (distance depot4 distributor7) 2)
	(= (distance depot4 distributor8) 7)
	(= (distance depot4 distributor9) 8)
	(= (distance depot5 depot0) 2)
	(= (distance depot5 depot1) 9)
	(= (distance depot5 depot2) 3)
	(= (distance depot5 depot3) 7)
	(= (distance depot5 depot4) 2)
	(= (distance depot5 depot5) 0)
	(= (distance depot5 depot6) 3)
	(= (distance depot5 depot7) 1)
	(= (distance depot5 depot8) 10)
	(= (distance depot5 depot9) 4)
	(= (distance depot5 distributor0) 2)
	(= (distance depot5 distributor1) 6)
	(= (distance depot5 distributor2) 2)
	(= (distance depot5 distributor3) 10)
	(= (distance depot5 distributor4) 3)
	(= (distance depot5 distributor5) 7)
	(= (distance depot5 distributor6) 4)
	(= (distance depot5 distributor7) 9)
	(= (distance depot5 distributor8) 5)
	(= (distance depot5 distributor9) 5)
	(= (distance depot6 depot0) 6)
	(= (distance depot6 depot1) 2)
	(= (distance depot6 depot2) 10)
	(= (distance depot6 depot3) 1)
	(= (distance depot6 depot4) 4)
	(= (distance depot6 depot5) 9)
	(= (distance depot6 depot6) 0)
	(= (distance depot6 depot7) 7)
	(= (distance depot6 depot8) 1)
	(= (distance depot6 depot9) 6)
	(= (distance depot6 distributor0) 5)
	(= (distance depot6 distributor1) 3)
	(= (distance depot6 distributor2) 5)
	(= (distance depot6 distributor3) 7)
	(= (distance depot6 distributor4) 9)
	(= (distance depot6 distributor5) 6)
	(= (distance depot6 distributor6) 6)
	(= (distance depot6 distributor7) 1)
	(= (distance depot6 distributor8) 7)
	(= (distance depot6 distributor9) 6)
	(= (distance depot7 depot0) 5)
	(= (distance depot7 depot1) 9)
	(= (distance depot7 depot2) 2)
	(= (distance depot7 depot3) 6)
	(= (distance depot7 depot4) 8)
	(= (distance depot7 depot5) 4)
	(= (distance depot7 depot6) 3)
	(= (distance depot7 depot7) 0)
	(= (distance depot7 depot8) 3)
	(= (distance depot7 depot9) 8)
	(= (distance depot7 distributor0) 7)
	(= (distance depot7 distributor1) 9)
	(= (distance depot7 distributor2) 10)
	(= (distance depot7 distributor3) 6)
	(= (distance depot7 distributor4) 10)
	(= (distance depot7 distributor5) 4)
	(= (distance depot7 distributor6) 5)
	(= (distance depot7 distributor7) 8)
	(= (distance depot7 distributor8) 10)
	(= (distance depot7 distributor9) 6)
	(= (distance depot8 depot0) 3)
	(= (distance depot8 depot1) 4)
	(= (distance depot8 depot2) 8)
	(= (distance depot8 depot3) 8)
	(= (distance depot8 depot4) 1)
	(= (distance depot8 depot5) 7)
	(= (distance depot8 depot6) 3)
	(= (distance depot8 depot7) 7)
	(= (distance depot8 depot8) 0)
	(= (distance depot8 depot9) 9)
	(= (distance depot8 distributor0) 2)
	(= (distance depot8 distributor1) 1)
	(= (distance depot8 distributor2) 7)
	(= (distance depot8 distributor3) 3)
	(= (distance depot8 distributor4) 7)
	(= (distance depot8 distributor5) 5)
	(= (distance depot8 distributor6) 7)
	(= (distance depot8 distributor7) 10)
	(= (distance depot8 distributor8) 6)
	(= (distance depot8 distributor9) 10)
	(= (distance depot9 depot0) 7)
	(= (distance depot9 depot1) 2)
	(= (distance depot9 depot2) 8)
	(= (distance depot9 depot3) 6)
	(= (distance depot9 depot4) 8)
	(= (distance depot9 depot5) 7)
	(= (distance depot9 depot6) 9)
	(= (distance depot9 depot7) 2)
	(= (distance depot9 depot8) 5)
	(= (distance depot9 depot9) 0)
	(= (distance depot9 distributor0) 7)
	(= (distance depot9 distributor1) 8)
	(= (distance depot9 distributor2) 2)
	(= (distance depot9 distributor3) 5)
	(= (distance depot9 distributor4) 5)
	(= (distance depot9 distributor5) 3)
	(= (distance depot9 distributor6) 1)
	(= (distance depot9 distributor7) 7)
	(= (distance depot9 distributor8) 9)
	(= (distance depot9 distributor9) 7)
	(= (distance distributor0 depot0) 5)
	(= (distance distributor0 depot1) 10)
	(= (distance distributor0 depot2) 8)
	(= (distance distributor0 depot3) 2)
	(= (distance distributor0 depot4) 3)
	(= (distance distributor0 depot5) 5)
	(= (distance distributor0 depot6) 6)
	(= (distance distributor0 depot7) 9)
	(= (distance distributor0 depot8) 4)
	(= (distance distributor0 depot9) 1)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 1)
	(= (distance distributor0 distributor2) 3)
	(= (distance distributor0 distributor3) 6)
	(= (distance distributor0 distributor4) 7)
	(= (distance distributor0 distributor5) 10)
	(= (distance distributor0 distributor6) 3)
	(= (distance distributor0 distributor7) 6)
	(= (distance distributor0 distributor8) 2)
	(= (distance distributor0 distributor9) 7)
	(= (distance distributor1 depot0) 4)
	(= (distance distributor1 depot1) 8)
	(= (distance distributor1 depot2) 5)
	(= (distance distributor1 depot3) 6)
	(= (distance distributor1 depot4) 3)
	(= (distance distributor1 depot5) 9)
	(= (distance distributor1 depot6) 8)
	(= (distance distributor1 depot7) 3)
	(= (distance distributor1 depot8) 5)
	(= (distance distributor1 depot9) 6)
	(= (distance distributor1 distributor0) 10)
	(= (distance distributor1 distributor1) 0)
	(= (distance distributor1 distributor2) 6)
	(= (distance distributor1 distributor3) 8)
	(= (distance distributor1 distributor4) 2)
	(= (distance distributor1 distributor5) 8)
	(= (distance distributor1 distributor6) 2)
	(= (distance distributor1 distributor7) 7)
	(= (distance distributor1 distributor8) 7)
	(= (distance distributor1 distributor9) 6)
	(= (distance distributor2 depot0) 8)
	(= (distance distributor2 depot1) 5)
	(= (distance distributor2 depot2) 7)
	(= (distance distributor2 depot3) 1)
	(= (distance distributor2 depot4) 1)
	(= (distance distributor2 depot5) 4)
	(= (distance distributor2 depot6) 10)
	(= (distance distributor2 depot7) 4)
	(= (distance distributor2 depot8) 9)
	(= (distance distributor2 depot9) 1)
	(= (distance distributor2 distributor0) 10)
	(= (distance distributor2 distributor1) 3)
	(= (distance distributor2 distributor2) 0)
	(= (distance distributor2 distributor3) 5)
	(= (distance distributor2 distributor4) 8)
	(= (distance distributor2 distributor5) 1)
	(= (distance distributor2 distributor6) 3)
	(= (distance distributor2 distributor7) 6)
	(= (distance distributor2 distributor8) 3)
	(= (distance distributor2 distributor9) 7)
	(= (distance distributor3 depot0) 2)
	(= (distance distributor3 depot1) 2)
	(= (distance distributor3 depot2) 7)
	(= (distance distributor3 depot3) 7)
	(= (distance distributor3 depot4) 10)
	(= (distance distributor3 depot5) 8)
	(= (distance distributor3 depot6) 5)
	(= (distance distributor3 depot7) 1)
	(= (distance distributor3 depot8) 4)
	(= (distance distributor3 depot9) 1)
	(= (distance distributor3 distributor0) 7)
	(= (distance distributor3 distributor1) 2)
	(= (distance distributor3 distributor2) 6)
	(= (distance distributor3 distributor3) 0)
	(= (distance distributor3 distributor4) 2)
	(= (distance distributor3 distributor5) 6)
	(= (distance distributor3 distributor6) 7)
	(= (distance distributor3 distributor7) 2)
	(= (distance distributor3 distributor8) 9)
	(= (distance distributor3 distributor9) 5)
	(= (distance distributor4 depot0) 2)
	(= (distance distributor4 depot1) 9)
	(= (distance distributor4 depot2) 8)
	(= (distance distributor4 depot3) 1)
	(= (distance distributor4 depot4) 3)
	(= (distance distributor4 depot5) 5)
	(= (distance distributor4 depot6) 1)
	(= (distance distributor4 depot7) 5)
	(= (distance distributor4 depot8) 1)
	(= (distance distributor4 depot9) 4)
	(= (distance distributor4 distributor0) 2)
	(= (distance distributor4 distributor1) 3)
	(= (distance distributor4 distributor2) 6)
	(= (distance distributor4 distributor3) 8)
	(= (distance distributor4 distributor4) 0)
	(= (distance distributor4 distributor5) 5)
	(= (distance distributor4 distributor6) 5)
	(= (distance distributor4 distributor7) 4)
	(= (distance distributor4 distributor8) 6)
	(= (distance distributor4 distributor9) 9)
	(= (distance distributor5 depot0) 5)
	(= (distance distributor5 depot1) 3)
	(= (distance distributor5 depot2) 10)
	(= (distance distributor5 depot3) 10)
	(= (distance distributor5 depot4) 6)
	(= (distance distributor5 depot5) 2)
	(= (distance distributor5 depot6) 5)
	(= (distance distributor5 depot7) 2)
	(= (distance distributor5 depot8) 3)
	(= (distance distributor5 depot9) 3)
	(= (distance distributor5 distributor0) 7)
	(= (distance distributor5 distributor1) 5)
	(= (distance distributor5 distributor2) 2)
	(= (distance distributor5 distributor3) 4)
	(= (distance distributor5 distributor4) 5)
	(= (distance distributor5 distributor5) 0)
	(= (distance distributor5 distributor6) 9)
	(= (distance distributor5 distributor7) 6)
	(= (distance distributor5 distributor8) 9)
	(= (distance distributor5 distributor9) 10)
	(= (distance distributor6 depot0) 10)
	(= (distance distributor6 depot1) 10)
	(= (distance distributor6 depot2) 2)
	(= (distance distributor6 depot3) 6)
	(= (distance distributor6 depot4) 7)
	(= (distance distributor6 depot5) 1)
	(= (distance distributor6 depot6) 1)
	(= (distance distributor6 depot7) 2)
	(= (distance distributor6 depot8) 5)
	(= (distance distributor6 depot9) 6)
	(= (distance distributor6 distributor0) 10)
	(= (distance distributor6 distributor1) 9)
	(= (distance distributor6 distributor2) 9)
	(= (distance distributor6 distributor3) 10)
	(= (distance distributor6 distributor4) 8)
	(= (distance distributor6 distributor5) 4)
	(= (distance distributor6 distributor6) 0)
	(= (distance distributor6 distributor7) 3)
	(= (distance distributor6 distributor8) 6)
	(= (distance distributor6 distributor9) 4)
	(= (distance distributor7 depot0) 5)
	(= (distance distributor7 depot1) 2)
	(= (distance distributor7 depot2) 9)
	(= (distance distributor7 depot3) 7)
	(= (distance distributor7 depot4) 5)
	(= (distance distributor7 depot5) 3)
	(= (distance distributor7 depot6) 10)
	(= (distance distributor7 depot7) 4)
	(= (distance distributor7 depot8) 9)
	(= (distance distributor7 depot9) 8)
	(= (distance distributor7 distributor0) 3)
	(= (distance distributor7 distributor1) 9)
	(= (distance distributor7 distributor2) 8)
	(= (distance distributor7 distributor3) 4)
	(= (distance distributor7 distributor4) 4)
	(= (distance distributor7 distributor5) 5)
	(= (distance distributor7 distributor6) 5)
	(= (distance distributor7 distributor7) 0)
	(= (distance distributor7 distributor8) 6)
	(= (distance distributor7 distributor9) 9)
	(= (distance distributor8 depot0) 10)
	(= (distance distributor8 depot1) 6)
	(= (distance distributor8 depot2) 8)
	(= (distance distributor8 depot3) 8)
	(= (distance distributor8 depot4) 6)
	(= (distance distributor8 depot5) 5)
	(= (distance distributor8 depot6) 1)
	(= (distance distributor8 depot7) 7)
	(= (distance distributor8 depot8) 7)
	(= (distance distributor8 depot9) 6)
	(= (distance distributor8 distributor0) 10)
	(= (distance distributor8 distributor1) 2)
	(= (distance distributor8 distributor2) 8)
	(= (distance distributor8 distributor3) 9)
	(= (distance distributor8 distributor4) 9)
	(= (distance distributor8 distributor5) 2)
	(= (distance distributor8 distributor6) 1)
	(= (distance distributor8 distributor7) 8)
	(= (distance distributor8 distributor8) 0)
	(= (distance distributor8 distributor9) 10)
	(= (distance distributor9 depot0) 6)
	(= (distance distributor9 depot1) 8)
	(= (distance distributor9 depot2) 8)
	(= (distance distributor9 depot3) 4)
	(= (distance distributor9 depot4) 2)
	(= (distance distributor9 depot5) 2)
	(= (distance distributor9 depot6) 8)
	(= (distance distributor9 depot7) 6)
	(= (distance distributor9 depot8) 5)
	(= (distance distributor9 depot9) 4)
	(= (distance distributor9 distributor0) 5)
	(= (distance distributor9 distributor1) 4)
	(= (distance distributor9 distributor2) 9)
	(= (distance distributor9 distributor3) 2)
	(= (distance distributor9 distributor4) 2)
	(= (distance distributor9 distributor5) 4)
	(= (distance distributor9 distributor6) 7)
	(= (distance distributor9 distributor7) 2)
	(= (distance distributor9 distributor8) 10)
	(= (distance distributor9 distributor9) 0)
)

(:goal (and
		(on crate0 crate2)
		(on crate1 crate10)
		(on crate2 pallet3)
		(on crate5 pallet10)
		(on crate6 pallet29)
		(on crate8 pallet25)
		(on crate9 crate54)
		(on crate10 pallet8)
		(on crate11 crate1)
		(on crate13 pallet27)
		(on crate14 crate44)
		(on crate15 pallet19)
		(on crate16 crate11)
		(on crate17 crate29)
		(on crate18 crate20)
		(on crate19 crate40)
		(on crate20 pallet6)
		(on crate21 pallet2)
		(on crate22 crate5)
		(on crate24 crate43)
		(on crate25 crate56)
		(on crate29 pallet5)
		(on crate30 crate55)
		(on crate32 crate42)
		(on crate33 pallet7)
		(on crate34 pallet1)
		(on crate35 crate0)
		(on crate36 crate15)
		(on crate37 crate34)
		(on crate38 crate50)
		(on crate39 pallet14)
		(on crate40 pallet18)
		(on crate41 crate17)
		(on crate42 pallet11)
		(on crate43 pallet13)
		(on crate44 crate21)
		(on crate45 crate14)
		(on crate46 pallet21)
		(on crate48 pallet20)
		(on crate50 pallet12)
		(on crate51 crate39)
		(on crate52 pallet23)
		(on crate53 pallet9)
		(on crate54 crate37)
		(on crate55 pallet28)
		(on crate56 pallet17)
		(on crate57 crate32)
		(on crate58 crate48)
	)
)

(:metric minimize (total-time)))