.model small
.stack
.data
    msg1        db 'Iniciar Sesion', 10, 13, '$'
    msg2        db 'usuario: ', '$'
    msg3        db 'contrase', 164, 'a: ', '$'
    msg4        db 'LA CONTRASE', 165, 'A INGRESADA NO ES CORRECTA', 10, 13, '$'
    msg5        db  'Ingreso al sistema', 10, 13, '$'
    msg6        db 'El usuario no existe', 10, 13, '$'
    worlAdmin   db 'administrador', 10, 13, '$'
    worlUser    db 'usuario', 10, 13, '$' 
    Ftry        db '    >>  Wrong Passowrd   2 chance left  <<', 10, 13, '$' 
    Stry        db '    >>  Wrong Passowrd   1 chance left  <<', 10, 13 , '$' 
    Ttry        db '>> Permission denied <<', 10, 13
                db '>> There where 3 failed login attempts <<', 10, 13
                db '>> Please contact the administrator <<', 10, 13 
                db ' ', 10, 13  
                db '>> Press Enter to go back to menu <<' , 10, 13, '$'

    retryadmin  db '>> Permission denied <<'
                db '>> There where 3 failed login attempts <<'
                db   '>> Wait', 10, 13, '$'
     
    salto       db ' ', 10, 13, '$'
    usering     db  100 dup('$');
    passing     db  100 dup('$');
    usersaved   db  100 dup('$')
    passsaved   db  100 dup('$')  
    
    typesaved   db  100 dup('$')
    typelock    db  100 dup('$') 
                                 
    text        db 'I am so happy!', 10,13                            
    memory      db  250 dup('$') 
    controlMemory  dw  0     
    
    
    
    tamus       dw  0
    tampass     dw  0 
    lockedTemp  dw  0
    
    usuarios    db  'proyecto', 92, 'users.txt', 0
    auxcontenidoar db   1 dup('$')
    controlusers   dw  0
    controltype    dw  0 
    controllock    dw  0
    
    controlpass     dw  0
    tamarch         dw  0
    handle      dw  ?
    handle2 dw ?    ; Guardar asa

    tempDelay dw 1000
    unidades db 9
    decenas db 2  
    
    cabeza db "        Universidad San Carlos De Guatemala ",10,13
    db "        Facultad De Ingeneria ", 10, 13
    db "        Escuela de ciencias y sistemas ", 10, 13
    db "        Arquitectura de compiladores y ensambladores 1 ", 10, 13
    db "        Seccion a ", 10, 13
    db "        Jose Manuel Lara ", 10, 13
    db "        201344708", 10, 13, "$"  
    
    userMenu db "        User Menu ",10,13
    db "F2. Play Game ", 10, 13
    db "F3. SHOW TOP 10 SCOREBOARD ", 10, 13
    db "F5. SHOW MY TOP 10 SCOREBOARD", 10, 13, "$" 
    
    adminMenu db "__________________________________________ ",10,13
    db "        Admin Menu ",10,13
    db "F1. Unlock User ", 10, 13
    db "F2. Promote user to admin", 10, 13
    db "F3. Demote user from admin", 10, 13  
    db "F5. Bubble sort", 10, 13
    db "F6. Heap sort", 10, 13 
    db "F7. Tim sort", 10, 13
    db "F9. Logout", 10, 13, "$"
    
    menuopc db "Menu", 0DH, 0AH
    db '_________________________', 0DH, 0AH
    db 'F1. LOGIN', 0dh, 0AH
    db 'F5. REGISTER', 0dh, 0AH
    db 'F9. EXIT', 0dh, 0AH,'$'

    retryAdmin0 db "Menu", 0DH, 0AH
    db '>> Permission denied <<', 0DH, 0AH
    db '>> There where 3 failed login attempts <<', 0dh, 0AH
    db '>> Wait  ','$' 
                
    retryAdmin2 db ' more seconds and try again <<', 0DH, 0AH
    db '>> Press Enter to go back to menu <<','$'
                                                         
                                                         
    msjcrear db 0ah,0dh, 'Archivo creado con exito', '$'
    msjescr db 0ah,0dh, 'Archivo escrito con exito', '$'  
    nombre db 'proyecto/archivo2.txt',0 ;nombre archivo y debe terminar en 0 

    xnave           dw  0
    ynave           dw  0

        ;nave
    naveFila1       db  00, 00, 00, 00, 00, 39, 00, 00, 00, 00, 00
    naveFila2       db  00, 00, 00, 00, 00, 15, 00, 00, 00, 00, 00
    naveFila3       db  00, 00, 39, 00, 15, 11, 15, 00, 39,	00, 00
    naveFila4       db  00, 15, 15, 15, 15, 11, 15, 15, 15, 15, 00
    naveFila5       db  15, 15, 15, 15, 15,	11,	15,	15,	15,	15,	15
    naveFila6       db  15, 15, 15, 15, 15,	11,	15,	15,	15,	15,	15
        ;disparo
        ;moustro
    moustro21        db  00, 10, 00, 00, 00, 10, 00, 00 
    moustro22        db  00, 00, 10, 00, 10, 00, 00, 00 
    moustro23        db  00, 10, 10, 10, 10, 10, 00, 00 
    moustro24        db  00, 10, 00, 10, 00, 10, 10, 00 
    moustro25        db  10, 10, 10, 10, 10, 10, 10, 10 
    moustro26        db  10, 10, 00, 00, 00, 00, 10, 10
    moustro27        db  00, 10, 00, 00, 00, 00, 10, 00 
    moustro28        db  00, 10, 10, 00, 00, 10, 10, 00

    moustro1        db  00, 01, 00, 00, 00, 01, 00, 00 
    moustro2        db  00, 00, 01, 00, 01, 00, 00, 00 
    moustro3        db  00, 01, 01, 01, 01, 01, 00, 00 
    moustro4        db  00, 01, 00, 01, 00, 01, 01, 00 
    moustro5        db  01, 01, 01, 01, 01, 01, 01, 01 
    moustro6        db  01, 01, 00, 00, 00, 00, 01, 01
    moustro7        db  00, 01, 00, 00, 00, 00, 01, 00 
    moustro8        db  00, 01, 01, 00, 00, 01, 01, 00

    moustro31        db  00, 14, 00, 00, 00, 14, 00, 00 
    moustro32        db  00, 00, 14, 00, 14, 00, 00, 00 
    moustro33        db  00, 14, 14, 14, 14, 14, 00, 00 
    moustro34        db  00, 14, 00, 14, 00, 14, 14, 00 
    moustro35        db  14, 14, 14, 14, 14, 14, 14, 14 
    moustro36        db  14, 14, 00, 00, 00, 00, 14, 14
    moustro37        db  00, 14, 00, 00, 00, 00, 14, 00 
    moustro38        db  00, 14, 14, 00, 00, 14, 14, 00  
        ;disparo
    disparoFila1    db  12
    disparoFila2    db  29
    disparoFila3    db  29
    disparoFila4    db  45
    ;marco
    lineamarco      db  24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24 
    lineamarco1     db  24, 24
      ;coordenadas disparo
    xdis            dw  0
    ydis            dw  0
    contador        dw  0

    xene            dw  0
    yene            dw  0
    xene1            dw  0
    yene1            dw  0
    opcionEne       dw  '0','$'

    l1              db  'EJEMPLO 5', 10, 13, '$'
    l2              db  'SE PULSO F1', 10, 13, '$'
    l3              db  'SE PULSO F2', 10, 13, '$'
    l4              db  'SE PULSO HOME', 10, 13, '$'
    user            db  'oscar','$'

    userNameWord  db  'UserName:', 10, 13, '$'
    lvlUserWord  db  10, 13,10, 13,'Level:', 10, 13, '$'
    timeWord  db  10, 13,10, 13,'Time:', 10, 13, '$'
    lives  db  10, 13,10, 13,'lives:', 10, 13, '$'
    pressSpace db  10, 13,10, 13,'Space!', 10, 13, 'To start', '$'
    pressEsc db  10, 13,10, 13,'Esc', 10, 13, 'To Menu', '$'
    vidaEne db 3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,1

    cordX db 75,105,135,165,195,225,250,75,105,135,165,195,225,250,75,105,135,165,195,225,250
    cordY db 41,41,41,41,41,41,41,32,32,32,32,32,32,32,23,23,23,23,23,23,23
    

    lvl db '      1','$'
    time db '00:00','$'

       ;tiempo
    minutos         db  0
    decminutos      db  0
    uniminutos      db  0
    segundos        db  0
    decsegundos     db  0
    unisegundos     db  0
    micsegundos     db  0

    contadorEne db 0
    

