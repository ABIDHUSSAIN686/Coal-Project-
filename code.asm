;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;+++++                           Designed By                               +++++++++
;+++++            Abid Hussain, Aqel Afzal, Zain-ul-Abideen                +++++++++
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.model small
.stack
.data

  msg db'  ___     ',10,13,
        '                     | 0 | 0 |',10,13,
		'                     |__v__|',10,13,
        '                      _| |_ ',10,13,
		'	             |\  *  /|',10,13,
		'		     | \_*_/ |',10,13,
		'                     |   *   |',10,13,
		'                     |_*_|',10,13,
		'                     |  _  |',10,13,
	    '		     | /   \ |',10,13,
        '                    ||     ||',10,13,
		'                   |_|     |_|              ',10,13,'$'	
		

;msg3 db 'Welcome to Super Mario ',10,10,13,
;          '                                        =>Press any key to continue ','$'
msg1 db 10,13,'                MARIO KILLED    ','$'
msg2 db 10,13,'                LEVEL PASSED    ','$'
msg5 db 10,13,'                GAME OVER             ','$'
flagx db 60                                          ;//////These variable are declared for the flag drawing
flagy db 0
flagx1 db 80
flagy1 db 5

Hurdlex2 db 23                                       ;//////These variable are declared for the hurdle drawing
Hurdley2 db 20
Hurdlex3 db 25
Hurdley3 db 25


HurdleBoxesx4 db 20                                  ;//////These variable are declared for the hurdle boxes drawing
HurdleBoxesy4 db 18
HurdleBoxesx5 db 28
HurdleBoxesy5 db 19

Enemyx4 db 26                                 ;//////These variable are declared for the enemy drawing
Enemyy4 db 24
Enemyx5 db 28
Enemyy5 db 24

Enemy1x4 db 46                            
Enemy1y4 db 24
Enemy1x5 db 48
Enemy1y5 db 24

Monsterx1 db 2                               ;       These are for the monster drawing
Monstery1 db 7
Monsterx2 db 10
Monstery2 db 7

Monster1x1 db 2                               
Monster1y1 db 6
Monster1x2 db 3
Monster1y2 db 8

Monster2x1 db 9                            
Monster2y1 db 6
Monster2x2 db 10
Monster2y2 db 8

 
Box1x1 db  8                                 ;       These are for the Boxes drawing
Box1y1 db  10
Box1x2 db  10
Box1y2 db  10

Box2x1 db  30
Box2y1 db  10
Box2x2 db  32
Box2y2 db  10

Box4x1 db  54
Box4y1 db  10
Box4x2 db  56
Box4y2 db  10

Box1x11 db  8
Box1y11 db  10
Box1x21 db  10
Box1y21 db  10

Box2x11 db  30
Box2y11 db  10
Box2x21 db  32
Box2y21 db  10

Box4x11 db  54
Box4y11 db  10
Box4x21 db  56
Box4y21 db  10

loadingx1 db  0
loadingy1 db  24
loadingx2 db  5
loadingy2 db  24



x db 6                                               ;//////These variable are declared for the Mario drawing
y db 21
x1 db 8
y1 db 23

x2 db 8
y2 db 23
x3 db 8
y3 db 24

x4 db 6
y4 db 23
x5 db 6
y5 db 24

x6 db 7
y6 db 20
x7 db 7
y7 db 20

x8 db 6
y8 db 19
x9 db 8
y9 db 19


y10 db ?
y11 db '5'
y12 db '5'
y13 db '5'
score byte ?
enemy db ?
enemy12 db ?
enemy1 db '1'
enemy2 db ?


Monster12 db ?

count db 0                                          ;//////These variable are declared for the wirting flag on the screen 
Row_poistion db 0
Column_poistion db 0
Row_poistion1 db 0
Column_poistion1 db 0

level1 db '1'
level2 db '0'
level3 db '0'
level4 db '0'
.code

;------------------------------------------------------------------------------------------------------------------------
;                                                                 Display Window
;------------------------------------------------------------------------------------------------------------------------
mov al,03       ;clear text
mov ah,0
int 10h 



mov ah,0
mov al,12       ; Video Mode
int 10h
MOV AH, 06h     ;Background graphic set
MOV AL, 0
MOV CX, 0
MOV DH, 80
MOV DL, 40
MOV BH, 60h
INT 10h                                         

MOV AH, 06h     ;Background graphic set
MOV AL, 0
MOV CX, 20
MOV DH, 40
MOV DL, 80
MOV BH, 70h
INT 10h

