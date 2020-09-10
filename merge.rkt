;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname merge) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;merge step homework #4


 


(define merge
  (lambda (loi1 loi2)
    (cond
      ((null? loi1) (if (null? loi2) ;if first list is empty, check second list
                              '() ;resolve
                              (cons (car loi2) (merge loi1 (cdr loi2))))) ;add first element of 2nd list to final list
      ((null? loi2) (cons (car loi1) (merge (cdr loi1) loi2))) ;already know first list is empty, if 2nd list is empty cons using fisrt list
      ((< (car loi1) (car loi2)) (cons (car loi1) (merge (cdr loi1) loi2))) ;loi1 < loi2, cons using list 1
      (else (cons (car loi2) (merge loi1 (cdr loi2))))))) ;loi1 must be greater than loi2, cons using loi2
      
                             
(merge '(1 4) '( 1 2 8))
(merge '(35 62 81 90 91) '(3 83 85 90))

     