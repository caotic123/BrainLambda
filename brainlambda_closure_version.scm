
  (define n 
          (lambda(y) (lambda(_) (lambda() ((_ y) (lambda(y) (lambda(z) z)) ) ) )
      ))

(define min (lambda(y) (lambda(x) y)))
(define end? (lambda(y) (lambda(x) x))) 
(define add (lambda(x) (lambda(y) (lambda(__) ((y x) (lambda(y) (lambda(z) y)) )))))


(define zero? (lambda(x) (lambda(y) (lambda(z) ((((x end?)) y) z) ))))

(define lis_empyth (lambda(x) (lambda(x) (lambda(z) z) )))
(define lis_non_empyth (lambda(x) (lambda(z) x) ))

(define empyth_lis__ (lambda(x) (lambda(y) (lambda(_) (((_ x) y) lis_empyth)  ))))
(define empyth_lis_ ((empyth_lis__ empyth_lis__) ((empyth_lis__ empyth_lis__) empyth_lis__)))

(define lis_ (lambda(x) (lambda(y) (lambda(_) (((_ x) y) lis_non_empyth)  ))))

(define lis_car (lambda(x) (lambda(y) (lambda(z) y))))
(define lis_cdr (lambda(x) (lambda(y) (lambda(z) x))) )
(define lis_empyth? (lambda(x) (lambda(y) (lambda(z) z))))
(define empyth_? (lambda(x) (x lis_empyth?)))
(define car_ (lambda(x) (x lis_car)))
(define cdr_ (lambda(x) (x lis_cdr)))
(define caar_ (lambda(x) (car_ (cdr_ x) ) ) )
(define caaar_ (lambda(x) (car_ (cdr_ (cdr_ x)) ) ) )
(define caaaar_ (lambda(x) (car_ (cdr_ (cdr_ (cdr_ x))) ) ) )


;(((((lis_ empyth_lis_) 12) lis_empyth?) (lambda() (print "a") ))) prints a because the list is not empyth


(define number_ (lambda(y_) (lambda(f_) (lambda(a_) ((lambda(f_x) ((((f_x f_x) y_) f_) a_) )
            (lambda(x) (lambda(y) (lambda(f) (lambda (a)
                ((((zero? y) (lambda()
                            ((((x x) ((y min))) f) (f a))
                            )) (lambda() a)))
                          
            )))))))))

        