mov ah, 06h
mov al, 0	
mov cl, 5
mov ch, 5
mov dh, 7
mov dl, 5
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 5
mov ch, 5
mov dh, 5
mov dl, 10
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 5
mov ch,8
mov dh,8
mov dl, 10
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 10
mov ch, 8
mov dh, 10
mov dl, 10
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 5
mov ch, 11
mov dh, 11
mov dl, 10
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 12
mov ch, 8
mov dh, 11
mov dl, 12
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 16
mov ch, 8
mov dh, 11
mov dl, 16
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 12
mov ch, 11
mov dh, 11
mov dl, 16
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 18
mov ch, 8
mov dh, 11
mov dl, 18
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 18
mov ch, 8
mov dh, 8
mov dl, 22
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 18
mov ch, 10
mov dh, 10
mov dl, 22
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 22
mov ch, 8
mov dh, 10
mov dl, 22
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 24
mov ch, 8
mov dh, 11
mov dl, 24
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 24
mov ch, 9
mov dh, 9
mov dl, 26
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 24
mov ch, 7
mov dh,7 
mov dl, 26
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 24
mov ch, 11
mov dh, 11
mov dl, 26
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 28
mov ch, 8
mov dh, 11
mov dl, 28
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 28
mov ch, 8
mov dh,8
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 28
mov ch, 10
mov dh,10
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 31
mov ch, 8
mov dh, 9
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 30
mov ch, 10
mov dh, 12
mov dl, 30
mov bh, 8Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 5
mov ch, 14
mov dh, 18
mov dl, 5
mov bh, 8Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 12
mov ch, 14
mov dh, 19
mov dl, 12
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 5
mov ch, 14
mov dh, 14
mov dl, 6
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 7
mov ch, 14
mov dh, 16
mov dl, 7
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 11
mov ch, 14
mov dh, 14
mov dl, 12
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 10
mov ch, 14
mov dh, 16
mov dl, 10
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 8
mov ch, 16
mov dh, 16
mov dl, 9
mov bh, 8Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 14
mov ch, 16
mov dh, 19
mov dl, 14
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 18
mov ch, 16
mov dh, 19
mov dl, 18
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 15
mov ch, 16
mov dh, 16
mov dl, 18
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 15
mov ch, 18
mov dh, 18
mov dl, 18
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 20
mov ch, 16
mov dh, 19
mov dl, 20
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 20
mov ch, 16
mov dh, 16
mov dl, 23
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 20
mov ch, 18
mov dh, 18
mov dl, 23
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 23
mov ch, 16
mov dh, 17
mov dl, 23
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 22
mov ch, 19
mov dh, 20
mov dl, 22
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 25
mov ch, 16
mov dh, 19
mov dl, 25
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 27
mov ch, 16
mov dh, 19
mov dl, 27
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 31
mov ch, 16
mov dh, 19
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 27
mov ch, 16
mov dh, 16
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 27
mov ch, 19
mov dh, 19
mov dl, 31
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 33
mov ch, 15
mov dh, 15
mov dl, 38
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 33
mov ch, 19
mov dh, 19
mov dl, 38
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 33
mov ch, 23
mov dh, 23
mov dl, 38
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 15
mov dh, 19
mov dl, 38
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 33
mov ch, 19
mov dh, 23
mov dl, 33
mov bh, 4Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 2
mov dh, 2
mov dl, 60
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 1
mov dh, 1
mov dl, 54
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 3
mov dh, 3
mov dl, 48
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 48
mov ch, 3
mov dh, 3
mov dl, 52
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 3
mov dh, 3
mov dl, 54
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 3
mov dh, 3
mov dl, 56
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 40
mov ch, 4
mov dh, 4
mov dl, 42
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 4
mov dh, 4
mov dl, 44
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 4
mov dh, 4
mov dl, 46
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 46
mov ch, 4
mov dh, 4
mov dl, 52
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 4
mov dh, 4
mov dl, 54
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 4
mov dh, 4
mov dl, 60
mov bh, 4Fh
int 10h


mov ah, 06h
mov al, 0	
mov cl, 40
mov ch, 5
mov dh, 5
mov dl, 42
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 5
mov dh, 5
mov dl, 44
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 5
mov dh, 5
mov dl, 48
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 48
mov ch, 5
mov dh, 5
mov dl, 54
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 5
mov dh, 5
mov dl, 56
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 56
mov ch, 5
mov dh, 5
mov dl, 62
mov bh, 4Fh
int 10h


mov ah, 06h
mov al, 0	
mov cl, 40
mov ch, 6
mov dh, 6
mov dl, 44
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 6
mov dh, 6
mov dl, 52
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 6
mov dh, 6
mov dl, 60
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 7
mov dh, 7
mov dl, 58
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 8
mov dh, 8
mov dl, 46
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 46
mov ch, 8
mov dh, 8
mov dl, 48
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 48
mov ch, 8
mov dh, 8
mov dl, 54
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 40
mov ch, 9
mov dh, 9
mov dl, 46
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 46
mov ch, 9
mov dh, 9
mov dl, 48
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 48
mov ch, 9
mov dh, 9
mov dl, 52
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 9
mov dh, 9
mov dl, 54
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 9
mov dh, 9
mov dl, 60
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 10
mov dh, 10
mov dl, 46
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 46
mov ch, 10
mov dh, 10
mov dl, 54
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 10
mov dh, 10
mov dl, 62
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 11
mov dh, 11
mov dl, 42
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 11
mov dh, 11
mov dl, 44
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 11
mov dh, 11
mov dl, 46
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 46
mov ch, 11
mov dh, 11
mov dl, 48
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 48
mov ch, 11
mov dh, 11
mov dl, 52
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 11
mov dh, 11
mov dl, 54
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 11
mov dh, 11
mov dl, 56
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 56
mov ch, 11
mov dh, 11
mov dl, 58
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 58
mov ch, 11
mov dh, 11
mov dl, 62
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 56
mov ch, 12
mov dh, 12
mov dl, 62
mov bh, 4Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 12
mov dh, 12
mov dl, 43
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 44
mov ch, 12
mov dh, 12
mov dl, 60
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 56
mov ch, 12
mov dh, 12
mov dl, 62
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 13
mov dh, 13
mov dl, 42
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 13
mov dh, 13
mov dl, 62
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 58
mov ch, 13
mov dh, 13
mov dl, 62
mov bh, 4Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 42
mov ch, 14
mov dh, 14
mov dl, 48
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 52
mov ch, 14
mov dh, 14
mov dl, 58
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 40
mov ch, 15
mov dh, 15
mov dl, 46
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 38
mov ch, 16
mov dh, 16
mov dl, 46
mov bh, 9Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 15
mov dh, 15
mov dl, 60
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, 54
mov ch, 16
mov dh, 16
mov dl, 62
mov bh, 9Fh
int 10h










;Above code is for graphics
mov ah,01
int 21h
cmp ah,'1'
je main


main:
;------------------------------------------------------------------------------------------------------------------------
;                                                                 Clear Text
;------------------------------------------------------------------------------------------------------------------------
mov al,03
mov ah,0
int 10h
jmp Label1

;------------------------------------------------------------------------------------------------------------------------
;                                                               Draw_border Proc
;------------------------------------------------------------------------------------------------------------------------

Draw_border proc