.code
GetChar proc
;lee un caracter
    xor ah, ah
    int 16h
    ret
GetChar endp

imprimirtiempo macro
    local e1
    mov al, minutos
    aam
    mov decminutos, ah
    mov uniminutos, al
    mov al, segundos
    aam
    mov decsegundos, ah
    mov unisegundos, al
    
    mov dl, 35
    e1:
        ;mov ah, 02h
        ;mov dh, 0
        ;mov dl, dl
        ;int 10h
        mov ah, 02h
        mov bh, 00h
        mov dh, 10
        mov dl, 0
        int 10h

        mov ah, 09h
        add decminutos, '0'
        mov al, decminutos
        mov bl, 1fh
        mov cx, 1
        int 10h

        inc dl

        mov ah, 02h
        mov bh, 00h
        mov dh, 10
        mov dl, 1
        int 10h

        mov ah, 09h
        add uniminutos, '0'
        mov al, uniminutos
        mov bl, 1fh
        mov cx, 1
        int 10h

        inc dl


        mov ah, 02h
        mov bh, 00h
        mov dh, 10
        mov dl, 2
        int 10h

        mov ah, 09h
        mov al, 58
        mov bl, 1fh
        mov cx, 1
        int 10h

        inc dl

        mov ah, 02h
        mov bh, 00h
        mov dh, 10
        mov dl, 3
        int 10h

        mov ah, 09h
        add decsegundos, '0'
        mov al, decsegundos
        mov bl, 1fh
        mov cx, 1
        int 10h

        inc dl
        
        mov ah, 02h
        mov bh, 00h
        mov dh, 10
        mov dl, 4
        int 10h

        mov ah, 09h
        add unisegundos, '0'
        mov al, unisegundos
        mov bl, 1fh
        mov cx, 1
        int 10h
endm

imprimir macro texto
    mov dx, offset texto
    mov ah, 09h
    int 21h
endm


imprimirnombre macro
    local e1, e2
    ;mov dl, 0
    e1:

        mov ah, 02h
        mov bh, 00h
        mov dh, 03
        mov dl, 0
        int 10h

        mov dx, offset userNameWord
        mov ah, 09h
        int 21h
       
       
        mov dx, offset usering
        mov ah, 09h
        int 21h

       
        mov dx, offset lvlUserWord
        mov ah, 09h
        int 21h

        mov dx, offset lvl
        mov ah, 09h
        int 21h

        mov dx, offset timeWord
        mov ah, 09h
        int 21h

       ; mov dx, offset time
        ;mov ah, 09h
        ;int 21h

        mov dx, offset lives
        mov ah, 09h
        int 21h

        mov ah, 02h
        mov bh, 00h
        mov dh, 17
        mov dl, 0
        int 10h

        mov ax, opcionEne
        cmp al, '0'
        je spacee
        jmp e2

        spacee:
            mov dx, offset pressSpace
            mov ah, 09h
            int 21h

        

       
    e2:
endm

dibujardis macro
;macro para dibujar el disparo por primera vez
    push cx
    xor cx, cx
    mov cx, 320
    mul cx
    add ax, bx
    mov di, ax
    pop cx
    auxdiblinea disparoFila1, 1
    add ax, 320
    auxdiblinea disparoFila2, 1
    add ax, 320
    auxdiblinea disparoFila3, 1
    add ax, 320
    auxdiblinea disparoFila4, 1
endm
redibujardis macro
;macro que sirve para ir moviendo el disparo hacia arriba
    local e1, salir, quitardisparo, salir1
    ;aqui valida que haya un disparo 
    cmp ydis, 0
    je salir
    ;cada vez que se repinta 5 veces la pantalla va a subir el disparo 1 pixel
    inc contador
    cmp contador, 5
    je e1
    e1:
    sub ax, 1
    mov ydis, ax
    dibujardis
    mov contador, 0
    salir:
    cmp ydis, 22
    je quitardisparo
    jne salir1
    quitardisparo:
    mov ydis, 0
    mov xdis, 0
    salir1:
endm
auxdiblinea macro vector, tam
;se le mueve a di en la posicion en la que se empezara a dibujar
;esta macro sirve para dibujar una linea
    mov di, ax
    mov si, offset vector
    mov cx, tam
    rep movsb
endm

limpiarpantallag proc
;vuelve a entrar en el modo video
    mov ah, 0
    mov al, 13h
    int 10h
    ret
limpiarpantallag endp

dibujarnave macro
    mov cx, 320
    mul cx
    add ax, bx
    mov di, ax
    auxdiblinea naveFila1, 11
    add ax, 320
    auxdiblinea naveFila2, 11
    add ax, 320
    auxdiblinea naveFila3, 11
    add ax, 320
    auxdiblinea naveFila4, 11
    add ax, 320
    auxdiblinea naveFila5, 11
    add ax, 320
    auxdiblinea naveFila6, 11
endm

dibujarEnemigo macro
    local imprimirEnemigos, regreso, salirr,enemigoNivel1,enemigoNivel2,enemigoNivel3, desaparecer
  
    push si
    mov si, 0000

    regreso:
    mov cx,0000
    mov ax, 0000
    cmp si, 21
    je salirr
    lea dx, vidaEne 
    mov al, vidaEne[si]  
    cmp al, 01h
    je enemigoNivel1
    cmp al, 02h
    je enemigoNivel2
    cmp al, 03h
    je enemigoNivel3
    cmp al, 00h
    je desaparecer
    
    
       
    enemigoNivel1: 
        push si
        lea dx, cordY
        mov al, cordY[si]
        ;lea dx, cordX
        ;mov bx, cordX[si]
        ;mov ax, al;coordenada y de la nave
        lea dx, cordx
        mov bl, cordx[si]
        ;mov bx, xene ; coordenada x de la nave

        mov cx, 320
        mul cx
        add ax, bx
        mov di, ax
        auxdiblinea moustro1, 8
        add ax, 320
        auxdiblinea moustro2, 8
        add ax, 320
        auxdiblinea moustro3, 8
        add ax, 320
        auxdiblinea moustro4, 8
        add ax, 320
        auxdiblinea moustro5, 8
        add ax, 320
        auxdiblinea moustro6, 8
        add ax, 320
        auxdiblinea moustro7, 8
        add ax, 320
        auxdiblinea moustro8, 8
        pop si
        inc si
        jmp regreso
    enemigoNivel2: 
        push si
        lea dx, cordY
        mov al, cordY[si]
        ;lea dx, cordX
        ;mov bx, cordX[si]
        ;mov ax, al;coordenada y de la nave
        lea dx, cordx
        mov bl, cordx[si]
        ;mov bx, xene ; coordenada x de la nave

        mov cx, 320
        mul cx
        add ax, bx
        mov di, ax
        auxdiblinea moustro21, 8
        add ax, 320
        auxdiblinea moustro22, 8
        add ax, 320
        auxdiblinea moustro23, 8
        add ax, 320
        auxdiblinea moustro24, 8
        add ax, 320
        auxdiblinea moustro25, 8
        add ax, 320
        auxdiblinea moustro26, 8
        add ax, 320
        auxdiblinea moustro27, 8
        add ax, 320
        auxdiblinea moustro28, 8
        pop si
        inc si
        jmp regreso
    enemigoNivel3: 
        push si
        lea dx, cordY
        mov al, cordY[si]
        ;lea dx, cordX
        ;mov bx, cordX[si]
        ;mov ax, al;coordenada y de la nave
        lea dx, cordx
        mov bl, cordx[si]
        ;mov bx, xene ; coordenada x de la nave

        mov cx, 320
        mul cx
        add ax, bx
        mov di, ax
        auxdiblinea moustro31, 8
        add ax, 320
        auxdiblinea moustro32, 8
        add ax, 320
        auxdiblinea moustro33, 8
        add ax, 320
        auxdiblinea moustro34, 8
        add ax, 320
        auxdiblinea moustro35, 8
        add ax, 320
        auxdiblinea moustro36, 8
        add ax, 320
        auxdiblinea moustro37, 8
        add ax, 320
        auxdiblinea moustro38, 8
        pop si
        inc si
        jmp regreso
    desaparecer: 
        push si
       
        pop si
        inc si
        jmp regreso
    
    
    salirr:
    pop si
   
endm

VSync proc
;metodo de sincronizacion vertical de la pantalla
    mov dx, 03dah
    WaitNotVSync:
        in al, dx
        and al, 08h
        jnz WaitNotVSync
    WaitVSync:
        in al, dx
        and al, 08h
        jz WaitVSync
    ret
VSync endp

Delay proc
;metodo para agregar un delay en microsegundos para refrescar la pantalla
;los microsegundos se toman como cx:dx
    mov cx, 00001h
    mov dx, 0000h
    mov ah, 86h
    int 15h
    ret
Delay endp

HasKey proc
;verifica si se ha pulsado una tecla
    push ax
    mov ah, 01h
    int 16h
    pop ax
    ret
