; f(x,y,eps)= sin x + eps y 
(set-logic QF_NRA)


(declare-fun eps () Real)
(assert (>= eps 0.1))
(assert (<= eps 0.2))


(assert 
 (not
    (<  (integral 0 1
                  (lambda (y Real)
                  (integral 0 y
                            (lambda (x Real)
                            (+ (sin x) 
                               (* eps y) 
                            )))))
        (+ (integral 0 1
                  (lambda (y Real)
                  (integral 0 (* y y)
                            (lambda (x Real)
                            (+ (sin x)
                               (* eps y) 
                            ))))) 
          (/ 1 100)
        )
    )
 )
)

(check-sat)
(exit)