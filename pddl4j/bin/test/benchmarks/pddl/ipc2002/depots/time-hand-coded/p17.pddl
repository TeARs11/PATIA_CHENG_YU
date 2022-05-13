(define (problem depotprob6587) (:domain Depot)
(:objects
	depot0 depot1 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 truck2 truck3 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 pallet6 pallet7 pallet8 pallet9 pallet10 pallet11 pallet12 pallet13 pallet14 pallet15 pallet16 pallet17 pallet18 pallet19 pallet20 pallet21 pallet22 pallet23 pallet24 pallet25 pallet26 pallet27 pallet28 pallet29 pallet30 pallet31 pallet32 pallet33 pallet34 pallet35 pallet36 pallet37 pallet38 pallet39 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 crate30 crate31 crate32 crate33 crate34 crate35 crate36 crate37 crate38 crate39 crate40 crate41 crate42 crate43 crate44 crate45 crate46 crate47 crate48 crate49 crate50 crate51 crate52 crate53 crate54 crate55 crate56 crate57 crate58 crate59 crate60 crate61 crate62 crate63 crate64 crate65 crate66 crate67 crate68 crate69 crate70 crate71 crate72 crate73 crate74 crate75 crate76 crate77 crate78 crate79 crate80 crate81 crate82 crate83 crate84 crate85 crate86 crate87 crate88 crate89 crate90 crate91 crate92 crate93 crate94 crate95 crate96 crate97 crate98 crate99 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate67)
	(at pallet1 depot1)
	(clear crate79)
	(at pallet2 distributor0)
	(clear pallet2)
	(at pallet3 distributor1)
	(clear pallet3)
	(at pallet4 depot0)
	(clear pallet4)
	(at pallet5 distributor0)
	(clear crate75)
	(at pallet6 distributor0)
	(clear crate63)
	(at pallet7 depot1)
	(clear crate66)
	(at pallet8 distributor0)
	(clear crate98)
	(at pallet9 distributor1)
	(clear crate38)
	(at pallet10 depot0)
	(clear crate99)
	(at pallet11 distributor1)
	(clear crate31)
	(at pallet12 distributor1)
	(clear crate12)
	(at pallet13 depot1)
	(clear crate86)
	(at pallet14 depot0)
	(clear crate81)
	(at pallet15 distributor0)
	(clear crate96)
	(at pallet16 distributor0)
	(clear crate88)
	(at pallet17 distributor0)
	(clear crate18)
	(at pallet18 depot0)
	(clear crate80)
	(at pallet19 distributor1)
	(clear crate95)
	(at pallet20 depot0)
	(clear crate45)
	(at pallet21 depot0)
	(clear crate90)
	(at pallet22 depot0)
	(clear crate89)
	(at pallet23 depot1)
	(clear crate82)
	(at pallet24 depot1)
	(clear crate94)
	(at pallet25 distributor1)
	(clear crate24)
	(at pallet26 distributor1)
	(clear crate93)
	(at pallet27 depot1)
	(clear crate74)
	(at pallet28 depot1)
	(clear crate29)
	(at pallet29 distributor1)
	(clear crate97)
	(at pallet30 distributor1)
	(clear crate13)
	(at pallet31 depot1)
	(clear crate92)
	(at pallet32 distributor1)
	(clear crate91)
	(at pallet33 distributor1)
	(clear crate77)
	(at pallet34 depot1)
	(clear crate85)
	(at pallet35 distributor1)
	(clear crate54)
	(at pallet36 depot1)
	(clear crate84)
	(at pallet37 depot0)
	(clear crate30)
	(at pallet38 depot0)
	(clear pallet38)
	(at pallet39 distributor1)
	(clear crate60)
	(at truck0 depot1)
	(= (speed truck0) 2)
	(at truck1 distributor1)
	(= (speed truck1) 2)
	(at truck2 depot1)
	(= (speed truck2) 8)
	(at truck3 depot0)
	(= (speed truck3) 5)
	(at hoist0 depot0)
	(available hoist0)
	(= (power hoist0) 5)
	(at hoist1 depot1)
	(available hoist1)
	(= (power hoist1) 4)
	(at hoist2 distributor0)
	(available hoist2)
	(= (power hoist2) 2)
	(at hoist3 distributor1)
	(available hoist3)
	(= (power hoist3) 4)
	(at hoist4 depot0)
	(available hoist4)
	(= (power hoist4) 4)
	(at hoist5 depot0)
	(available hoist5)
	(= (power hoist5) 5)
	(at crate0 distributor1)
	(on crate0 pallet12)
	(= (weight crate0) 1)
	(at crate1 distributor1)
	(on crate1 pallet30)
	(= (weight crate1) 1)
	(at crate2 distributor1)
	(on crate2 pallet33)
	(= (weight crate2) 1)
	(at crate3 depot0)
	(on crate3 pallet14)
	(= (weight crate3) 1)
	(at crate4 depot1)
	(on crate4 pallet24)
	(= (weight crate4) 1)
	(at crate5 distributor0)
	(on crate5 pallet15)
	(= (weight crate5) 1)
	(at crate6 distributor1)
	(on crate6 crate0)
	(= (weight crate6) 1)
	(at crate7 distributor0)
	(on crate7 pallet5)
	(= (weight crate7) 1)
	(at crate8 depot0)
	(on crate8 pallet22)
	(= (weight crate8) 1)
	(at crate9 depot0)
	(on crate9 crate8)
	(= (weight crate9) 1)
	(at crate10 depot0)
	(on crate10 pallet21)
	(= (weight crate10) 1)
	(at crate11 distributor1)
	(on crate11 pallet11)
	(= (weight crate11) 1)
	(at crate12 distributor1)
	(on crate12 crate6)
	(= (weight crate12) 1)
	(at crate13 distributor1)
	(on crate13 crate1)
	(= (weight crate13) 1)
	(at crate14 depot1)
	(on crate14 pallet13)
	(= (weight crate14) 1)
	(at crate15 distributor0)
	(on crate15 pallet8)
	(= (weight crate15) 1)
	(at crate16 depot0)
	(on crate16 pallet18)
	(= (weight crate16) 1)
	(at crate17 depot0)
	(on crate17 crate3)
	(= (weight crate17) 1)
	(at crate18 distributor0)
	(on crate18 pallet17)
	(= (weight crate18) 1)
	(at crate19 distributor1)
	(on crate19 pallet25)
	(= (weight crate19) 1)
	(at crate20 depot0)
	(on crate20 pallet37)
	(= (weight crate20) 1)
	(at crate21 depot1)
	(on crate21 pallet34)
	(= (weight crate21) 1)
	(at crate22 distributor1)
	(on crate22 crate2)
	(= (weight crate22) 1)
	(at crate23 depot0)
	(on crate23 pallet20)
	(= (weight crate23) 1)
	(at crate24 distributor1)
	(on crate24 crate19)
	(= (weight crate24) 1)
	(at crate25 depot1)
	(on crate25 crate21)
	(= (weight crate25) 1)
	(at crate26 depot0)
	(on crate26 pallet0)
	(= (weight crate26) 1)
	(at crate27 depot0)
	(on crate27 crate16)
	(= (weight crate27) 1)
	(at crate28 distributor1)
	(on crate28 crate11)
	(= (weight crate28) 1)
	(at crate29 depot1)
	(on crate29 pallet28)
	(= (weight crate29) 1)
	(at crate30 depot0)
	(on crate30 crate20)
	(= (weight crate30) 1)
	(at crate31 distributor1)
	(on crate31 crate28)
	(= (weight crate31) 1)
	(at crate32 distributor1)
	(on crate32 pallet35)
	(= (weight crate32) 1)
	(at crate33 distributor1)
	(on crate33 pallet26)
	(= (weight crate33) 1)
	(at crate34 distributor0)
	(on crate34 pallet16)
	(= (weight crate34) 1)
	(at crate35 depot0)
	(on crate35 crate17)
	(= (weight crate35) 1)
	(at crate36 depot1)
	(on crate36 crate14)
	(= (weight crate36) 1)
	(at crate37 depot1)
	(on crate37 pallet23)
	(= (weight crate37) 1)
	(at crate38 distributor1)
	(on crate38 pallet9)
	(= (weight crate38) 1)
	(at crate39 depot1)
	(on crate39 crate37)
	(= (weight crate39) 1)
	(at crate40 distributor0)
	(on crate40 pallet6)
	(= (weight crate40) 1)
	(at crate41 depot1)
	(on crate41 pallet1)
	(= (weight crate41) 1)
	(at crate42 depot1)
	(on crate42 crate39)
	(= (weight crate42) 1)
	(at crate43 depot0)
	(on crate43 crate23)
	(= (weight crate43) 1)
	(at crate44 distributor1)
	(on crate44 pallet29)
	(= (weight crate44) 1)
	(at crate45 depot0)
	(on crate45 crate43)
	(= (weight crate45) 1)
	(at crate46 distributor0)
	(on crate46 crate7)
	(= (weight crate46) 1)
	(at crate47 depot1)
	(on crate47 crate41)
	(= (weight crate47) 1)
	(at crate48 depot0)
	(on crate48 crate27)
	(= (weight crate48) 1)
	(at crate49 depot1)
	(on crate49 crate36)
	(= (weight crate49) 1)
	(at crate50 depot0)
	(on crate50 crate26)
	(= (weight crate50) 1)
	(at crate51 distributor0)
	(on crate51 crate15)
	(= (weight crate51) 1)
	(at crate52 depot1)
	(on crate52 pallet36)
	(= (weight crate52) 1)
	(at crate53 depot0)
	(on crate53 crate10)
	(= (weight crate53) 1)
	(at crate54 distributor1)
	(on crate54 crate32)
	(= (weight crate54) 1)
	(at crate55 depot0)
	(on crate55 crate50)
	(= (weight crate55) 1)
	(at crate56 depot0)
	(on crate56 crate9)
	(= (weight crate56) 1)
	(at crate57 depot0)
	(on crate57 pallet10)
	(= (weight crate57) 1)
	(at crate58 depot0)
	(on crate58 crate53)
	(= (weight crate58) 1)
	(at crate59 depot0)
	(on crate59 crate55)
	(= (weight crate59) 1)
	(at crate60 distributor1)
	(on crate60 pallet39)
	(= (weight crate60) 1)
	(at crate61 depot1)
	(on crate61 crate52)
	(= (weight crate61) 1)
	(at crate62 depot1)
	(on crate62 crate49)
	(= (weight crate62) 1)
	(at crate63 distributor0)
	(on crate63 crate40)
	(= (weight crate63) 1)
	(at crate64 distributor1)
	(on crate64 crate33)
	(= (weight crate64) 1)
	(at crate65 distributor1)
	(on crate65 crate64)
	(= (weight crate65) 1)
	(at crate66 depot1)
	(on crate66 pallet7)
	(= (weight crate66) 1)
	(at crate67 depot0)
	(on crate67 crate59)
	(= (weight crate67) 1)
	(at crate68 depot1)
	(on crate68 pallet27)
	(= (weight crate68) 1)
	(at crate69 depot0)
	(on crate69 crate57)
	(= (weight crate69) 1)
	(at crate70 distributor1)
	(on crate70 crate65)
	(= (weight crate70) 1)
	(at crate71 distributor1)
	(on crate71 crate70)
	(= (weight crate71) 1)
	(at crate72 depot1)
	(on crate72 crate62)
	(= (weight crate72) 1)
	(at crate73 depot0)
	(on crate73 crate35)
	(= (weight crate73) 1)
	(at crate74 depot1)
	(on crate74 crate68)
	(= (weight crate74) 1)
	(at crate75 distributor0)
	(on crate75 crate46)
	(= (weight crate75) 1)
	(at crate76 depot1)
	(on crate76 crate61)
	(= (weight crate76) 1)
	(at crate77 distributor1)
	(on crate77 crate22)
	(= (weight crate77) 1)
	(at crate78 depot1)
	(on crate78 crate47)
	(= (weight crate78) 1)
	(at crate79 depot1)
	(on crate79 crate78)
	(= (weight crate79) 1)
	(at crate80 depot0)
	(on crate80 crate48)
	(= (weight crate80) 1)
	(at crate81 depot0)
	(on crate81 crate73)
	(= (weight crate81) 1)
	(at crate82 depot1)
	(on crate82 crate42)
	(= (weight crate82) 1)
	(at crate83 depot1)
	(on crate83 pallet31)
	(= (weight crate83) 1)
	(at crate84 depot1)
	(on crate84 crate76)
	(= (weight crate84) 1)
	(at crate85 depot1)
	(on crate85 crate25)
	(= (weight crate85) 1)
	(at crate86 depot1)
	(on crate86 crate72)
	(= (weight crate86) 1)
	(at crate87 depot1)
	(on crate87 crate83)
	(= (weight crate87) 1)
	(at crate88 distributor0)
	(on crate88 crate34)
	(= (weight crate88) 1)
	(at crate89 depot0)
	(on crate89 crate56)
	(= (weight crate89) 1)
	(at crate90 depot0)
	(on crate90 crate58)
	(= (weight crate90) 1)
	(at crate91 distributor1)
	(on crate91 pallet32)
	(= (weight crate91) 1)
	(at crate92 depot1)
	(on crate92 crate87)
	(= (weight crate92) 1)
	(at crate93 distributor1)
	(on crate93 crate71)
	(= (weight crate93) 1)
	(at crate94 depot1)
	(on crate94 crate4)
	(= (weight crate94) 1)
	(at crate95 distributor1)
	(on crate95 pallet19)
	(= (weight crate95) 1)
	(at crate96 distributor0)
	(on crate96 crate5)
	(= (weight crate96) 1)
	(at crate97 distributor1)
	(on crate97 crate44)
	(= (weight crate97) 1)
	(at crate98 distributor0)
	(on crate98 crate51)
	(= (weight crate98) 1)
	(at crate99 depot0)
	(on crate99 crate69)
	(= (weight crate99) 1)
	(= (distance depot0 depot0) 0)
	(= (distance depot0 depot1) 10)
	(= (distance depot0 distributor0) 1)
	(= (distance depot0 distributor1) 6)
	(= (distance depot1 depot0) 10)
	(= (distance depot1 depot1) 0)
	(= (distance depot1 distributor0) 6)
	(= (distance depot1 distributor1) 8)
	(= (distance distributor0 depot0) 3)
	(= (distance distributor0 depot1) 8)
	(= (distance distributor0 distributor0) 0)
	(= (distance distributor0 distributor1) 5)
	(= (distance distributor1 depot0) 10)
	(= (distance distributor1 depot1) 1)
	(= (distance distributor1 distributor0) 8)
	(= (distance distributor1 distributor1) 0)
)