HasKey endp
dibujarmarco macro
    local e1, e2, e3, e4, e5
    ;convertir las coordenadas x y y para la lineazalizacion 
    ;se multiplican por 320 que es el ancho de la matriz la posicion en y
    mov cx, 320
    mul cx
    ;al resultado se le suma la posicion en x
    add ax, bx
    mov di, ax
    e1:
        ;comienza a dibujar el marco desde arriba
        ;auxdiblinea lineamarco, 20;0
        add ax, 20;
        auxdiblinea lineamarco, 20;20
        add ax, 20 ; ax = 20 + 20
        auxdiblinea lineamarco, 20;40
        add ax, 20
        auxdiblinea lineamarco, 20;60
        add ax, 20
        auxdiblinea lineamarco, 20;80
        add ax, 20
        auxdiblinea lineamarco, 20;100
        add ax, 20
        auxdiblinea lineamarco, 20;120
        add ax, 20
        auxdiblinea lineamarco, 20;140
        add ax, 20
        auxdiblinea lineamarco, 20;160
        add ax, 20
        auxdiblinea lineamarco, 20;180
        add ax, 20
        auxdiblinea lineamarco, 20;180
        ;segunda linea marco
        add ax, 140; ax=320
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 340
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 360
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 380
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 400
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 420
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 440
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 460
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 480
        auxdiblinea lineamarco, 20
        add ax, 20
        ;ax = 500
        auxdiblinea lineamarco, 20
        ;empieza a dibujar lado izquierdo
        add ax, 140
        ;ax = 640
        auxdiblinea lineamarco1, 2
        push ax
        ;se guarda ax con 640
        xor si, si
    e2:
        push si
        ;se le suman 320 para llegar a la siguiente linea
        add ax, 320
        ;se dibuja la linea vertical de la izquierda
        auxdiblinea lineamarco1, 2
        pop si
    e3:
        inc si 
        
        cmp si, 120
        je e3hot
        cmp si, 170
        jne e2
        jmp noPasarr

        e3hot:
        push si
       
        sub ax, 20
        auxdiblinea lineamarco, 20
        sub ax, 20
        auxdiblinea lineamarco, 20
        sub ax, 20
        auxdiblinea lineamarco, 20
        sub ax, 10
        auxdiblinea lineamarco, 20  
        add ax, 320
        auxdiblinea lineamarco, 20 
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 10
        auxdiblinea lineamarco, 20 
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        ;inc si 
        pop si
        jmp e2
        
       
        noPasarr:    
    
        pop ax
        ;ax = 640
        add ax, 198
        ;se le suman 198 porque toda la linea tiene una longitud de 200
        ;se dibuja la linea vertical de la derecha
        auxdiblinea lineamarco1, 2
        xor si, si
    e4:
        push si
        add ax, 320
        auxdiblinea lineamarco1, 2
        pop si
    e5:
        ;se dibujan las dos lineas del marco de abajo
        inc si
        cmp si, 170
        jne e4
        sub ax, 198
        ;se le restan 198 para regresar al inicio de la posicion en x
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 140
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20
        add ax, 20
        auxdiblinea lineamarco, 20

        
    
endm
limpiarp macro
    mov ah, 00h
    mov al, 03h
    int 10h
endm    


 Delay2 MACRO constante
	LOCAL D1,D2,Fin_delay
	push si
	push di

	mov si,constante
	D1:
	dec si
	jz Fin_delay
	mov di,constante
	D2:
	dec di
	jnz D2
	jmp D1

	Fin_delay:
	pop di
	pop si
ENDM   


imprime macro texto
    mov ah, 09
    mov dx, offset texto
    int 21h 

endm 
getTecla MACRO
	mov ah,00H
	int 16H
    ret
ENDM   

menuAdmin proc near
    imprime worlUser  
    imprime usering 
    imprime userMenu
    imprime salto 
    
    int 21h
    getTecla
    ret
menuADmin endp 

                                                              ; USER
user1 proc 

    call menuAdmin 
    
    cmp ah, 3Ch
    je juego 
    cmp ah, 3Fh
    je register 
    cmp ah, 43h
    je salir
    
    jmp salir

    
user1 endp 



admin proc 
    limpiarp 
    mov ah, 02h
    mov bh, 00h
    mov dh, 0
    mov dl, 25
    int 10h 
    imprime worlAdmin 
    mov ah, 02h
    mov bh, 00h
    mov dh, 0
    mov dl, 39
    int 10h 
    imprime usering 
    imprime salto
    imprime adminMenu
    jmp salir 
    
admin endp

  

register proc
     mov ah,0 ; limpia pantalla
     mov al,3h ;limpia pantalla
     int 10h ; limpia pantalla   
     ; imprime regist                                             

register endp 

adminUsuarios proc              ;admin usuarios
     ;imprime typesaved 
     mov al, typesaved
     cmp worlAdmin, al
     je admin 
     cmp worlUser, al
     je user1
         
     ;jmp salir
    
adminUsuarios endp 



menu proc near
    mov ah, 09h
    mov bh, 01
    mov cx, 174d
    lea dx, menuopc
    int 21h
    getTecla
    ret
menu endp 



  

encabezado macro 
    mov ah,0 ; limpia pantalla
    mov al,3h ;limpia pantalla
    int 10h ; limpia pantalla   
    imprime cabeza

    
    mov ah,8h     ;pregunta por el numero
    int 21h
    cmp al,0dh 
    je regresarEncabezado
    jne main 
                                                     

endm 

leerusuario macro
    local e1, e2
    mov tamus, 0
    e1:
        xor ax, ax
        mov ah, 01h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je inicio
        mov usering[si], al
        inc si 
        mov usering[si], '$'
        jmp e1
    e2:
endm

leerpass macro
    local e1, e2
    e1:
        mov ax, 00h
        mov ah, 08h
        int 21h
        cmp al, 0dh
        je e2
        cmp al, 1bh
        je inicio
        mov passing[si], al
        inc si
        mov passing[si], '$'
        mov ah, 2h
        mov dl, '*'
        int 21h
        jmp e1
    e2:
endm

calctamuserle macro
    local e1, e2
    xor si, si
    mov tamus, 0
    e1: 
        cmp usering[si], '$'
        je e2
        inc tamus
        inc si
        jmp e1
    e2:
endm

calctamuser macro
    local e1, e2
    xor si, si 
    mov tamarch, 0
    e1:
        cmp usersaved[si], '$'
        je e2
        inc tamarch
        inc si
        jmp e1
    e2:
endm

calctampass macro
    local e1, e2
    xor si, si
    mov tampass, 0
    e1: 
        cmp passing[si], '$'
        je e2
        inc tampass
        inc si
        jmp e1
    e2:
endm

calctampasss macro
    local e1, e2
    xor si, si
    mov tamarch, 0
    e1:
        cmp passsaved[si], '$'
        je e2
        inc tamarch
        inc si
        jmp e1
    e2:
endm

