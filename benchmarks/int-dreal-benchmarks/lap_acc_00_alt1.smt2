; Laplace mechanism accuracy. Second formulation, with product of integrals.
; k == 2.
(set-logic QF_NRA)

(declare-fun eps () Real)
(assert (>= eps 0.1))
(assert (<= eps 1))

(declare-fun delta () Real)
(assert (> delta 0.1))
(assert (<= delta 1))

(assert 
 (not
    (>  (* (/ (* eps eps) 4)
            (integral (- (* (/ 1 eps) (log (/ 2 delta))))
                      (+ (* (/ 1 eps) (log (/ 2 delta))))
                (lambda (x Real)
                        (exp (- (* eps (abs x))))))
            (integral (- (* (/ 1 eps) (log (/ 2 delta))))
                      (+ (* (/ 1 eps) (log (/ 2 delta))))
                (lambda (x Real)
                        (exp (- (* eps (abs x)))))))
        (- 1 delta))))

(check-sat)
(exit)