(:goal (and
		(on crate0 crate62)
		(on crate1 crate3)
		(on crate2 crate71)
		(on crate3 crate25)
		(on crate4 crate40)
		(on crate5 crate43)
		(on crate6 pallet13)
		(on crate7 crate23)
		(on crate8 pallet28)
		(on crate9 crate6)
		(on crate11 pallet23)
		(on crate12 crate27)
		(on crate13 crate72)
		(on crate14 crate60)
		(on crate15 crate51)
		(on crate16 crate63)
		(on crate18 crate59)
		(on crate19 pallet34)
		(on crate20 crate88)
		(on crate21 crate64)
		(on crate23 pallet38)
		(on crate24 pallet30)
		(on crate25 pallet20)
		(on crate26 pallet17)
		(on crate27 crate26)
		(on crate28 pallet27)
		(on crate29 crate35)
		(on crate30 pallet16)
		(on crate32 pallet3)
		(on crate33 crate75)
		(on crate34 pallet1)
		(on crate35 pallet31)
		(on crate36 crate77)
		(on crate37 pallet11)
		(on crate38 crate69)
		(on crate39 crate90)
		(on crate40 pallet9)
		(on crate41 crate18)
		(on crate42 crate24)
		(on crate43 pallet24)
		(on crate44 crate67)
		(on crate46 pallet0)
		(on crate48 crate7)
		(on crate49 crate42)
		(on crate50 crate53)
		(on crate51 pallet14)
		(on crate53 crate38)
		(on crate54 crate28)
		(on crate55 crate68)
		(on crate56 crate65)
		(on crate59 pallet25)
		(on crate60 pallet2)
		(on crate62 pallet19)
		(on crate63 pallet6)
		(on crate64 crate16)
		(on crate65 crate9)
		(on crate66 crate86)
		(on crate67 pallet18)
		(on crate68 pallet7)
		(on crate69 pallet36)
		(on crate70 crate93)
		(on crate71 pallet32)
		(on crate72 crate94)
		(on crate73 crate91)
		(on crate75 crate46)
		(on crate77 crate99)
		(on crate78 crate4)
		(on crate79 pallet15)
		(on crate81 pallet5)
		(on crate82 crate20)
		(on crate83 pallet10)
		(on crate84 crate96)
		(on crate85 pallet22)
		(on crate86 pallet39)
		(on crate88 crate89)
		(on crate89 pallet29)
		(on crate90 pallet33)
		(on crate91 crate85)
		(on crate92 crate13)
		(on crate93 crate81)
		(on crate94 pallet12)
		(on crate95 crate79)
		(on crate96 crate70)
		(on crate97 pallet26)
		(on crate99 crate11)
	)
)

(:metric minimize (total-time)))