login macro
    local e1, e2, e3, e4, e5, e6
    mov ah, 3dh
    mov al, 0h
    mov dx, offset usuarios
    int 21h
    mov handle, ax
    mov bx, handle
    mov ah, 42h
    mov al, 00h
    mov cx, 0
    mov dx, 0
    int 21h
    e1:
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errornoexiste
        cmp auxcontenidoar[si], ','
        je e2
        mov al, auxcontenidoar[si]
        mov si, controlusers
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e2:  
    
        calctamuser
        calctamuserle
        mov si, tamus
        cmp tamarch, si
        je e3  ; se va a e3 cuando el tamarch = tamusario
        jne e4
    e3:
        xor si, si
    e6:
        mov al, usersaved[si]
        cmp al, '$'
        je e7
        cmp usering[si], al
        jne e4
        inc si
        jmp e6
    e4:
        mov si, 00h
        mov controlusers, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], 0dh
        je e5
        jmp e4
    e5:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], '$'
        je e1
        cmp auxcontenidoar[si], 0ah
        je e5
        mov controlusers, 0
        mov al, auxcontenidoar[si]
        mov si, controlusers
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e7:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
    e8:
        calctampasss
        calctampass
        mov si, tampass
        cmp tamarch, si
        je e9
        jne e10
    e9:
        xor si, si
    e12:
        mov al, passsaved[si]
        cmp al, '$'
        je ingresarsist
        cmp passing[si], al
        jne e10
        inc si
        jmp e12
    e10:
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], ','
        je e11
        cmp auxcontenidoar[si], '$'
        je errorpass
        jmp e10
    e11:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        cmp auxcontenidoar[si], '$'
        je e7
        cmp auxcontenidoar[si], ','
        je e11
        mov controlpass, 0
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
endm
     ;                                                    !!!MAIN!!!
main proc
    mov ax, @data
    mov ds, ax
    encabezado
    regresarEncabezado:
    call menu 
    
    cmp al, 31h
    je log 
    cmp ah, 3Fh
    je register 
    cmp ah, 43h
    je salir
       
ingresarsist:
    imprime msg5
    ey1:  
    mov si, 00h
    mov ah, 3fh
    mov bx, handle
    lea dx, auxcontenidoar
    mov cx, 1
    int 21h
    
    cmp auxcontenidoar[si], '$'
    je errornoexiste
    cmp auxcontenidoar[si], 0dh
    je adminUsuarios
    cmp auxcontenidoar[si], ','
    je adminUsuarios               ;guardado tipo de usuario  
    
    mov al, auxcontenidoar[si]
    mov si, controltype
    mov typesaved[si], al
    inc controltype
    inc si
    mov typesaved[si], '$'
    jmp ey1  
    
    jmp salir
errornoexiste:
    imprime msg6
    jmp salir
errorpass:                                ;!!!!!!!!!!!!!!!!!!!!  error pass       !!!!!!  
    

    mov ah, 3eh
    int 21h
    ;mov al, auxcontenidoar[si]
    ;mov memory[di], al
    ;inc di

    inc lockedTemp

    mov ax, lockedTemp[0]
    cmp al, 01h
    je firstTry 
    cmp al, 02h
    je secondTry 
    cmp al, 03h
    je treedTry
        
    
salir:
    mov ax, 4c00h
    int 21h
logCD:
    mov lockedTemp, 00
