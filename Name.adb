WITH Ada.Integer_Text_IO;

   PROCEDURE Name IS
      Var : Integer;
      Old : Integer;
      New1 : Integer;
   BEGIN
      Old := 5;
      Var := 10;
      Var := Var + Old;
      Ada.Integer_Text_IO.Put (Item =>Var );
      Old := 20;
      Var := Var + Old;
      Ada.Integer_Text_IO.Put (Item =>Var );
   END Name;
