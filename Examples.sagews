︠045b921a-72a7-4b7a-b33a-d03260f847d5︠
attach('ShiodaTheorem5_2.sage')

m=21
save(Bset(m,1,'./Data/U_m21_d1'), './Data/B_m21_d1')
save(Bset(m,2,'./Data/U_m21_d2'), './Data/B_m21_d2')
save(Bset(m,3,'./Data/U_m21_d3'), './Data/B_m21_d3')


save(Exceptional(m,2, './Data/B_m21_d1','./Data/B_m21_d2', './Data/B_m21_d3'), './Data/E_m21_d2')
save(Exceptional(m,3, './Data/B_m21_d1','./Data/B_m21_d2', './Data/B_m21_d3'), './Data/E_m21_d3')

save(Exceptionalrelprime(m,2,'./Data/E_m21_d2'), './Data/ERP_m21_d2')
save(Exceptionalrelprime(m,3,'./Data/E_m21_d3'), './Data/ERP_m21_d3')

#These are the exceptional Hodge cycles in codimension 2 and 3
load('./Data/E_m21_d2')
load('./Data/E_m21_d3')

#These are the exceptional Hodge cycles in codimension 2 and 3 whose entries are relatively prime to m
load('./Data/ERP_m21_d2') #empty output since no exceptional cycles in codim 2 meet the criteria
load('./Data/ERP_m21_d3')
︡c66c1e16-f033-4efd-92dc-c7c3c0c2fd88︡{"stdout":"[{8, 17, 12, 5}, {8, 18, 11, 5}, {19, 12, 5, 6}, {11, 20, 5, 6}, {16, 9, 4, 13}, {9, 18, 11, 4}, {19, 4, 13, 6}, {16, 10, 3, 13}, {17, 10, 3, 12}, {3, 20, 13, 6}, {16, 9, 2, 15}, {9, 2, 11, 20}, {8, 17, 2, 15}, {17, 2, 3, 20}, {16, 1, 10, 15}, {1, 10, 19, 12}, {8, 1, 18, 15}, {1, 18, 19, 4}]\n"}︡{"stdout":"[{4, 20, 6, 9, 11, 13}, {18, 19, 4, 5, 6, 11}, {3, 19, 6, 10, 12, 13}, {17, 3, 20, 5, 6, 12}, {2, 18, 8, 9, 11, 15}, {17, 2, 20, 5, 8, 11}, {16, 17, 2, 3, 10, 15}, {16, 2, 3, 20, 9, 13}, {1, 17, 8, 10, 12, 15}, {1, 18, 19, 5, 8, 12}, {16, 1, 19, 4, 10, 13}, {16, 1, 18, 4, 9, 15}]\n"}︡{"stdout":"[]\n"}︡{"stdout":"[{17, 2, 20, 5, 8, 11}, {16, 1, 19, 4, 10, 13}]\n"}︡{"done":true}
︠4a4a030e-c375-4085-8004-0aaaa42c84d4︠
#Another example
m=27
save(Bset(m,1,'./Data/U_m27_d1'), './Data/B_m27_d1')
save(Bset(m,2,'./Data/U_m27_d2'), './Data/B_m27_d2')
save(Bset(m,3,'./Data/U_m27_d3'), './Data/B_m27_d3')


save(Exceptional(m,2, './Data/B_m27_d1','./Data/B_m27_d2', './Data/B_m27_d3'), './Data/E_m27_d2')
save(Exceptional(m,3, './Data/B_m27_d1','./Data/B_m27_d2', './Data/B_m27_d3'), './Data/E_m27_d3')

save(Exceptionalrelprime(m,2,'./Data/E_m27_d2'), './Data/ERP_m27_d2')
save(Exceptionalrelprime(m,3,'./Data/E_m27_d3'), './Data/ERP_m27_d3')

#These are the exceptional Hodge cycles in codimension 2 and 3
load('./Data/E_m27_d2')
load('./Data/E_m27_d3')

#These are the exceptional Hodge cycles in codimension 2 and 3 whose entries are relatively prime to m
load('./Data/ERP_m27_d2') #empty output since no exceptional cycles in codim 2 meet the criteria
load('./Data/ERP_m27_d3') #empty output since no exceptional cycles in codim 3 meet the criteria
︡9fd0059e-0222-402e-94b0-825f2b72c367︡{"stdout":"[{24, 9, 6, 15}, {16, 25, 6, 7}, {12, 5, 14, 23}, {4, 13, 22, 15}, {18, 3, 12, 21}, {8, 17, 26, 3}, {2, 11, 20, 21}, {24, 1, 10, 19}]\n"}︡{"stdout":"[{17, 6, 8, 9, 26, 15}, {5, 6, 23, 24, 9, 14}, {16, 18, 3, 7, 25, 12}, {18, 3, 4, 21, 22, 13}, {2, 20, 24, 9, 11, 15}, {1, 18, 19, 21, 10, 12}]\n"}︡{"stdout":"[]\n"}︡{"stdout":"[]\n"}︡{"done":true}
︠591d1434-de42-44e1-ba30-eccd12d7c2b2︠
attach('MumfordTateMatrix.sage')

p=5

#The character map for J_{p^2} as a matrix M
show(MT_matrix_p2(p))
︡3049d6fc-27d8-4cd8-829b-1b5d55ee224a︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrrrrrrrrrrrrrrrrrrrrrr}\n1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 \\\\\n0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 \\\\\n1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 \\\\\n1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 \\\\\n1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 \\\\\n1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 \\\\\n1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 \\\\\n1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 \\\\\n1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 0 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 1 &amp; 0 &amp; 0 &amp; 1 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠169e20f1-1afa-4424-adbd-b66a4f2c749bs︠
#Test to see if the projection MT(X x J_{p}) --> MT(X) is an isomorphism or isogeny
#output is 1 is it is an isomorphism
degreekernel2(p)

#Test to see if the projection MT(X1 x X2 x J_{p}) --> MT(X1) is an isomorphism or isogeny
#output is 1 is it is an isomorphism
degreekernel3(p)
︡e9e25e44-9822-4819-826d-aae860cbaa90︡{"stdout":"1\n"}︡{"stdout":"1"}︡{"stdout":"\n"}︡{"done":true}
︠c22c45eb-307d-4119-bce5-12a7e5ef2c02︠