(define sum (lambda(x) (lambda(y) (((number_ x) add) y))))
(define min_ (lambda(x) ((x min))))
(define mul (lambda(x) (lambda(y) (((number_ (min_ x) ) (sum y) ) y))))
(define print_ (lambda(x) (write x) x)) 
(define print_number (lambda(x) (((number_ x) print_) '*)  ) )

(define decr_ (lambda(x) (lambda(y)  (((number_ x) min_) y) )))

(define zero (n n) )
(define one (add zero))
(define two (add one))
(define three (add two))
(define four (add three))
(define five (add four))
(define six (add five))
(define ten ((sum six) four))
(define hundred ((mul ten) ten))
(define thousand ((mul hundred) ten))


;BRAINFUCK MEMORY
(define cell_memory_brainf***  ((lis_ ((lis_ empyth_lis_) zero)) thousand) )
(define cell_memoryini ((lis_ empyth_lis_) cell_memory_brainf***) )
(define memory_brainf***
  (lambda(x) 
             ((lis_ x) ((lis_ ((lis_ empyth_lis_) zero) ) (min_ (car_ (car_ x) )) )  )
    ) 
  )

(define brainfuck_memory (((number_ thousand) memory_brainf***) cell_memoryini  ) )

; (print_number  (caar_ (car_ (caar_ ((lis_ ((lis_ empyth_lis_) y)) z) )) ) )

(define caar_car_caar_ (lambda(x) (caar_ (car_ (caar_  x))))) ;you must be thinking [what fucking is it] and i really don't know (alright, catch cell list of (old list memory, list new_memory) and return the value of old_list_memory)

(define cdr_caar_ (lambda(x) (cdr_ (caar_  x)) ))
(define cdr_car_ (lambda(x) (cdr_ (car_  x)) ))

(define car_car_ (lambda(x) (car_ (car_ x)) ))
(define car_caar_ (lambda(x) (caar_ (car_ x)) )) ; get value of cell of memory brainf***

;function to get values or id of brainfuck_memory
(define first_ID (lambda(x) (car_ (car_ x)) )) ; pos of memory (+zero)
(define second_ID (lambda(x) (car_ (caar_ x)) ))
(define third_ID (lambda(x) (car_ (caaar_ x)) ))
(define fourth_ID (lambda(x) (car_ (caaaar_ x)) ))
(define first_VALUE (lambda(x) (caar_ (car_ x)) )) ; VALUES
(define second_VALUE (lambda(x) (caar_ (caar_ x)) ))
(define third_VALUE (lambda(x) (caar_ (caaar_ x)) ))
(define fourth_VALUE (lambda(x) (caar_ (caaaar_ x)) ))

(define caar_caar_ (lambda(x) (caar_ (caar_ x)) )) ; get value of cell of memory brainf***

(define car_caar_and_list (lambda(x) (lambda(y) ((lis_ x) (car_ y) ) ) ))

(define curry_list_r  (lambda(x) ((lis_ ((lis_ empyth_lis_) (cdr_caar_ x))) ((car_caar_and_list (car_ x)) (caar_ x) ))))
(define curry_lis_n (lambda(x)
                      (lambda(y)
                        (lambda(z)
                          (((number_ x) curry_list_r) ((lis_ ((lis_ empyth_lis_) y)) z))
                          ))))

(define lis_explode (lambda(x) (lambda(y) (lambda(z)
                    ((lambda(x) ((lis_ ((lis_ empyth_lis_) (caar_ x))) (car_ x)) )
                     (((curry_lis_n x) y) z) )
                                            ))))
                                          
(define lis_to_index (lambda(x) (lambda(y) (car_ (car_ (((lis_explode x) y) empyth_lis_))))))

(define sum_cell (lambda(x) ((lis_ ((lis_ empyth_lis_) (add (car_caar_ x)))) (car_car_ x))  ))

(define min_cell (lambda(x) ((lis_ ((lis_ empyth_lis_) (min_ (car_caar_ x)))) (car_car_ x))  ))

; (print_number (car_ (car_ (((number_ (min_ thousand) ) cdr_) brainfuck_memory) )))  prints 1

(define lis_add_cell (lambda (x)  
                       ((lambda(x) ((lis_ ((lis_ empyth_lis_) (caar_ x))) (lis_invert (car_ x))))
                         ((lis_ ((lis_ empyth_lis_) (caar_ x))) ((lis_ (cdr_car_ x)) (sum_cell (car_ x)))))
                     )
                   )
                 
(define lis_min_cell (lambda (x)  
                       ((lambda(x) ((lis_ ((lis_ empyth_lis_) (caar_ x))) (lis_invert (car_ x))))
                         ((lis_ ((lis_ empyth_lis_) (caar_ x))) ((lis_ (cdr_car_ x)) (min_cell (car_ x)))))
                     )
                   )

(define print_sum (lambda(x) (write '*) (add x))) ;oops i stepped in side effect

 (define lis_invert ((lambda(x) (lambda(y) (((x x) y) empyth_lis_) ))
              (lambda(x)
                (lambda(y)
                  (lambda(z)
                ((((empyth_? y) (lambda() (((x x) (cdr_ y)) ((lis_ z) (car_ y))  )))) z)
              ) ) ) ))
  
 (define lis_unit ((lambda(x) (lambda(y) (lambda (z) (((x x) (lis_invert y) ) z) )))
              (lambda(x)
                (lambda(y)
                  (lambda(z)
                ((((empyth_? y) (lambda() (((x x) (cdr_ y)) ((lis_ z) (car_ y))  )))) z)
              ) ) ) ))
  
 (define lis_length ((lambda(x) (lambda(z) (((x x) zero ) z)))
              (lambda(x)
                (lambda(y)
                  (lambda(z)
                ((((empyth_? z) (lambda() (((x x) (add y)) (cdr_ z))))) y)
              ) ) ) ))
          
 (define print_cdr_ (lambda(x) (display "[") (print_number (first_VALUE x)) (display "] ") (cdr_ x)))
 (define print_lis ((lambda(x) (lambda(y) ((x x) y)  ))
              (lambda(x)
                (lambda(y)
                ((((empyth_? y) (lambda() ((x x) (print_cdr_ y))))
              ))))))

(define struct_new_memory (lambda(x) ((lis_unit (car_ x)) (caar_ x))))
(define sum_memory_in_pos (lambda(x) (lambda (y) (struct_new_memory (lis_add_cell (((lis_explode x) y) empyth_lis_))))))

(define min_memory_in_pos (lambda(x) (lambda (y) (struct_new_memory (lis_min_cell (((lis_explode x) y) empyth_lis_))))))                                

(define tuple_brain (lambda(___) (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(h) (((((h ___) x)y)z) _) )))))) )

(define pos_instruc (lambda(x) (x (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(___) x))))))))

(define memory  (lambda(x) (x (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(___) y))))))))

(define list_instruc (lambda(x) (x (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(___) z))))))))

