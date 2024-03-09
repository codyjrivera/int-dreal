Print[Resolve[Exists[{mu,sigma},
mu >= 20 && mu <= 30 && sigma >= 5 && sigma <= 15,
  !((Integrate[
       (1 / (sigma * Sqrt[2 * Pi]))
       * Exp[-(1/2) * ((x - mu) / sigma)^2],
       {x, -4 * 10, 5 - 5}
     ]
     + Integrate[
	   (1 / (5 * Sqrt[2 * Pi]))
	   * Exp[-(1/2) * ((z - 10) / 5)^2]
	   * (1 / (sigma * Sqrt[2 * Pi]))
	   * Exp[-(1/2) * ((x - mu) / sigma)^2],
	   {x, 5 - 5, 4 * 10},
	   {z, x/5, 4 * 10}
       ])
     >=
     ((1 - 0.1)
      * (Integrate[
       (1 / (sigma * Sqrt[2 * Pi]))
       * Exp[-(1/2) * ((x - mu) / sigma)^2],
       {x, -4 * 10, 5}
     ]
     + Integrate[
	   (1 / (5 * Sqrt[2 * Pi]))
	   * Exp[-(1/2) * ((z - 10) / 5)^2]
	   * (1 / (sigma * Sqrt[2 * Pi]))
	   * Exp[-(1/2) * ((x - mu) / sigma)^2],
	   {x, 5, 4 * 10},
	   {z, (x - 5)/5, 4 * 10}
       ])
     + (14/100000)))]]]