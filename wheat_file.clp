;Global variable to store the tempate for a wheat plant
(deftemplate wheat-plant
	(slot leaves (type NUMBER))
	(slot stems (type NUMBER))
	(slot head (type NUMBER))
	(slot roots (type NUMBER))
	
	)

;The First menu displayed to the user.
(defrule menu1
	=>
	(printout t "Enter 1 for Yes or 2 for No to tell which part of your plant is affected." crlf)
	(printout t "	Are Leaves Affected? 1 or 2" crlf)
	(printout t "choice : ")
	(bind ?leaves (read))
	(assert (leaves ?leaves))
	(printout t " " crlf)
		
	(printout t "   Are Stems  Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?stems (read))
    (assert (stems ?stems))
    (printout t " " crlf)

    (printout t "   Are Head affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?head (read))
    (assert (head ?head))
    (printout t " " crlf)

	

	(printout t "   Are Roots Affected? 1 or 2" crlf)
    (printout t "choice : ")
    (bind ?roots (read))
    (assert (roots ?roots))
    (printout t " " crlf)
	)
	 
(defrule leaves_diseases
	(leaves 1)
	=>
	(printout t "Small, orange to brown pustules on the upper side of leaves..") ;Leaf Rust
	(printout t "Enter 11 if you observed this characteristics and 0" crlf)
	(printout t "choice : ")
	(bind ?leaves (read))
	(assert (leaves ?leaves))

    (printout t "White, powdery spots on leaves and stems.") ;Powdery Mildew
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    (printout t "Small, tan to brown spots with dark borders on leaves.") ;Tan Spot
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))
	
)
	

(defrule stem_diseases
    (stem 1)
    =>
	(printout t "blister-like lesions on leaves, leaf sheaths, and stems") ;Stem rust 
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems (read))
    (assert (stems ?stems))

	(printout t "black discoloration of the lower stem and roots.") ;Take-all             
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems (read))
    (assert (stems ?stems))

    (printout t "Black spots on stem.") ;Stem blotch                      
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?stems (read))
    (assert (stems  ?stems-branches))

)	

(defrule roots_diseases
	(roots 1)
    =>

    (printout t "General yellowing of plants withRoot discoloration and rot. ") ;Take-All Root Rot
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))


    (printout t "  premature death of wheat, resulting in patches of white heads scattered throughouta field . ") ;Common root rot
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))

    (printout t " patches of wheat to die prematurely, resulting in areas of white heads within a field. ") ;Fusarium root, crown, and foot rots
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?roots(read))
    (assert (roots ?roots))

)




(defrule head_diseases
    (head 1)
    =>
    (printout t "Foul smell from infected spikes and dark spore masses in place of wheat kernels") ;Common Bunt
    (printout t "Enter 11 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?head(read))
    (assert (head ?head))

    (printout t "Bleached or white heads of wheat and shriveled and lightweight grains ") ;Fusarium Head Blight              
    (printout t "Enter 22 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?head(read))
    (assert (head ?head))

    (printout t "yellow, blister-like lesions that are arranged in stripes. ") ;Stripe rust              
    (printout t "Enter 33 if you observed this characteristics and 0" crlf)
    (printout t "choice : ")
    (bind ?head(read))
    (assert (head ?head))

)
;end of project