bottom:
	inc count
	MOV AH,2                               
	MOV DH,Row_poistion      
	MOV DL,Column_poistion  
	INT 10H                 

	mov ah,09h
	mov al,'^'
	mov bh,0
	mov bl,04
	mov cx,0
	int 10h
	add Column_poistion,1
	
	cmp	count,18

	mov Row_poistion, 2
    mov Column_poistion,22
    mov count,0
	MOV AH,2                ;set the cursor                
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                
	mov ah,09h
	mov al,'L'
	mov bh,0
	mov bl,01
	mov cx,1
	int 10h
	MOV AH,2                                
	MOV DH,Row_poistion    
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'E'
	mov bh,0
	mov bl,03
	mov cx,1
	int 10h
	MOV AH,2                                
	MOV DH,Row_poistion    
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
    mov ah,09h
	mov al,'V'
	mov bh,0
	mov bl,04
	mov cx,1
	int 10h
	MOV AH,2                                
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'E'
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'L'
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,' '
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	cmp level1, '1'
	je string1
	cmp level2, '1'
	je string2
	cmp level3, '1'
	je string3
	jmp string4
	string1:
	mov al,'1'
	jmp string4
	string2:
	mov al,'2'
	jmp string4
	string3:
	mov al,'3'
	string4:
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	

	mov Row_poistion, 2
    mov Column_poistion,37
    mov count,0
	MOV AH,2                ;set the cursor                
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                
	mov ah,09h
	mov al,'S'
	mov bh,0
	mov bl,01
	mov cx,1
	int 10h
	MOV AH,2                                
	MOV DH,Row_poistion    
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'C'
	mov bh,0
	mov bl,03
	mov cx,1
	int 10h
	MOV AH,2                                
	MOV DH,Row_poistion    
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
    mov ah,09h
	mov al,'O'
	mov bh,0
	mov bl,04
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'R'
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H                 
	mov ah,09h
	mov al,'E'
	mov bh,0
	mov bl,06
	mov cx,1
	int 10h	
	mov Row_poistion, 3
    mov Column_poistion,62
    mov count,0
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h	
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov Row_poistion, 4
    mov Column_poistion,62
    mov count,0
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
	MOV AH,2                                 
	MOV DH,Row_poistion   
	inc Column_poistion
	MOV DL,Column_poistion  
	INT 10H  
	mov ah,09h
	mov al,10
	mov bh,0
	mov bl,12
	mov cx,1
	int 10h
    MOV AH,2                ;reset the cursor                
	MOV DH,0   
	MOV DL,0
	INT 10H  
ret
Draw_border endp

;------------------------------------------------------------------------------------------------------------------------
;                                                                 LOOSE Message PROC
;------------------------------------------------------------------------------------------------------------------------
lose Proc
mov AL, 13H
mov AH,0
int 10H  
mov si,@data     
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00101011b 
mov cx,350

mov dh,5
mov dl,80
mov es,si             
mov bp,offset msg  
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00100111b 
mov cx,30

mov dh,20
mov dl,100
mov es,si             
mov bp,offset msg1    
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2

ret
lose endp
;------------------------------------------------------------------------------------------------------------------------
;                                                                 levelpassed Message PROC
;------------------------------------------------------------------------------------------------------------------------
levelpassed Proc
mov AL, 13H
mov AH,0
int 10H 

mov si,@data     
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00101011b 
mov cx,350

mov dh,5
mov dl,80
mov es,si             
mov bp,offset msg    
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2
    
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00100010b 
mov cx,30


mov dh,20
mov dl,100
mov es,si             
mov bp,offset msg2   
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2

ret
levelpassed endp



gameover Proc
mov AL, 13H
mov AH,0
int 10H 

mov si,@data     
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00101011b 
mov cx,350

mov dh,5
mov dl,80
mov es,si             
mov bp,offset msg    
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2
    
mov ah,13h       
mov al,0        
mov bh,0         
mov bl,00100010b 
mov cx,30


mov dh,20
mov dl,100
mov es,si             
mov bp,offset msg5  
int 10h
call delay2
call delay2
call delay2
call delay2
call delay2

ret
gameover endp

;------------------------------------------------------------------------------------------------------------------------
;                                                                 Delay PROC
;------------------------------------------------------------------------------------------------------------------------

delay proc
push ax
push bx
push cx
push dx
mov cx,1000
mydelay:
mov bx,70      ;(Info :: increment if you want to increase delay) 
mydelay1:
dec bx
jnz mydelay1
loop mydelay
pop dx
pop cx
pop bx
pop ax
ret
delay endp

;------------------------------------------------------------------------------------------------------------------------
;                                                                 Delay2 PROC
;------------------------------------------------------------------------------------------------------------------------

delay2 proc
push ax
push bx
push cx
push dx
mov cx,1000
mydelay2:
mov bx,300       ;(Info :: increment if you want to increase delay) 
mydelay3:
dec bx
jnz mydelay3
loop mydelay2
pop dx
pop cx
pop bx
pop ax
ret
delay2 endp


;------------------------------------------------------------------------------------------------------------------------
;                                                           Label1(Our Code Begin from here)
;------------------------------------------------------------------------------------------------------------------------

Label1:
mov ax,@data
mov ds,ax
mov ax,0
mov ah,0
mov al,9h
int 10h
jmp start


;------------------------------------------------------------------------------------------------------------------------
;                                                                Start Label
;------------------------------------------------------------------------------------------------------------------------

start:
;------------------------------------------------------------------------------------------------------------------------
;                                                                Vedio Mode
;------------------------------------------------------------------------------------------------------------------------

mov ah,0
mov al,12
int 10h

;------------------------------------------------------------------------------------------------------------------------
;                                                                BackGround is set
;------------------------------------------------------------------------------------------------------------------------
                                         
MOV AH, 06h
MOV AL, 0
MOV CX, 0
MOV DH, 80
MOV DL, 80
MOV BH, 30h
INT 10h


;------------------------------------------------------------------------------------------------------------------------
;                                                               Flag Grphic is Drawn
;------------------------------------------------------------------------------------------------------------------------

mov ah, 06h
mov al, 0	
mov cl, flagx
mov ch, flagy
add ch,1
mov dh, flagy1
add dh,1
mov dl, flagx1	
mov bh, 4Fh
int 10h

mov ah, 06h
mov al, 0	
mov cl, flagx
add cl ,1
mov ch, flagy
add ch,2
mov dh, flagy1
mov dl, flagx1	
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0	
mov cl, flagx
add cl ,3
mov ch, flagy
add ch,3
mov dh, flagy1
sub dh,1
mov dl, flagx1	
sub dl,4
mov bh, 7Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, flagx
add cl,19
mov ch, flagy
add ch,1
mov dh, flagy1
add dh,20
mov dl, flagx1	
mov bh, 2Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, flagx
sub cl,41
mov ch, flagy
mov dh, flagy1
sub dh,1
mov dl, flagx1
sub dl ,33
mov bh, 6Fh
int 10h

