Print[Resolve[
  !(((2.02389 * (3307 * (2 / Sqrt[Pi]) *
  NIntegrate[ Exp[-1 * t^2] , {t, 0, (14147 - 2*568.4105)/(2 * Sqrt[2] * Sqrt[24248365.5428])}]
    + 16693
  )) / (6693 * ((2/Sqrt[Pi]) *
      NIntegrate[ Exp[-1 * t^2] ,
      {t, 0, (12625081 - 2000*568.4105)/(400 * Sqrt[50 * 24248365.5428 + 2253955380])}]
    ) + 13307 * 4 ))
  > (1 - 0.15))
  ]]
