{ATEN��O: Esta rotina ainda est� em desenvolvimento.
          O c�digo gerado pode apresentar incorre��es sint�ticas. }
program semnome;
uses Crt;
{ Disciplina  : [Linguagem e L�gica de Programa��o]}
{ Professor(a): Antonio Carlos Nicolodi}
{ Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)}
{ Autor(a)    : Nome do(a) aluno(a) EU}
{ Data atual  : 27/09/2015}
Var
{ Se��o de Declara��es das vari�veis}
flag,XTECLA : boolean;
XMENSAGEM : string;
MCPF,cpf,D1,D2,XCAR,XC1,XC2 : string;
i,x,XCPF,CONTADOR,ACUMULA,XD1,XD2 : integer;
begin
   { Se��o de Comandos, procedimento, fun��es, operadores, etc...}
   MUDACOR('AMARELO','FRENTE');
   ClrScr;
   Flag := true;
   while FLAG do begin
      write('DIGITE UM CPF ou S pra sair: ');
      readln(CPF);
      if CPF = 'S' then begin
      FLAG := false;
      Exit;
      end;
      if length(CPF) < 11 then begin
      writeln(' ');
      writeln('CPF INV�LIDO !!! - TECLE <ENTER>');
      readln(XTECLA);
      end else begin
      D1 := copy(CPF,10,1);
      D2 := copy(CPF,11,1);
      MCPF := copy(CPF,1,9);
      ACUMULA:= 0;
      CONTADOR := 2;
      for I of 9 to 1 PASSO -1 do begin
      XCAR := copy(MCPF,I,1);
      XCPF := { Use o str }(XCAR) * CONTADOR;
      ACUMULA := ACUMULA + XCPF;
      CONTADOR := CONTADOR + 1;
      end;

      XD1 := 11 - (ACUMULA MOD 11);
      XC1 := {Use o VAL(xstring,xinteiro,code}(XD1);
      MCPF := MCPF + XC1;
      ACUMULA:= 0;
      CONTADOR := 2;

      for I of 10 to 1 PASSO -1 do begin
      XCAR := copy(MCPF,I,1);
      XCPF := { Use o str }(XCAR) * CONTADOR;
      ACUMULA := ACUMULA + XCPF;
      CONTADOR := CONTADOR + 1;
      end;

      XD2 := 11 - (ACUMULA MOD 11);
      XC2 := {Use o VAL(xstring,xinteiro,code}(XD2);
      MCPF := MCPF + XC2;

      if (MCPF = CPF) then begin
      XMENSAGEM := 'CPF � VERDADEIRO !!! - TECLE <ENTER>';
      end else begin
      XMENSAGEM := 'CPF N�O � VERDADEIRO !!! - TECLE <ENTER>';
      end;
      writeln(' ');
      writeln(XMENSAGEM);
      readln(XTECLA);
      end;
   end;

end.