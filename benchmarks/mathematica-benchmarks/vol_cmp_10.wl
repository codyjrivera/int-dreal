Print[Resolve[Exists[ {eps, x, y},eps > 1/10 && eps < 1/5,!((
  Integrate[Integrate[Sin[x] * Sin[x]  + Exp[3 *eps * y], {x, 0,y} ], {y, 0, 1}]
 )
  > (Integrate[Integrate[ Sin[x] * Sin[x] + Exp[3 *eps * y], {x, 0,y * y} ], {y, 0, 1}] + 1/100))
  ], Reals]]