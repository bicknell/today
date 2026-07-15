1 REM  today 1.2  5/20/92
2 & WHEN NOT ON LINE GOTO 15: & ON INT GOTO 19: ONERR GOTO 17
3 O = 0:A = 1:B = 2:C = 3:D = 4:D$ = CHR$ (D)
4 REM  Get Config
5 & RESTORE C TO A$:P = O: FOR I = A TO 6:Q = P + A: & POS (Q,A$ + ":",":"),P:C$(I) = MID$ (A$,Q,P - Q): NEXT
6 REM  Get Args
7 & RESTORE B TO AR$:SU = ASC (AR$): DIM AR$( ASC ( MID$ (AR$,B)) + A):Q = 8:AR = O: & REPT: & POS (Q,AR$, CHR$ (O)),P:AR$(AR) = MID$ (AR$,Q,P - Q):Q = P + A:I = Q > LEN (AR$):AR = AR + NOT I: & UNTIL(I)
8 REM  Get ID
9 & RESTORE O TO A$:P = O: FOR I = A TO 5: & POS (P + A,A$ + ":",":"),Q:ID$(I) = MID$ (A$,P + A,Q - P - A):P = Q: NEXT
10 GOTO 20: REM  Main
11 REM  Exit
12 & RESTORE A TO A$: & POS (A$ + ":",":"),P: & STORE MID$ (A$,P + A) TO A:A$ = MID$ (A$,A,P - A)
13 PRINT D$"CLOSE": PRINT D$"-"A$
14 REM  Logout
15 & STORE "" TO A:A$ = C$(A) + "bin/login": GOTO 13
16 REM  Error
17 & ONERR E,L
18 PRINT D$"CLOSE": PRINT AR$(0)" err"E"@"L;
19 PRINT : GOTO 12
20 :
21 IF AR AND AR$(1) = "-s" THEN GOSUB 50
22 DIM M$(12): & TIME(T$):DAY$ = MID$ (T$,1,2):TYPE$(1) = "B":TYPE$(2) = "S":TYPE = 1:MAXTYPE = 2
23 HDR$(1) = "Happy Birthday to...":HDR$(2) = "On this day..."
24 DT$ = RIGHT$ ("00" + STR$ ( VAL ( MID$ (T$,6,2))),2)
25 MN$ = MID$ (T$,9,3)
26 DY$ = "?SuMoTuWeThFrSa":MO$ = "??JanFebMarAprMayJunJulAugSepOctNovDec"
27 & POS (MO$,MN$),P:DT$ = RIGHT$ ("00" + STR$ (P / 3),2) + RIGHT$ ("00" + STR$( VAL ( MID$ (T$,6,2))),2)
28 & POS (DY$,DAY$),P:DAY$ = STR$ (P / 2)
29 FOR I = 1 TO 12: READ M$(I): NEXT I
30 DATA January,February,March,April,May,June,July,August,September,October,November,December
31 FOR I = 1 TO 7: READ CD$(I): NEXT I
32 DATA Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
33 GOSUB 53
34 F$ = C$(1) + "games/lib/today/" + MID$ (T$,9,3)
35 PRINT D$"open"F$
36 ONERR GOTO 46
37 CUR$ = TYPE$(TYPE):TD$ = CUR$ + DT$: & REPT
38 PRINT D$"read"F$
39 & GET L$
40 & UNTIL(( MID$ (L$,1,5) = TD$) OR ( LEFT$ (L$,1) = TYPE$(TYPE + 1))): IF LEFT$ (L$,1) = TYPE$(TYPE + 1) THEN TYPE = TYPE + 1: GOTO 37
41 & REPT
42 DP$ = MID$ (L$,10,1): IF DP$ = DAY$ OR DP$ = " " THEN GOSUB 47: PRINT "   In" MID$ (L$,6,4)" " MID$ (L$,11)
43 & GET L$:GOOD = ( MID$ (L$,1,5) = TD$): IF MID$ (L$,10,1) = "C" AND GOOD THEN PRINT SPC( 11); MID$ (L$,11)
44 & UNTIL( NOT GOOD)
45 TYPE = TYPE + 1: IF TYPE < = MAXTYPE THEN 37
46 PRINT D$"close": PRINT : GOTO 12
47 IF NOT HDR(TYPE) THEN PRINT : PRINT HDR$(TYPE):HDR(TYPE) = 1
48 IF MID$ (L$,6,4) = "    " THEN L$ = MID$ (L$,1,5) + "19" + MID$ (T$,13,2) + MID$ (L$,10)
49 RETURN
50 PRINT D$"open"C$(5)"utmp": PRINT D$"read"C$(5)"utmp": & GET LL$: PRINT D$"close": & TIME(T$)
51 IF LEFT$ (LL$,14) = LEFT$ (T$,14) THEN & POP : GOTO 12
52 RETURN
53 & TIME(T$):AP$ = "am":HH = VAL ( MID$ (T$,16,2)): IF HH > = 12 THEN AP$ = "pm":HH = HH - 12
54 IF NOT HH THEN HH = 12
55 CH = VAL ( MID$ (T$,16,2)): IF CH > = 0 AND CH < = 11 THEN GT$ = "Good morning!"
56 IF CH > = 12 AND CH < = 17 THEN GT$ = "Good afternoon!"
57 IF CH > = 18 AND CH < = 23 THEN GT$ = "Good evening!"
58 EN = VAL ( MID$ (T$,6,2)): IF (EN > = 10) AND (EN < = 20) THEN EN$ = "th": GOTO 64
59 EN = VAL ( MID$ (T$,7,1))
60 EN$ = "th"
61 IF EN = 1 THEN EN$ = "st"
62 IF EN = 2 THEN EN$ = "nd"
63 IF EN = 3 THEN EN$ = "rd"
64 GT$ = GT$ + "  It's " + STR$ (HH) + MID$ (T$,18,3) + AP$ + " on " + CD$( VAL(DAY$)) + ", " + M$( VAL ( MID$ (DT$,1,2))) + " " + STR$ ( VAL ( MID$ (T$,6,2))) + EN$ + ", 19" + MID$ (T$,13,2)
65 PRINT GT$: RETURN
