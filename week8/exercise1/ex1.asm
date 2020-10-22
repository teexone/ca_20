.data
	a: .float 32.0
	p: .float 5.0
	q: .float 9.0
	zero: .float 0.0
.text
	addi $v0, $v0, 6
	syscall
	
	mov.s $f3, $f0
	
	l.s $f2 a		# load constant
	l.s $f0 zero		# load zero
	
	add.s $f12 $f3 $f0
	sub.s $f1, $f3, $f2
	
	l.s $f2 p		# load constant
	mul.s $f1, $f1, $f2
	
	l.s $f2 q		# load constant
	div.s $f1, $f1, $f2	
		
	add.s $f12, $f1, $f0
	addi $v0, $zero, 2
	syscall
	
	
	  

