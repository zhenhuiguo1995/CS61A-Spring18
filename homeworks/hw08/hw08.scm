(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)

(define (sign x)
  'YOUR-CODE-HERE
  (cond
  ((> 0 x) -1)
  ((= 0 x) 0)
  ((< 0 x) 1)
  )
)

(define (square x) (* x x))

(define (pow b n)
  'YOUR-CODE-HERE
  (cond
  ((= n 1) b)
  ((even? n)  (square  (pow b (/ n 2))))
  ((odd? n)   (* (square (pow b (/ (- n 1) 2))) b))
  )
)

(define (ordered? s)
  'YOUR-CODE-HERE 
  (cond
  ((null? (cdr s)) True)
  ((> (car s) (cadr s)) False)
  (else (ordered? (cdr s)))
  )
)

(define (nodots s)
  (cond ((null? s) nil)
        ((number? s) (cons s nil))
        ((number? (car s)) (cons (car s) (nodots (cdr s))))
        (else (cons (nodots (car s)) (nodots (cdr s))))
  )
)

; Sets as sorted lists

(define (empty? s) (null? s))

(define (contains? s v)
    (cond ((empty? s) false)
          ((> (car s) v) false)
          ((equal? (car s) v) true)
          (else (contains? (cdr s) v))
    )
)

; Equivalent Python code, for your reference:
;
; def empty(s):
;     return s is Link.empty
;
; def contains(s, v):
;     if empty(s):
;         return False
;     elif s.first > v:
;         return False
;     elif s.first == v:
;         return True
;     else:
;         return contains(s.rest, v)


(define (add s v)
    (cond ((empty? s) (list v))
          ((equal? (car s) v) s)
          ((> (car s) v) (cons v s))
          (else (cons (car s) (add (cdr s) v)))
    )
)

(define (intersect s t)
    (cond ((or (empty? s) (empty? t)) nil)
          ((equal? (car s) (car t)) (cons (car s) (intersect (cdr s) (cdr t))))
          ((< (car s) (car t)) (intersect (cdr s) t))
          (else (intersect s (cdr t)))
    )
)

; Equivalent Python code, for your reference:
;
; def intersect(set1, set2):
;     if empty(set1) or empty(set2):
;         return Link.empty
;     else:
;         e1, e2 = set1.first, set2.first
;         if e1 == e2:
;             return Link(e1, intersect(set1.rest, set2.rest))
;         elif e1 < e2:
;             return intersect(set1.rest, set2)
;         elif e2 < e1:
;             return intersect(set1, set2.rest)

(define (union s t)
    (cond ((empty? s) t)
          ((empty? t) s)
          ((contains? s (car t)) (union s (cdr t)))
          (else (union (add s (car t)) (cdr t)))
    )
)