mov ah, 06h
mov al, 0		
mov cl, flagx
sub cl,39
mov ch, flagy
add ch,1
mov dh, flagy1
sub dh,2
mov dl, flagx1
sub dl ,49
mov bh, 7Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, flagx
sub cl,25
mov ch, flagy
add ch,1
mov dh, flagy1
sub dh,2
mov dl, flagx1
sub dl ,35
mov bh, 7Fh
int 10h

;------------------------------------------------------------------------------------------------------------------------
;                                                             Sword Grphic is Drawn
;------------------------------------------------------------------------------------------------------------------------


mov ah, 06h
mov al, 0		
mov cl, 8
mov ch, 5
mov dh, 5
mov dl, 13
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 8
mov ch, 5
mov dh, 7
mov dl, 9
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 10
mov ch, 7
mov dh, 8
mov dl, 12
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 12
mov ch, 8
mov dh, 9
mov dl, 14
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 14
mov ch, 9
mov dh, 10
mov dl, 16
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 16
mov ch, 10
mov dh, 11
mov dl, 18
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 18
mov ch, 11
mov dh, 12
mov dl, 20
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 20
mov ch, 12
mov dh, 13
mov dl, 22
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 22
mov ch, 13
mov dh, 14
mov dl, 24
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 24
mov ch, 14
mov dh, 15
mov dl, 26
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 26
mov ch, 15
mov dh, 16
mov dl, 28
mov bh, 9Fh
int 10h
;**
mov ah, 06h
mov al, 0		
mov cl, 28
mov ch, 16
mov dh, 17
mov dl, 31
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 32
mov ch, 16
mov dh, 17
mov dl, 33
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 34
mov ch, 16
mov dh, 17
mov dl, 35
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 26
mov ch, 18
mov dh, 18
mov dl, 27
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 28
mov ch, 18
mov dh, 18
mov dl, 32
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 32
mov ch, 18
mov dh, 18
mov dl, 33
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 24
mov ch, 19
mov dh, 19
mov dl, 25
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 26
mov ch, 19
mov dh, 19
mov dl, 27
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 28
mov ch, 19
mov dh, 19
mov dl, 31
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 24
mov ch, 20
mov dh, 20
mov dl, 27
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 34
mov ch, 18
mov dh, 18
mov dl, 37
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 34
mov ch, 19
mov dh, 19
mov dl, 39
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 36
mov ch, 20
mov dh, 20
mov dl, 39
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 40
mov ch, 20
mov dh, 20
mov dl, 44
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 38
mov ch, 21
mov dh, 21
mov dl, 39
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 40
mov ch, 21
mov dh, 21
mov dl, 41
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 42
mov ch, 21
mov dh, 21
mov dl, 43
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl, 38
mov ch, 22
mov dh, 22
mov dl, 43
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,10
mov ch, 6
mov dh, 6
mov dl, 13
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,14
mov ch, 6
mov dh, 6
mov dl, 15
mov bh, 9Fh
int 10h

mov ah, 06h
mov al, 0		
mov cl,15
mov ch, 7
mov dh, 7
mov dl, 17
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,17
mov ch, 8
mov dh, 8
mov dl, 19
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,19
mov ch, 9
mov dh, 9
mov dl, 21
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,21
mov ch, 10
mov dh, 10
mov dl, 23
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,23
mov ch, 11
mov dh, 11
mov dl, 25
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,25
mov ch, 12
mov dh, 12
mov dl, 27
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,27
mov ch, 13
mov dh, 13
mov dl, 29
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,29
mov ch, 14
mov dh, 14
mov dl, 31
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,31
mov ch, 15
mov dh, 15
mov dl, 33
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,31
mov ch, 16
mov dh, 16
mov dl, 33
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,34
mov ch, 15
mov dh, 16
mov dl, 35
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,36
mov ch, 15
mov dh, 16
mov dl, 37
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,34
mov ch, 14
mov dh, 14
mov dl, 35
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,36
mov ch, 14
mov dh, 14
mov dl, 37
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,38
mov ch, 13
mov dh, 14
mov dl, 39
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,36
mov ch, 13
mov dh, 13
mov dl, 37
mov bh, 9Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,10
mov ch, 7
mov dh, 7
mov dl, 15
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,12
mov ch, 8
mov dh, 8
mov dl, 17
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,14
mov ch, 9
mov dh, 9
mov dl, 19
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,16
mov ch, 10
mov dh, 10
mov dl, 21
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,18
mov ch, 11
mov dh, 11
mov dl, 23
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,20
mov ch, 12
mov dh, 12
mov dl, 25
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,22
mov ch, 13
mov dh, 13
mov dl, 27
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,24
mov ch, 14
mov dh, 14
mov dl, 29
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,26
mov ch, 15
mov dh, 15
mov dl, 31
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0		
mov cl,28
mov ch, 16
mov dh, 16
mov dl, 31
mov bh, 6Fh
int 10h



call Draw_border


;------------------------------------------------------------------------------------------------------------------------
;                                                                 Hurdle Graphic is drawn
;------------------------------------------------------------------------------------------------------------------------
mov ah, 06h
mov al, 0
mov cl, Hurdlex2
mov ch, Hurdley2
add ch,2
mov dh, Hurdley3
mov dl, Hurdlex3
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0
mov cl, Hurdlex2
add cl,1
mov ch, Hurdley2
add ch,2
mov dh, Hurdley3
mov dl, Hurdlex3
sub dl,1
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0 
mov cl, Hurdlex2
add cl,20
mov ch, Hurdley2
mov dh, Hurdley3
mov dl, Hurdlex3
add dl,20
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0
mov cl, Hurdlex2
add cl,21
mov ch, Hurdley2
mov dh, Hurdley3
mov dl, Hurdlex3
add dl,19
mov bh, 8Fh
int 10h
mov ah, 06h
mov al, 0
mov cl, Hurdlex2
add cl,40
mov ch, Hurdley2
sub ch,3
mov dh, Hurdley3
mov dl, Hurdlex3
add dl,40
mov bh, 6Fh
int 10h
mov ah, 06h
mov al, 0
mov cl, Hurdlex2
add cl,41
mov ch, Hurdley2
sub ch,3
mov dh, Hurdley3
mov dl, Hurdlex3
add dl,39
mov bh, 8Fh
int 10h


