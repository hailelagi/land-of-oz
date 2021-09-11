;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname bouce) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; canvas dimensions
(define HEIGHT 60)
(define WIDTH 100)
(define POSITION 50)

(define ball (circle 10 "solid" "blue"))

; ball velocity per clock tick
(define V 1)

(define scene (empty-scene WIDTH HEIGHT))

; boundary distance of ball from center
(define BOUNDARY (- HEIGHT (/ (image-height ball) 2)))

; ball movement
(define (distance t)
  (* V t)
  )

(define (bounce t)
  ; TODO: make awesome bouncy ball animation
  BOUNDARY
  )

(define (ball-frame t)
  (cond
    [(< (distance t) BOUNDARY)
     (place-image ball POSITION (distance t) scene)]
    
    [(>= (distance t) BOUNDARY)
     ; stop movement
     (place-image ball POSITION (bounce t) scene)]
     ;[> ]
    )
  )

(animate ball-frame)

; TODO ?
; - draw obstacles
; - main game loop
; - scoring system
; - map key input to ball
; - create cute scenery