log:
    inicio:
    limpiarp
    regresoError:
    imprime msg1
    imprime msg2
    
   
    mov tamus,0      
    mov tampass,0     
    mov controlusers,0  
    mov controltype,0   
    mov controllock,0    
    
    mov controlpass ,0    
    mov tamarch,0
    mov di, 0
    mov memory, '$'         
    
    
    
    xor si, si
    leerusuario
    imprime msg3
    xor si, si
    leerpass
    ;login
    mov ah, 3dh
    mov al, 0h
    mov dx, offset usuarios
    int 21h
    mov handle, ax
    mov bx, handle
    mov ah, 42h
    mov al, 00h
    mov cx, 0
    mov dx, 0
    int 21h
    e1:               ; e1 buscamos las comas
        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h

        cmp auxcontenidoar[si], '$'
        je errornoexiste
        cmp auxcontenidoar[si], ','
        je e2
        mov al, auxcontenidoar[si] ; movemos a auxconten la letra
        mov si, controlusers
        mov usersaved[si], al  
        
        
        mov memory[di], al
        inc di 
        
        
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1      ;sale hasta que encuentra una coma o un $
    e2: 
        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di
            
        calctamuser
        calctamuserle
        mov si, tamus
        cmp tamarch, si
        je e3   ; si tienen el mismo tamanio
        jne e4
    e3:
        xor si, si
    e6:
        mov al, usersaved[si]
        cmp al, '$'
        je e7
        cmp usering[si], al   ; compara los user si son iguales!!!!
        jne e4
        inc si
        jmp e6
    e4:
        mov si, 00h    ; e4 cuando sabe que ya no son iguales
        mov controlusers, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h  
        ;memory 
      
        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di 
        
        
        cmp auxcontenidoar[si], 0dh   ;recorre el archivo hasta que encuentra un salto de linea
        je e5
        jmp e4
    e5:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h 
        
        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di 
        
        
        
        cmp auxcontenidoar[si], '$'
        je e1
        cmp auxcontenidoar[si], 0ah
        je e5
        mov controlusers, 0
        mov al, auxcontenidoar[si]
        mov si, controlusers                                                          
        
        mov usersaved[si], al
        inc controlusers
        inc si
        mov usersaved[si], '$'
        jmp e1
    e7:                ;salta aqui cuando el usuario es el mismo
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        

        cmp auxcontenidoar[si], '$'   ;lee la contra igual que el user
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        cmp auxcontenidoar[si], ','
        je e8
        mov al, auxcontenidoar[si]
        mov si, controlpass
        mov passsaved[si], al
        
        mov memory[di], al
        inc di
        
        
        inc controlpass
        inc si
        mov passsaved[si], '$'
        jmp e7
    e8:  
        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di
    
    
        calctampasss
        calctampass
        mov si, tampass
        cmp tamarch, si
        je e9
        jne e10
    e9:
        xor si, si
    e12:
        mov al, passsaved[si]
        cmp al, '$'
        je ingresarsist
        cmp passing[si], al ; comparamos las PW
        jne e10
        inc si
        jmp e12
    e10:      ; cuando la pw es erronea              e10

        mov si, 00h
        mov controlpass, 0
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h  
       
        
        cmp auxcontenidoar[si], ','
        je e11
        ;cmp auxcontenidoar[si], 0ah ;esto lo agregue para que salga con salto
        je errorpass
        cmp auxcontenidoar[si], '$'
        je errorpass 
        
        mov al, auxcontenidoar[si]
        mov si, controltype                            ; controltype
        mov typesaved[si], al
         
        mov memory[di], al
        inc di
        
        inc controltype
        inc si
        mov typesaved[si], '$'
        

        jmp e10
    e11: 
        mov ax, lockedTemp[0]
        cmp al, 02h
        je e7c 

        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di
        
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
       
        
        cmp auxcontenidoar[si], '$'
        je e7
        cmp auxcontenidoar[si], ','
        je e11                                         
        mov controlpass, 0
        ;mov al, auxcontenidoar[si]
        ;mov si, controlpass
        ;mov passsaved[si], al
        ;inc controlpass
        ;inc si   
        
        mov al, auxcontenidoar[si]                      ;guardando el priemr valor de locked
        mov si, controllock
        mov typelock[si], al
        inc controllock
        
        
        mov al, auxcontenidoar[si]  
        mov ax, lockedTemp[0]
        ;mov al, 0
        cmp al, 02h
        je noPasar 
        
        mov al, auxcontenidoar[si]
        mov memory[di], al
        inc di
         
        
        noPasar:
        inc si 
        mov typelock[si], '$'
        
                                             
        mov passsaved[si], '$'                          ;call e7
        jmp e7a
     e7a: 
        
                                                 ;para saber si el usuario esta blockeado
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        

        cmp auxcontenidoar[si], '$'   ;lee la contra igual que el locked
        je errorpass
        cmp auxcontenidoar[si], 0dh
        je e8
        cmp auxcontenidoar[si], 0ah
        je e8
        cmp auxcontenidoar[si], ','
        je e8
        mov al, auxcontenidoar[si]
        mov si, controllock
        mov typelock[si], al 
        
          
        mov ax, lockedTemp[0]
        ;mov al, 0
        cmp al, 02h
        je noPasar2 
        

        mov al, auxcontenidoar[0]
        mov memory[di], al
        inc di 
        
        noPasar2:
        
        
        inc controllock
        inc si
        mov typelock[si], '$'
        jmp  e7a

     e7c:  ; va a blockaer

        mov al, typesaved
        cmp al, worlAdmin
        je coolDown 

        mov al, auxcontenidoar[0]
        mov memory[di], al
        inc di 

        mov memory[di], 'l'
        inc di 
        mov memory[di], 'o' 
        inc di 
        mov memory[di], 'c'
        inc di 
        mov memory[di], 'k'  
        inc di 
        mov memory[di], 'e' 
        inc di 
        mov memory[di], 'd'
        inc di
        mov memory[di], 0dh
        inc di 

        e7cc:
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        

        cmp auxcontenidoar[si], 0dh
        je loquear
        cmp auxcontenidoar[si], 0ah
        je loquear
       
       
        mov al, auxcontenidoar[si]
        ;mov si, controllock
        ;mov typelock[si], al 
        
          
       ; mov ax, lockedTemp[0]
        ;mov al, 0
        mov al, auxcontenidoar[si]
        ;mov memory[di], al
        ;inc di 
         
        

       
    
        inc si
        ;mov typelock[si], '$'
        jmp e7cc
     loquear:                                              
        mov si, 00h
        mov ah, 3fh
        mov bx, handle
        lea dx, auxcontenidoar
        mov cx, 1
        int 21h
        
        

        cmp auxcontenidoar[si], '$'   ;lee la contra igual que el locked
        je hola
       
       
        mov al, auxcontenidoar[si]
        ;mov si, controllock
        ;mov typelock[si], al 
            
          
       ; mov ax, lockedTemp[0]
        ;mov al, 0
       
        

        ;mov al, auxcontenidoar[0]
        mov memory[di], al
        inc di 
        
        
        ;inc controllock
        inc si
        ;mov typelock[si], '$'
        jmp loquear
     firstTry: 
        ;mov [usering] , '$'
        ;mov passing , '$'
        mov usersaved , '$'
        mov passsaved , '$' 
    
        ;typesaved   db  100 dup('$')
        ;typelock    db  100 dup('$')                                                             
        ;imprime salto
        limpiarp
        imprime Ftry
        
        jmp regresoError 
     secondTry:
        mov usersaved , '$'
        mov passsaved , '$'  
        ;imprime salto
        limpiarp
        imprime Stry  
        jmp regresoError 
     treedTry:
     
        hola:
        mov al, auxcontenidoar[si]      
        mov memory[di], al
        inc di 

        jmp crear
        limpiarp
        imprime Ttry  
        mov ah,8h     ;pregunta por el numero
        int 21h
        cmp al,0dh 
        je regresarEncabezado
        jne treedTry
     crear:
        mov ax,@data
        mov ds,ax
        ;crear
        mov ah,3ch
        mov cx,0
        mov dx,offset nombre
        int 21h
        jc salir ;si no se pudo crear
        imprime msjcrear
        mov bx,ax
        mov ah,3eh ;cierra el archivo
        int 21h
      editar:
        ;abrir
        mov ah,3dh
        mov al,1h
        mov dx,offset nombre
        int 21h
        jc salir ;Si hubo error
        ;Escritura de archivo
        mov bx,ax ; mover hadfile
        mov cx,di ;num de caracteres a grabar
        mov dx,offset memory
        mov ah,40h
        int 21h
        imprime msjescr
        cmp cx,ax
        jne salir ;error salir
        mov ah,3eh ;Cierre de archivo
        int 21h
        jmp salir

    coolDown:

             ;imprimo decenas
        mov unidades, 09
        mov decenas, 02

        imprime retryAdmin0
        
     
        
        mov al,decenas
        mov dl, al
        add dl, 30h
        mov ah,02h
        int 21h
               
               ;imprimo unidades
        mov al, unidades  
        mov dl, al
        add dl, 30h
        mov ah,02h
        int 21h 
         
        imprime retryAdmin2 
         
         ;CD y borro pantalla
        Delay2 tempDelay  
        mov ah, 00h
        mov al, 03h
        int 10h
        
        mov al, decenas
        cmp al, 02h
        je decUnidades
        
        mov ah, 00h
        mov al, 03h
        int 10h
        
        ;mov dx, decenas
        ;inc dl
        
        ;mov decenas,dx
        ;add dl, 30h
        ;mov ah,02h
        ;int 21h 
        
        decUnidades: 
               imprime retryAdmin0
               
               ;Resto 1 unidadad
               mov al, unidades
               dec al 
               mov unidades, al  
               ;imprimo decenas
               mov al,decenas
               mov dl, al
               add dl, 30h
               mov ah,02h
               int 21h
                
               ;imprimo unidades
               mov al, unidades  
               mov dl, al
               add dl, 30h
               mov ah,02h
               int 21h  
               imprime retryAdmin2
              
               Delay2 tempDelay 
                mov ah, 00h
                mov al, 03h
                int 10h
               
               
               mov al, unidades
               cmp al, 00h
               je decDecenas
               jne decUnidades  
         decDecenas: 
               mov al, decenas
               cmp al, 00h
               je secondTry
               
         
                
               ;Resto 1 decenas
               mov al, decenas
               dec al 
               mov decenas, al 
               
               ;unidades en 9
               mov unidades, 09h 
                
               imprime retryAdmin0
               
               ;imprimo decenas
               mov al,decenas
               mov dl, al
               add dl, 30h
               mov ah,02h
               int 21h
                
               ;imprimo unidades
               mov al, unidades  
               mov dl, al
               add dl, 30h
               mov ah,02h
               int 21h
               imprime retryAdmin2
               Delay2 tempDelay 
                mov ah, 00h
                mov al, 03h
                int 10h
               
               
               jmp decUnidades
               

    juego:
    xor si, si
    ;entra en modo grafico
    ;ah = 0
    ;al = 13h
    ;Resolucion 320x200 con 256 colores
    mov ax, 13h
    int 10h
    ;offset de la memoria de video importante
    mov ax, 0A000h
    mov es, ax
    ;coordenadas donde empezara a dibujar la nave
    mov xnave, 150
    mov ynave, 185
    mov xene, 75
    mov yene, 23

    mov xene1, 100
    mov yene1, 23