;------------------------------------------------------------------------------------------------------------------------
;                                                                Hurdle Top Boxes are drawn
;------------------------------------------------------------------------------------------------------------------------
mov ah, 06h
mov al, 0	
mov cl, HurdleBoxesx4
add cl,2
mov ch,HurdleBoxesy4
add ch,2
mov dh, HurdleBoxesy5
add dh,2
mov dl, HurdleBoxesx5
sub dl,2
mov bh, 5Fh
int 10h	
mov ah, 06h
mov al, 0		
mov cl, HurdleBoxesx4
add cl,22
mov ch, HurdleBoxesy4
mov dh, HurdleBoxesy5
mov dl, HurdleBoxesx5
add dl,18
mov bh, 5Fh  
int 10h	
mov ah, 06h
mov al, 0	
mov cl, HurdleBoxesx4
add cl,42
mov ch, HurdleBoxesy4
sub ch,2
mov dh, HurdleBoxesy5
sub dh,2
mov dl, HurdleBoxesx5
add dl,38
mov bh, 5Fh
int 10h	

;------------------------------------------------------------------------------------------------------------------------
;                                                               Enemy1 is Drawn
;------------------------------------------------------------------------------------------------------------------------
cmp level1 ,'1'
je jump_level1
mov ah, 06h
mov al, 0	
mov cl, Enemyx4
mov ch,Enemyy4
mov dh, Enemyy5
mov dl, Enemyx5
mov bh, 9Fh
int 10h	

;------------------------------------------------------------------------------------------------------------------------
;                                                               Enemy2 is Drawn
;------------------------------------------------------------------------------------------------------------------------

mov ah, 06h
mov al, 0	
mov cl, Enemy1x4
mov ch,Enemy1y4
mov dh, Enemy1y5
mov dl, Enemy1x5
mov bh, 9Fh
int 10h	

;----------------------------------------------------------------------------------------------------------------------
;                                                              Drawing Monster
;----------------------------------------------------------------------------------------------------------------------
cmp level2,'1'
je jump_level1
	mov ah, 06h
    mov al, 0	
    mov cl, Monsterx1
    mov ch, Monstery1
    mov dh, Monstery2
    mov dl, Monsterx2
    mov bh, 7Fh
    int 10h	
	mov ah, 06h
    mov al, 0	
    mov cl, Monster1x1
    mov ch, Monster1y1
    mov dh, Monster1y2
    mov dl, Monster1x2
    mov bh, 8Fh
    int 10h	
	mov ah, 06h
    mov al, 0	
    mov cl, Monster2x1
    mov ch, Monster2y1
    mov dh, Monster2y2
    mov dl, Monster2x2
    mov bh, 8Fh
    int 10h	


    

	jump_level1:



;------------------------------------------------------------------------------------------------------------------------
;                                                                Mario Character is Drawn
;------------------------------------------------------------------------------------------------------------------------
                                         	
mov ah, 06h
mov al, 0		
mov cl, x2
mov ch, y2
mov dh, y3
mov dl, x3
mov bh, 4Fh
int 10h	
mov ah, 06h
mov al, 0	
mov cl, x4
mov ch, y4
mov dh, y5
mov dl, x5
mov bh, 4Fh
int 10h	
mov ah, 06h
mov al, 0		
mov cl, x6
mov ch, y6
mov dh, y7
mov dl, x7
mov bh, 4Fh
int 10h	
mov ah, 06h
mov al, 0	
mov cl, x8
mov ch, y8
mov dh, y9
mov dl, x9
mov bh, 7Fh
int 10h	
mov ah, 06h
mov al, 0	
mov cl, x
mov ch, y
mov dh, y1
mov dl, x1	
mov bh, 7Fh
int 10h
cmp y10,'1'          
je yes
jmp menu
;---------------------------------------------------------------------------------------------------------------------------------
;          returnmonster Proc(info:: this proc unction is used to redraw the monster whenever there is a collision)
;----------------------------------------------------------------------------------------------------------------------------------
returnmonster Proc

mov Monsterx1, 2                               ;       These are for the monster drawing
mov Monstery1, 7
mov Monsterx2, 10
mov Monstery2, 7

mov Monster1x1, 2                               
mov Monster1y1, 6
mov Monster1x2, 3
mov Monster1y2, 8

mov Monster2x1, 9                            
mov Monster2y1, 6
mov Monster2x2, 10
mov Monster2y2, 8
mov Box1x1,8
mov Box1y1,10
mov Box1x2,10
mov Box1y2,10
mov Box2x1,30
mov Box2y1,10
mov Box2x2,32
mov Box2y2,10
mov Box4x1,54
mov Box4y1,10
mov Box4x2,56
mov Box4y2,10
mov Box1x11,8
mov Box1y11,10
mov Box1x21,10
mov Box1y21,10
mov Box2x11,30
mov Box2y11,10
mov Box2x21,32
mov Box2y21,10
mov Box4x11,54
mov Box4y11,10
mov Box4x21,56
mov Box4y21,10
ret
returnmonster endp
;---------------------------------------------------------------------------------------------------------------------------------
;                                         ThrowBoxes Proc----->Condition for throwing boxes(info:: when moving right)
;----------------------------------------------------------------------------------------------------------------------------------

 ThrowBoxes Proc

cmp  Monsterx1,8                      ;---------falling of the first box
jg make
jmp wrong
make:
cmp box1y1,20
jl  make2
jmp wrong
make2:
mov ah, 06h
mov al, 0	
mov cl,box1x1 
mov ch,box1y1
mov dh,box1y2
mov dl,box1x2
mov bh, 2Fh
int 10h	
add box1y1,1
add box1y2,1