(define pos_memory (lambda(x) (x (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(___) _))))))))

(define list_pos (lambda(x) (x (lambda(x) (lambda(y) (lambda(z) (lambda(_) (lambda(___) ___))))))))

(define BRAIN_ADD (lambda(x) ((sum_memory_in_pos (pos_memory x)) (memory x)) ))
(define BRAIN_MIN (lambda(x) ((min_memory_in_pos (pos_memory x)) (memory x)) ))
(define BRAIN_CON (lambda(x) (lambda(y) ((lis_ x) y) )))
(define BRAIN_RCON (lambda(x)
                    ((((zero? (caar_ ((lis_to_index (pos_memory x)) (memory x))) )
                            (lambda() (cdr_ (list_pos x))  ))
                                    (lambda() (cdr_ (list_pos x)) ))
                                        )) )  

; (first_VALUE ((lis_to_index (pos_memory x)) (memory x)))
(define BRAIN_RETURN_LABEL (lambda(x)
                   ((((zero? (caar_ ((lis_to_index (pos_memory x)) (memory x))) )
                   (lambda()  (car_ (list_pos x)) ))
                   (lambda() (min_ (pos_instruc x)))))
                   ))

(define (+) (lambda(x)
              (((((tuple_brain (min_ (pos_instruc x))) (BRAIN_ADD x)) (list_instruc x)) (pos_memory x)) (list_pos x))
              ))

(define (-) (lambda(x)
              (((((tuple_brain (min_ (pos_instruc x))) (BRAIN_MIN x)) (list_instruc x)) (pos_memory x)) (list_pos x))
              ))
  
(define (>) (lambda(x)
              (((((tuple_brain (min_ (pos_instruc x))) (memory x)) (list_instruc x)) (add  (pos_memory x))) (list_pos x))
              ))

(define (<) (lambda(x)
              (((((tuple_brain (min_ (pos_instruc x))) (memory x)) (list_instruc x)) (min_ (pos_memory x))) (list_pos x))
              ))

(define (/) (lambda(x)
              (((((tuple_brain (min_ (pos_instruc x))) (memory x)) (list_instruc x)) (pos_memory x)) ((BRAIN_CON (list_pos x)) (pos_instruc x)) )
              ))

(define (\) (lambda(x); (print "number") (print_number (BRAIN_RETURN_LABEL x) )
              (((((tuple_brain (BRAIN_RETURN_LABEL x)  )  (memory x)) (list_instruc x)) (pos_memory x)) (BRAIN_RCON x) )
             
              ))
 
(define (#) (lambda(x)
             (print_number (caar_ ((lis_to_index (pos_memory x)) (memory x))) )
              (newline)
              (((((tuple_brain (min_ (pos_instruc x))) (memory x)) (list_instruc x)) (pos_memory x)) (list_pos x))
              ))
           
(define instructions_lis ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ empyth_lis_) (+))) (+))) (+))) (+))) (+))) (/))) (#))) (>))) (+))) (+))) (+))) (/))) (#))) (-))) (\))) (<))) (-))) (\)))

;((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ ((lis_ empyth_lis_) (+))) (+))) (+))) (+))) (+))) (-|))) (-))) (#))) (>))) (+))) (+))) (+))) (-|))) (-))) (#))) (|-))) (<))) (|-))
(define BRAIN_RUN ((lambda(x) (lambda(___) (lambda(y) (lambda(z) (lambda(_)
                 ((x x) (((((tuple_brain z) ___) y) one ) _))
                  )))))
                (lambda(x) (lambda(y)
                  
              
                  ((((zero? (pos_instruc y) )
                   (lambda() ((x x) (((lis_to_index (pos_instruc y)) (list_instruc y)) y))))
                   (lambda() (memory y) )))
                  ))))

;(print_number (second_ID ((lis_to_index two) brainfuck_memory)) )

(print_lis ((((BRAIN_RUN brainfuck_memory) instructions_lis) (lis_length instructions_lis)) empyth_lis_ ) )

;(print_number (lis_length instructions_lis) )
;(((empyth_? brainfuck_memory ) (lambda() (print "a") )))

;(print_number (car_caar_ brainfuck_memory))

;(print_number (car_car_ brainfuck_memory))
;(print_number (car_car_ ((lis_unit brainfuck_memory ) empyth_lis_ )))

;(print_number (car_car_ (struct_new_memory (lis_add_cell (((curry_lis_n two) brainfuck_memory) empyth_lis_)))))


;(print_number (car_ (caaaar_ brainfuck_memory)) )
;(newline) (newline)

;(print_number (caar_ (car_ (((number_ (min_ thousand) ) cdr_) brainfuck_memory) )))
