Print[Resolve[Exists[eps,
	eps > 1/10 && eps <= 1, ! ((1 / ( 2 * Pi  * ((22/10) / eps) * ((22/10) / eps))) * (Integrate[Integrate[
		Exp[-(((x - 0) * (x - 0))/(2 * ((22/10) / eps) * ((22/10) / eps)))]
		* Exp[-(((y - 0) * (y - 0))/(2 * ((22/10) / eps) * ((22/10) / eps)))],
	     {y, -10, 10}],{x,-10, 10}]))
	     <= ((Exp[eps])* ((1 / ( 2 * Pi  * ((22/10) / eps) * ((22/10) / eps))) * (Integrate[Integrate[
		Exp[-(((x - 1) * (x - 1))/(2 * ((22/10) / eps) * ((22/10) / eps)))]
		* Exp[-(((y - 0) * (y - 0))/(2 * ((22/10) / eps) * ((22/10) / eps)))],
	     {y, -10, 10}],{x,-10, 10}])) + (1/8))]]]