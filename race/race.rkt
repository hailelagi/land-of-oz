;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname race) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(require 2htdp/image)
(require 2htdp/universe)

; RACING GAME

; physical contants
(define WIDTH-OF-WORLD 200)
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

; cool
; graphical constants (view/game) objects
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define SPACE
  (rectangle WHEEL-RADIUS "white")
  )

(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

; TODO - count the number of clock ticks that have passed as world state

; map WorldState (model) to the Canvas(view)
; render

; Event handlers and how they modify world state

