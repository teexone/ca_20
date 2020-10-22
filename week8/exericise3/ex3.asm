.data 
	pi: .float 3.1415
	e: .float 2.71828
	fzero: .float 0
.text
	l.s $f0, fzero
	l.s $f1, pi
	l.s $f2, e

	mul.s $f2, $f2, $f2
	div.s $f2, $f2, $f1
	add.s $f12, $f2, $f0
	
	li $v0, 2
	syscall