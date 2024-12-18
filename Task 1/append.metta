; This code appends a value to a list

(=(append () $val) ($val))
(=(append $list $val) (
        let* (                                      
            ($head (car-atom $list)) 
            ($tail (cdr-atom $list)) 
            ($dummy (append $tail $val)) 
        ) (cons-atom $head $dummy)
    )
)

!(append (1 2 3) 6)