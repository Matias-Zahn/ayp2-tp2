with Ada.Strings.Unbounded.Text_IO;
with Ada.Wide_Text_IO;
with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO,
  Ada.Characters.Handling, Cola;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Characters.Handling;

procedure usacola is
   Msg : constant String := "Hello Woooooorld!";

   package ColaEnteros is new Cola (Integer);
   use ColaEnteros;

   max      : Integer := 21;  -- hace que la cola sea de 20
   UnaColaE : ColaEnteros.TipoCola (max);
   elemento : Integer;
   rta      : Character;

   procedure getElement (cola : in out ColaEnteros.TipoCola) is
      elemento : Integer;
   begin

      loop
         Put_Line ("Inserte un elemento: ");
         Get (elemento);
         Insertar (cola, elemento);
         Put_Line ("Desea continuar: ");
         Get (rta);
         rta := To_Upper (rta);
         exit when rta = 'S';
      end loop;
   end getElement;

   --  procedure pares (cola : in out TipoCola) is
   --  begin
   --     for J in 1 .. max - 1 loop  --elimino los numeros impares
   --        ColaEnteros.Suprimir (UnaColaE, elemento);
   --        if elemento mod 2 = 0 then
   --           ColaEnteros.Insertar (UnaColaE, elemento);
   --        end if;
   --     end loop;

   --     for J in 1 .. max loop --imprimo la cola
   --        ColaEnteros.Suprimir (UnaColaE, elemento);
   --        Put (elemento);
   --        if Vacia (UnaColaE) then --para no excederme de la cola
   --           exit;
   --        end if;
   --     end loop;
   --  end pares;

begin

   Put_Line ("Programa principal");
   getElement (UnaColaE);
end usacola;
