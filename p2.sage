from functools import reduce
from itertools import combinations

var("x1 x2")
r1 = x1 + x2 >= 1
r2 = x1 -2*x2 <= 2
r3 = 4*x1 - x2 >= -11
r4 = -x1 + x2 <= 8
r5 = x2 >= 0

f1 = x1 + x2 == 1
f2 = x1 -2*x2 == 2
f3 = 4*x1 - x2 == -11
f4 = -x1 + x2 == 8
f5 = x2 == 0

rx = (-3,10)
ry = rx

r = [r1, r2, r3, r4, r5]
f = [f1, f2, f3, f4, f5]

p = region_plot(r, rx, ry)
p+= implicit_plot(f1, rx, ry, color="black")
p+= implicit_plot(f2, rx, ry, color="black") # red
p+= implicit_plot(f3, rx, ry, color="black")
p+= implicit_plot(f4, rx, ry, color="black") # red
p+= implicit_plot(f5, rx, ry, color="black")

SB = []
for k in combinations(f, 2):
    SB.append(solve([k[0], k[1]], [x1, x2]))

print("Las soluciones básicas son:")
for sb in SB:
    print(sb[0])

SBF = []
for sb in SB:
    if reduce(lambda x,y: x and y, list(map(lambda x: bool(x.substitute(sb)), r))):
       	SBF.append(sb)

print("Las soluciones básicas factibles son:")
for sbf in SBF:
    print(sbf[0])



show(p, axes="true", frame=False, aspect_ratio=1, ticks=[1,1], gridlines='true')


## P2.5
print("Solving p2.5")
var("x1 x2 y1 y2 v1 v2 l")

fir_mem = l*x1 + (1-l)*y1==v1
sec_mem = l*x2 + (1-l)*y2==v2

c1 = [[[x1 == -2, x2 == 3]],
      [[x1 == 1, x2 == 0]],
      [[x1 == 2, x2 == 0]],
      [[x1 == -1, x2 == 7]]]
c2 = [[[y1 == -2, y2 == 3]],
      [[y1 == 1, y2 == 0]],
      [[y1 == 2, y2 == 0]],
      [[y1 == -1, y2 == 7]]]

print("Combinación convexa")
# (1,1)
for i in c1:
    for j in c2:
        sols = solve([fir_mem.substitute(i).substitute(j).substitute(v1==1), sec_mem.substitute(i).substitute(j).substitute(v2==1)], l)
        if(len(sols)>0):
            print(sols)

# (2,3)
for i in c1:
    for j in c2:
        sols = solve([fir_mem.substitute(i).substitute(j).substitute(v1==3), sec_mem.substitute(i).substitute(j).substitute(v2==2)], l)
        if(len(sols)>0):
            print(sols)

print("Combinación con rayos:")

var("x1 x2 y1 y2 v1 v2 l t d") # t: largo del rayo; d: dirección del rayo

fir_mem = l*x1 + (1-l)*y1 + t*(1+d)==v1
sec_mem = l*x2 + (1-l)*y2 + t==v2

print("Vector (1,1)")
for i in c1:
    for j in c2:
        sols = solve([fir_mem.substitute(i).substitute(j).substitute(v1==1), sec_mem.substitute(i).substitute(j).substitute(v2==1), l>0, l<1, d>0, d<1, t>0], [l,t,d])
        if(len(sols) > 0):
            print("SBF: {} con {}".format(i,j))
            print(sols)

print("Vector (3,2)")
for i in c1:
    for j in c2:
        sols = solve([fir_mem.substitute(i).substitute(j).substitute(v1==3), sec_mem.substitute(i).substitute(j).substitute(v2==2), l>0, l<1, d>0, d<1, t>0], [l,t,d])
        if(len(sols) > 0):
            print("SBF: {} con {}".format(i,j))
            print(sols)
            