inicioj:
    call limpiarpantallag
    ;se guardan los valores de los registros ax y bx ya que se modificaran 
    push ax
    push bx
    imprimirnombre
    imprimirtiempo
    mov ax, 20 ;y
    mov bx, 50 ;x
    dibujarmarco

    tiempo1:
        mov al, micsegundos
        inc al
        cmp al, 10
        je masseg
        mov micsegundos, al
        jmp inicioj2
    masseg:
        mov al, segundos
        inc al
        cmp al, 60
        je masmin
        mov segundos, al
        mov al, 0
        mov micsegundos, al
        jmp inicioj2
    masmin:
        mov al, minutos
        inc al
        mov minutos, al
        mov al, 0
        mov segundos, al
        mov micsegundos, al

    inicioj2:

    mov ax, ynave ;coordenada y de la nave
    mov bx, xnave ; coordenada x de la nave
    dibujarnave
    jmp moverEne
    regresarEne:
   
    mov ax, ydis ; coordenada y del disparo
    mov bx, xdis ; coordenada x del disparo
    redibujardis ; manda a llamar la macro para redibujar el disparo
    ;se sacan los valores de ax y bx
    pop bx
    pop ax
    ;se llaman los metodos para la sincronizacion de la pantalla
    ;esto se usa para que no titile tanto la pantalla
    
    call VSync
    call Delay; jugar con los valores del delay para que no titile tanto la pantalla
    call HasKey;este procedimiento verifica que se haya pulsado una tecla, si no regresa al inicio del juego a repintar la pantalla
    jz inicioj
    call GetChar;verifica la tecla que pulso
    cmp al, 20h;tecla de espacio
    je cambiarEne
    cmp ax, 4800h;v minuscula para disparar
    je disparar
    cmp ax, 4b00h;flecha de la izquierda
    je moverizq
    cmp ax, 4d00h;flecha de la derecha
    je moverder
    cmp al, 1Bh;escB
    je pausa
    jmp inicioj;vuelve al inicio del juevo para repintar la pantalla
disparar:
    cmp ydis, 0;verifica que no haya disparo
    je disparar1;si no hay se va a la etiqueta que dibuja el disparo
    jmp inicioj ; si hay vuelve al inicio del juego para repintar la pantalla
disparar1:
;guarda los valores de ax y bx en la pila
    push ax
    push bx
    ;limpia los valores de ax y bx
    xor ax, ax
    xor bx, bx
    mov ax, xnave
    add ax, 5h
    mov xdis, ax; usamos la coordenada de x de la nave y se le suman 5 para correrlo 5 pixeles
    mov ax, ynave
    sub ax, 5
    mov ydis, ax; usamos la coordenada y de la nave y se le restan 5 para que este 5 pixeles arriba 
    mov ax, ydis
    mov bx, xdis
    dibujardis
    pop bx
    pop ax
    jmp inicioj
