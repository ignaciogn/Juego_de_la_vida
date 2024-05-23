(defun contar-unos (vecinos)
  (apply '+ vecinos))

(defun aplicar-reglas (actual vecinos)
  (let ((vivos (contar-unos vecinos)))
    (cond ((and (= actual 1) (< vivos 2)) 0)   	 
 	  ((and (= actual 1) (<= vivos 3)) 1)  	 
 	  ((and (= actual 1) (> vivos 3)) 0)  	 
 	  ((and (= actual 0) (= vivos 3)) 1)  	 
 	  (t actual))))                   	


(defun obtener-vecinos (i j matriz)
  (let ((filas (length matriz))
    	(columnas (length (first matriz))))
    (mapcar (lambda (delta-x delta-y)
              (let* ((fila-vecino (+ i delta-x))
                     (columna-vecino (+ j delta-y)))
            	(nth columna-vecino (nth fila-vecino matriz))))
            '(-1 -1 -1 0 0 1 1 1)
            '(-1 0 1 -1 1 -1 0 1))))

(defun transformar-matriz (matriz)
  (let ((matriz-transformada (mapcar (lambda (fila)
                              	       (append (cons (car (last fila)) fila) (list (car fila))))
                            	     matriz)))
    (append (list (car (last matriz-transformada)))
   	    matriz-transformada
   	    (list (car matriz-transformada)))))

(defun generar-indices (n)
  (if (zerop n)
      nil
    (cons (- n 1) (generar-indices (1- n)))))

(defun siguiente-gen (estado)
  (let* ((alto (length estado))
	 (ancho (length (car estado)))
	 (matriz-transformada (transformar-matriz estado)))
    (mapcar (lambda (i)
     	      (mapcar (lambda (j)
               		(let ((vecinos (obtener-vecinos (1+ i) (1+ j) matriz-transformada))
                     	      (actual (nth j (nth i estado))))
                 	  (aplicar-reglas actual vecinos)))
             	      (reverse (generar-indices ancho))))
   	    (reverse (generar-indices alto)))))

(defun juego (estado-inicial num-generaciones)
  (if (zerop num-generaciones)
      'FIN
    (progn
      (print (subst '_ '0 (subst '@ '1 estado-inicial)))
      (sleep 0.25)
      (juego (siguiente-gen estado-inicial) (1- num-generaciones)))))