mov cl,box1y1     ;///////////condition of monsterboxes start here
cmp cl,y8
je bel3
jne wrong
bel3:
mov cl,box1x1
cmp cl,x8
jae bel4
jne bel6
bel4:
mov cl,box1x1
cmp cl,x9
jbe bel5
jne wrong
bel5:
call returnposition
call returnmonster
jmp main
bel6:
mov cl,box1x2
cmp cl,x8
jae bel7
jne wrong
bel7:
mov cl,box1x2
cmp cl,x9
jbe bel8
jne wrong
bel8:
call returnposition
call returnmonster
jmp main




wrong:
cmp  Monsterx1,30               ;---------falling of the second box
jg make3
jmp wrong1
make3:
cmp box2y1,20
jl  make4
jmp wrong1
make4:
mov ah, 06h
mov al, 0	
mov cl,box2x1 
mov ch,box2y1
mov dh,box2y2
mov dl,box2x2
mov bh, 2Fh
int 10h	
add box2y1,1
add box2y2,1
mov cl,box2y1     ;///////////condition of monsterboxes start here
cmp cl,y8
je mel3
jne wrong1
mel3:
mov cl,box2x1
cmp cl,x8
jae mel4
jne mel6
mel4:
mov cl,box2x1
cmp cl,x9
jbe mel5
jne wrong1
mel5:
call returnposition
call returnmonster
jmp main
mel6:
mov cl,box2x2
cmp cl,x8
jae mel7
jne wrong1
mel7:
mov cl,box2x2
cmp cl,x9
jbe mel8
jne wrong1
mel8:
call returnposition
call returnmonster
jmp main

wrong1:
cmp  Monsterx1,48                    ;---------falling of the third box
jg make7
jmp wrong3
make7:
cmp box4y1,20
jl  make8
jmp wrong3
make8:
mov ah, 06h
mov al, 0	
mov cl,box4x1 
mov ch,box4y1
mov dh,box4y2
mov dl,box4x2
mov bh, 2Fh
int 10h	

add box4y1,1
add box4y2,1

mov cl,box4y1     ;///////////condition of monsterboxes start here
cmp cl,y8
je sel3
jne wrong3
sel3:
mov cl,box4x1
cmp cl,x8
jae sel4
jne sel6
sel4:
mov cl,box4x1
cmp cl,x9
jbe sel5
jne wrong3
sel5:
call returnposition
call returnmonster
jmp main
sel6:
mov cl,box4x2
cmp cl,x8
jae sel7
jne wrong3
sel7:
mov cl,box4x2
cmp cl,x9
jbe sel8
jne wrong3
sel8:
call returnposition
call returnmonster
jmp main

ret
ThrowBoxes endp

;---------------------------------------------------------------------------------------------------------------------------------
;                                         ThrowBoxes1 Proc----->Condition for throwing boxes(info:: when moving left)
;----------------------------------------------------------------------------------------------------------------------------------
ThrowBoxes1 Proc
cmp  Monsterx1,54
jl maked
jmp wrong

maked:

cmp box4y11,20                       ;---------falling of the first box
jl  maked2
jmp wrong

maked2:
mov ah, 06h
mov al, 0	
mov cl,box4x11 
mov ch,box4y11
mov dh,box4y21
mov dl,box4x21
mov bh, 2Fh
int 10h	

add box4y11,1
add box4y21,1

mov cl,box4y11     ;///////////condition of monsterboxes start here
cmp cl,y8
je bel3
jne wrong
bel3:
mov cl,box4x11
cmp cl,x8
jae bel4
jne bel6
bel4:
mov cl,box4x11
cmp cl,x9
jbe bel5
jne wrong
bel5:
call returnposition
call returnmonster
jmp main
bel6:
mov cl,box4x2
cmp cl,x8
jae bel7
jne wrong
bel7:
mov cl,box4x2
cmp cl,x9
jbe bel8
jne wrong
bel8:
call returnposition
call returnmonster
jmp main


wrong:

cmp  Monsterx1,30                       ;---------falling of the second box
jl marked5
jmp wrong2

marked5:

cmp box2y11,20
jl  marked6
jmp wrong2

marked6:
mov ah, 06h
mov al, 0	
mov cl,box2x11 
mov ch,box2y11
mov dh,box2y21
mov dl,box2x21
mov bh, 2Fh
int 10h	

add box2y11,1
add box2y21,1

mov cl,box2y11     ;///////////condition of monsterboxes start here
cmp cl,y8
je mel3
jne wrong2
mel3:
mov cl,box2x11
cmp cl,x8
jae mel4
jne mel6
mel4:
mov cl,box2x11
cmp cl,x9
jbe mel5
jne wrong2
mel5:
call returnposition
call returnmonster
jmp main
mel6:
mov cl,box2x21
cmp cl,x8
jae mel7
jne wrong2
mel7:
mov cl,box2x21
cmp cl,x9
jbe mel8
jne wrong2
mel8:
call returnposition
call returnmonster
jmp main


wrong2:
ret
ThrowBoxes1 endp

;------------------------------------------------------------------------------------------------------------------------
;                                      Return Mario to its Original Axis when collide with enemy
;------------------------------------------------------------------------------------------------------------------------
returnposition  Proc

mov x, 6                                               
mov y,21
mov x1,8
mov y1,23

mov x2,8
mov y2,23
mov x3,8
mov y3,24

mov x4,6
mov y4,23
mov x5,6
mov y5,24

mov x6,7
mov y6,20
mov x7,7
mov y7,20

mov x8,6
mov y8,19
mov x9,8
mov y9,19

mov y11,'5'
mov y12,'5'
mov y13,'5'
call lose
ret
returnposition endp
;------------------------------------------------------------------------------------------------------------------------
;                                      Return Mario to its Original Axis when level is passed
;------------------------------------------------------------------------------------------------------------------------
returnposition1  Proc

mov x, 6                                               
mov y,21
mov x1,8
mov y1,23

mov x2,8
mov y2,23
mov x3,8
mov y3,24

mov x4,6
mov y4,23
mov x5,6
mov y5,24

mov x6,7
mov y6,20
mov x7,7
mov y7,20

mov x8,6
mov y8,19
mov x9,8
mov y9,19

mov y11,'5'
mov y12,'5'
mov y13,'5'
call levelpassed
ret
returnposition1 endp
;------------------------------------------------------------------------------------------------------------------------
;                                      Menu (Label for the arrows key input by the user + enemy movement )
;------------------------------------------------------------------------------------------------------------------------