moverEne:
;guarda los valores de ax y bx en la pila
    push ax
    push bx
    push si

    
    mov ax, opcionEne
    cmp al, '0'
    je opcion0
    cmp al, '1'
    je opcion1
    cmp al, '2'
    je opcion2
    cmp al, '3'
    je opcion3
    cmp al, '4'
    je opcion4
    cmp al, '5'
    je opcion5
    cmp al, '6'
    je opcion6
    cmp al, '7'
    je opcion7
    cmp al, '8'
    je opcion8
    cmp al, '9'
    je opcion9
    cmp al, 'a'
    je opciona
    cmp al, 'b'
    je opcionb
    cmp al, 'c'
    je opcionc
    cmp al, 'd'
    je opciond
    cmp al, 'e'
    je opcione
    cmp al, 'f'
    je opcionf
    cmp al, 'g'
    je opciong
    cmp al, 'h'
    je opcionh
    cmp al, 'i'
    je opcioni
    cmp al, 'j'
    je opcionj
    cmp al, 'k'
    je opcionk
    cmp al, 'l'
    je opcionl







    opcion0:

        dibujarEnemigo
        jmp regresarEne 
    opcion1:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[0]  
        cmp al, 190
        je incrSi

        inc al
        mov cordY[0],al

        jmp regresarEne 
        incrSi:
            mov vidaEne[0],0
            mov opcionEne, '2'
            jmp regresarEne
    opcion2:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[1]  
        cmp al, 190
        je incrSi1

        inc al
        mov cordY[1],al

        jmp regresarEne 
        incrSi1:
            mov vidaEne[1],0
            mov opcionEne, '3'
            jmp regresarEne  
     opcion3:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[2]  
        cmp al, 190
        je incrSi2

        inc al
        mov cordY[2],al

        jmp regresarEne 
        incrSi2:
            mov vidaEne[2],0
            mov opcionEne, '4'
            jmp regresarEne

    opcion4:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[3]  
        cmp al, 190
        je incrSi3

        inc al
        mov cordY[3],al

        jmp regresarEne 
        incrSi3:
            mov vidaEne[3],0
            mov opcionEne, '5'
            jmp regresarEne
    opcion5:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[4]  
        cmp al, 190
        je incrSi4

        inc al
        mov cordY[4],al

        jmp regresarEne 
        incrSi4:
            mov vidaEne[4],0
            mov opcionEne, '6'
            jmp regresarEne
    opcion6:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[5]  
        cmp al, 190
        je incrSi5

        inc al
        mov cordY[5],al

        jmp regresarEne 
        incrSi5:
            mov vidaEne[5],0
            mov opcionEne, '7'
            jmp regresarEne   
    opcion7:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[6]  
        cmp al, 190
        je incrSi6

        inc al
        mov cordY[6],al

        jmp regresarEne 
        incrSi6:
            mov vidaEne[6],0
            mov opcionEne, '8'
            jmp regresarEne 
    opcion8:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[7]  
        cmp al, 190
        je incrSi7

        inc al
        mov cordY[7],al

        jmp regresarEne 
        incrSi7:
            mov vidaEne[7],0
            mov opcionEne, '9'
            jmp regresarEne 
    opcion9:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[8]  
        cmp al, 190
        je incrSi8

        inc al
        mov cordY[8],al

        jmp regresarEne 
        incrSi8:
            mov vidaEne[8],0
            mov opcionEne, 'a'
            jmp regresarEne   
    opciona:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[9]  
        cmp al, 190
        je incrSi9

        inc al
        mov cordY[9],al

        jmp regresarEne 
        incrSi9:
            mov vidaEne[9],0
            mov opcionEne, 'b'
            jmp regresarEne 
    opcionb:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[10]  
        cmp al, 190
        je incrSib

        inc al
        mov cordY[10],al

        jmp regresarEne 
        incrSib:
            mov vidaEne[10],0
            mov opcionEne, 'c'
            jmp regresarEne    
    opcionc:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[11]  
        cmp al, 190
        je incrSic

        inc al
        mov cordY[11],al

        jmp regresarEne 
        incrSic:
            mov vidaEne[11],0
            mov opcionEne, 'd'
            jmp regresarEne  
    opciond:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[12]  
        cmp al, 190
        je incrSid

        inc al
        mov cordY[12],al

        jmp regresarEne 
        incrSid:
            mov vidaEne[12],0
            mov opcionEne, 'e'
            jmp regresarEne 
    opcione:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[13]  
        cmp al, 190
        je incrSie

        inc al
        mov cordY[13],al

        jmp regresarEne 
        incrSie:
            mov vidaEne[13],0
            mov opcionEne, 'f'
            jmp regresarEne  
    opcionf:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[14]  
        cmp al, 190
        je incrSif

        inc al
        mov cordY[14],al

        jmp regresarEne 
        incrSif:
            mov vidaEne[14],0
            mov opcionEne, 'g'
            jmp regresarEne                      
    opciong:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[15]  
        cmp al, 190
        je incrSig

        inc al
        mov cordY[15],al

        jmp regresarEne 
        incrSig:
            mov vidaEne[15],0
            mov opcionEne, 'h'
            jmp regresarEne                 
    opcionh:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[16]  
        cmp al, 190
        je incrSih

        inc al
        mov cordY[16],al

        jmp regresarEne 
        incrSih:
            mov vidaEne[16],0
            mov opcionEne, 'i'
            jmp regresarEne 
    opcioni:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[17]  
        cmp al, 190
        je incrSii

        inc al
        mov cordY[17],al

        jmp regresarEne 
        incrSii:
            mov vidaEne[17],0
            mov opcionEne, 'j'
            jmp regresarEne 
     opcionj:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[18]  
        cmp al, 190
        je incrSij

        inc al
        mov cordY[18],al

        jmp regresarEne 
        incrSij:
            mov vidaEne[18],0
            mov opcionEne, 'k'
            jmp regresarEne 
    opcionk:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[19]  
        cmp al, 190
        je incrSik

        inc al
        mov cordY[19],al

        jmp regresarEne 
        incrSik:
            mov vidaEne[19],0
            mov opcionEne, 'l'
            jmp regresarEne   
    opcionl:
        dibujarEnemigo
        lea dx, cordY 
        mov al, cordY[20]  
        cmp al, 190
        je incrSil

        inc al
        mov cordY[20],al

        jmp regresarEne 
        incrSil:
            mov vidaEne[20],0
            mov opcionEne, 'm'
            dibujarEnemigo
            jmp regresarEne 


    cambiarEne:
        mov opcionEne, '1'
        jmp regresarEne 
    
    
    pop bx
    pop ax 
    pop si 
moverizq:
    push ax
    mov ax, xnave; movemos la posicion de la nave al registro ax
    cmp ax, 73;comparamos si se puede mover a la izquierda, teniendo en cuenta que la coordenada x donde empieza el marco es la 50
    ;se le suman los dos pixeles de la linea vertical
    je inicioj;si es igual regresa al inicio del juego
    dec ax;si no es igual le resta 1 al valor de ax
    mov xnave, ax; se vuelve a asignar este valor a la coordena x de la nave
    pop ax
    jmp inicioj;se regresa a repintar el juego con la nueva posicion de x
moverder:
    push ax
    mov ax, xnave
    cmp ax, 256;se compara si se puede mover aun a la derecha, teniendo en cuenta que se empezo en la 50 y termino en la 250, a esto
    ;se le restan los 2 de la linea vertical quedando en 248, y aun se le debe restar los 11 del ancho de la nave dejando el resultado como 237
    je inicioj
    inc ax; si no es igual se incrementa el registro ax
    mov xnave, ax; se regresa a asignar el valor a la coordenada x de la nave
    pop ax
    jmp inicioj;se regresa a repintar el juego con la nueva posicion de x
finj:
    ;regresa el control de la pantalla a modo texto
    mov ax, 3h
    int 10h
    jmp salir
imprimirf1:
    imprimir l2
    jmp salir
imprimirf2:
    imprimir l3
pausa:
    mov ah, 02h
    mov bh, 00h
    mov dh, 17
    mov dl, 0
    int 10h

    mov dx, offset pressSpace
    mov ah, 09h
    int 21h
    mov dx, offset pressEsc
    mov ah, 09h
    int 21h
       
           
    call GetChar;verifica la tecla que pulso
    cmp al, 20h;tecla de espacio
    je inicioj
    cmp al, 1Bh;escB
    je pausa
    jmp pausa;vuelve al inicio del juevo para repintar la pantalla  


main endp
end main