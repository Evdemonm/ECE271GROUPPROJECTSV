vsim work.buttonBoard_testTop

add wave *

force test_clk 2#1 @0
force test_clk 2#0 @25
force test_clk 2#1 @50
force test_clk 2#0 @75
force test_clk 2#1 @100
force test_clk 2#0 @125
force test_clk 2#1 @150
force test_clk 2#0 @175
force test_clk 2#1 @200
force test_clk 2#0 @225
force test_clk 2#1 @250
force test_clk 2#0 @275
force test_clk 2#1 @300
force test_clk 2#0 @325
force test_clk 2#1 @350
force test_clk 2#0 @375
force test_clk 2#1 @400
force test_clk 2#0 @425
force test_clk 2#1 @450
force test_clk 2#0 @475
force test_clk 2#1 @500
force test_clk 2#0 @525
force test_clk 2#1 @550
force test_clk 2#0 @575
force test_clk 2#1 @600
force test_clk 2#0 @625
force test_clk 2#1 @650
force test_clk 2#0 @675
force test_clk 2#1 @700
force test_clk 2#0 @725
force test_clk 2#1 @750
force test_clk 2#0 @775
force test_clk 2#1 @800
force test_clk 2#0 @825
force test_clk 2#1 @850
force test_clk 2#0 @875
force test_clk 2#1 @900
force test_clk 2#0 @925
force test_clk 2#1 @950
force test_clk 2#0 @975
force test_clk 2#1 @1000

force buttonBoard 2#00000001 @100
force buttonBoard 2#00000010 @200
force buttonBoard 2#00000100 @300
force buttonBoard 2#00001000 @400
force buttonBoard 2#00010000 @500
force buttonBoard 2#00100000 @600
force buttonBoard 2#01000000 @700
force buttonBoard 2#10000000 @800

run 1000