menu:  

;------------------------------------------------------------------------------------------------------------------------
;                                     Condition for the movement of Monster(Info:: It's like bool variable)
;------------------------------------------------------------------------------------------------------------------------
cmp level1,'1'
je level1_jump
cmp level2,'1'
je wrong3
cmp  Monster12,'1'  
je Monster1move1
jne Monster1move


Monster1move:           

cmp Monsterx1,2
jae Monster1condition1
jb wrong3

Monster1condition1:

cmp Monsterx1,64                   ; Monster movement
jbe Monster1condition2
ja Monster1condition3
Monster1condition2:

add Monsterx1,2
add Monsterx2,2
add Monster1x1,2
add Monster1x2,2
add Monster2x1,2
add Monster2x2,2
call delay2
call ThrowBoxes
jmp wrong3

Monster1condition3:
mov Monster12,'1'
mov Box1x1,8
mov Box1y1,10
mov Box1x2,10
mov Box1y2,10
mov Box2x1,30
mov Box2y1,10
mov Box2x2,32
mov Box2y2,10
mov Box4x1,54
mov Box4y1,10
mov Box4x2,56
mov Box4y2,10


jmp wrong3
 


Monster1move1:             

cmp Monsterx1,64
je Monster1condition4

 Monster1condition4:
cmp Monsterx1,2
ja Monster1condition5
jbe Monster1condition6

 Monster1condition5:

sub Monsterx1,2
sub Monsterx2,2
sub Monster1x1,2
sub Monster1x2,2
sub Monster2x1,2
sub Monster2x2,2

call delay2
call ThrowBoxes1
jmp wrong3

Monster1condition6:
mov Monster12,'0'
mov Box1x11,8
mov Box1y11,10
mov Box1x21,10
mov Box1y21,10
mov Box2x11,30
mov Box2y11,10
mov Box2x21,32
mov Box2y21,10
mov Box4x11,54
mov Box4y11,10
mov Box4x21,56
mov Box4y21,10
jmp wrong3

wrong3:

;------------------------------------------------------------------------------------------------------------------------
;                         Condition for the movement of enemy1(Info:: It's like bool variable)
;------------------------------------------------------------------------------------------------------------------------

cmp  enemy12,'1'  
je Enemy1move1
jne Enemy1move


Enemy1move:           ;///////Enemymove

cmp Enemy1x4,46
jae enemy1condition1
jb movementjmp
enemy1condition1:
cmp Enemy1x4,58
jbe enemy1condition2
ja enemy1condition3
enemy1condition2:
inc Enemy1x4
inc Enemy1x5
call delay2
mov cl,Enemy1x5
cmp cl,x4
je L1a
jmp movementjmp

L1a:
mov cl,Enemy1y4
cmp cl,y3
je L1aa
jmp movementjmp
L1aa:
call returnposition
jmp main
enemy1condition3:
mov enemy12,'1'
jmp movementjmp
 

Enemy1move1:             ;////////////////Enemymove1

cmp Enemy1x4,58
je enemy1condition4

enemy1condition4:
cmp Enemy1x4,46
ja enemy1condition5
jbe enemy1condition6
enemy1condition5:
dec Enemy1x4
dec Enemy1x5
call delay2
mov cl,Enemy1x4
cmp cl,x3
je L1a1
jmp movementjmp
L1a1:
mov cl,Enemy1y4
cmp cl,y3
je L1aa1
jmp movementjmp

L1aa1:                     
call returnposition
jmp main
enemy1condition6:
mov enemy12,'0'
jmp movementjmp

movementjmp:

;------------------------------------------------------------------------------------------------------------------------
;                                 Condition for the movement of enemy(Info:: It's like bool variable)
;------------------------------------------------------------------------------------------------------------------------

cmp  enemy,'1'  
je Enemymove1
jne Enemymove


Enemymove:           ;///////Enemymove

cmp Enemyx4,26
jae enemycondition1
jb yes1
enemycondition1:
cmp Enemyx4,38
jbe enemycondition2
ja enemycondition3
enemycondition2:

inc Enemyx4
inc Enemyx5
call delay2
mov cl,Enemyx5
cmp cl,x4
je La
jmp yes1
La:
mov cl,Enemyy4
cmp cl,y3
je Laa
jmp yes1
Laa:
call returnposition
jmp main

enemycondition3:
mov enemy,'1'
jmp yes1
 

Enemymove1:             ;///////Enemymove1

cmp Enemyx4,38
je enemycondition4

enemycondition4:
cmp Enemyx4,26
ja enemycondition5
jbe enemycondition6
enemycondition5:
dec Enemyx4
dec Enemyx5
call delay2
mov cl,Enemyx4
cmp cl,x3
je La1
jmp yes1
La1:
mov cl,Enemyy4
cmp cl,y3
je Laa1
jmp yes1

Laa1:                      
call returnposition
jmp main
enemycondition6:
mov enemy,'0'
jmp yes1

;------------------------------------------------------------------------------------------------------------------------
;                          Yes1 Label is Made for the movement of enemy1 & 2(Info:: It's like bool variable)
;------------------------------------------------------------------------------------------------------------------------

yes1:                          ;/////////getting the input from the user




mov ah, 01h
int 16h
jz start
level1_jump:                                    ;when level is 1 code start here every time
mov ah,00h
int 16h

cmp level1,'0'
je bool2
cmp x1,78
 je bool1
 jne bool2
 bool1:
 cmp level1,'1'
 je bool3
 bool3:
call returnposition1
mov level1 ,'0'
mov level2 ,'1'
jmp main
 bool2:

 cmp level2,'0'
je bool5


 cmp x3,78
 je bool4
 jne bool5
 bool4:
 cmp level2,'1'
 je bool6
 bool6:
call returnposition1
mov level2 ,'0'
mov level3 ,'1'
jmp main
 bool5:
 cmp level3,'1'
 jne bool17
 cmp x9,79
 jne bool17
 mov level3,'0'
 mov level4,'1'
 call gameover
 jmp exit

 bool17:
cmp ah, 48h  
je up
cmp ah, 50h  
je down
cmp ah, 4Dh  
je right
cmp ah, 4Bh  
je left

jmp exit




;------------------------------------------------------------------------------------------------------------------------
;                          Yes Label is Made for the Smooth Falling of the Mario (Info:: It's like bool variable)
;------------------------------------------------------------------------------------------------------------------------
        
yes:

mov y10,'0'
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
cmp y13,'5'
jne L12
mov y13,'1'
L12:
call check2
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
call delay
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9

inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9

inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9

inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
cmp y11,'5'
jne L14
mov y11,'1'
L14:
call check1
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
cmp y12,'5'
jne L13
mov y12,'1'
L13:
call check

inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
jmp start





;------------------------------------------------------------------------------------------------------------------------
;                                                            Check Condition for the jump on first Hurdle
;------------------------------------------------------------------------------------------------------------------------

check proc
mov cl,y5
cmp cl,16
ja down_condition                

call delay
jmp start
down_condition:
mov cl,x5
cmp cl,20
ja L2 
jb L4
L2:
mov cl,x6
cmp cl,27
jb start
ja L4
L4:
ret
check endp

;------------------------------------------------------------------------------------------------------------------------
;                                                            Check Condition for the jump on Second Hurdle
;------------------------------------------------------------------------------------------------------------------------
             

check1 proc
mov cl,y5
cmp cl,15
ja down_condition                

call delay
jmp start
down_condition:
mov cl,x5
cmp cl,40
ja L2 
jb L4
L2:

mov cl,x6
cmp cl,45
jb start
ja L4
L4:
ret
check1 endp

;------------------------------------------------------------------------------------------------------------------------
;                                                            Check2 Condition for the jump on Third Hurdle
;------------------------------------------------------------------------------------------------------------------------
        
check2 proc
mov cl,y5
cmp cl,12
ja down_condition                

call delay
jmp start
down_condition:
mov cl,x5
cmp cl,60
ja L2 
jb L4
L2:

mov cl,x6
cmp cl,67
jb start
ja L4
L4:
ret
check2 endp 

;------------------------------------------------------------------------------------------------------------------------
;                                                         Up(When the up key is pressed by the user)
;------------------------------------------------------------------------------------------------------------------------

up:

mov cl,y
cmp cl,5
ja Ls1

jb up_condition_label 
Ls1:
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
call delay
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9
dec y
dec y1
dec y2
dec y3
dec y4
dec y5
dec y6
dec y7
dec y8
dec y9

mov y10,'1'
call delay
mov ah,00
mov al,00
jmp start




up_condition_label:
jmp start

;------------------------------------------------------------------------------------------------------------------------
;                                             When the down key is pressed by the user
;------------------------------------------------------------------------------------------------------------------------

 down:

mov cl,y5
cmp cl,24
je down_condition_label                ;***down_condition_label  
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
call delay
jmp start
down_condition_label:
jmp start

;------------------------------------------------------------------------------------------------------------------------
;                                             When the right key is pressed by the user
;------------------------------------------------------------------------------------------------------------------------

 right:
 
cmp y11,'1'     ;/////////bool set for hurdle1
jne L9
cmp y5,16
jb L9
cmp x,27
jb L9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
mov y11,'0'
jmp start


 L9:
 cmp y12,'1'                    ;///////////////bool set for the hurdle2
 jne L10
 cmp y5,15
 jb L10
 cmp x,47
 jb L10
 inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
mov y12,'0'
jmp start

L10:
 
 cmp y13,'1'               ;/////////bool set for the hurdle3
 jne L11
 cmp y5,14
 jb L11
 cmp x,67
 jb L11
 inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
inc y
inc y1
inc y2
inc y3
inc y4
inc y5
inc y6
inc y7
inc y8
inc y9
mov y13,'0'
jmp start

L11:

mov cl,x1
cmp cl,78
je right_condition_label ;***right_condition_label  
cmp cl,21
jl condition1


condition2:                    ;/////Condition no2
mov ch,y1
cmp ch,18
ja  right_condition_label

condition1:                    ;/////Condition no1  ( INFO :: This is condition which is called when any condition is proved to be true  )
inc x
inc x1
inc x2
inc x3
inc x4
inc x5
inc x6
inc x7
inc x8
inc x9

jmp start

right_condition_label:
mov cl,x1
cmp cl,26
ja condition3


jmp start

condition3:                        ;/////Condition no3
mov cl,x1
cmp cl,41
jb condition1
mov cl,x1
cmp cl,43
ja condition4
jmp start

condition4:                         ;/////Condition no4
mov cl,x1
cmp cl,61
jb condition1
mov cl,x1
cmp cl,63
ja condition5
jmp start


condition5:                         ;/////Condition no5
mov cl,x1
cmp cl,78
jbe condition1
jmp start

;------------------------------------------------------------------------------------------------------------------------
;                                             When the left key is pressed by the user
;------------------------------------------------------------------------------------------------------------------------
left:

mov cl,x
cmp cl,0
je left_condition_label                ;***left_condition_label 
cmp cl,67
jbe condition7
jb condition6


condition6:                        ;/////Condition no6  ( INFO :: This is condition which is called when any condition is proved to be true  )
dec x
dec x1
dec x2
dec x3
dec x4
dec x5
dec x6
dec x7
dec x8
dec x9
jmp start

left_condition_label:
jmp start

condition7:                       ;/////Condition no7
cmp y1,19
jb condition6
cmp x,66
jb condition8
jmp start

condition8:                       ;/////Condition no8
cmp x,47
ja condition6
jbe condition9

condition9:                       ;/////Condition no9
cmp x,28
ja condition10
jb condition11

condition10:                      ;/////Condition no10
cmp x,45
jbe condition6
jmp start
 
condition11:                      ;/////Condition no11
cmp x,20
jb condition10
jmp start


;------------------------------------------------------------------------------------------------------------------------
;                                            Terminating condition (Our program End here)
;------------------------------------------------------------------------------------------------------------------------

exit:                                   
mov ah,04ch
int 21h
end
;------------------------------------------------------------------------------------------------------------------------
;                                            Thanks for visting Our Code
;----------------------------------------------------------------------------------------------------------------------