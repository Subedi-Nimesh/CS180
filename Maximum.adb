with Ada.Integer_Text_Io, Ada.Text_Io;

procedure Maximum is

   ------------------------------------
   -- A program to experiment with procedures
   -- and parameters.
   --
   -- Written by: NIMESH SUBEDI
   -- Date:  MARCH. 9, 2017
   ------------------------------------

   procedure Maximum (
         A   : in     Integer;
         B   : in     Integer;
         Max :    out Integer) is

      -- This procedure computes the maximum of
      -- two integers and returns the largest through
      -- the parameter Max.

      Largest : Integer;

Begin

      if A > B then
         Largest := A;
      else
         Largest := B;
      end if;

      Max := Largest;

   end Maximum;

   -- Main program variables
   Value1     : Integer;
   Value2     : Integer;
   Max_1_2    : Integer;
   Value3     : Integer;
   Value4     : Integer;
   Max_3_4    : Integer;
   Max_1_2_3_4: Integer;

begin

   -- Prompt the user for Four values.
   Ada.Text_IO.Put (Item => "Please enter four integers: ");
   Ada.Integer_Text_IO.Get (Item => Value1);
   Ada.Integer_Text_IO.Get (Item => Value2);
   Ada.Integer_Text_IO.Get (Item => Value3);
   Ada.Integer_Text_IO.Get (Item => Value4);



   Maximum (
      A   => Value1,
      B   => Value2,
      Max => Max_1_2);

   Maximum (
      A   => Value3,
      B   => Value4,
      Max => Max_3_4);

   Maximum (
      A   => Max_1_2,
      B   => Max_3_4,
      Max => Max_1_2_3_4);

   -- Print the max
   Ada.Text_IO.Put (Item => "The maximum of ");
   Ada.Integer_Text_IO.Put (
      Item  => Value1,
      Width => 2);

   Ada.Text_IO.Put (", ");
   Ada.Integer_Text_IO.Put (
      Item  => Value2,
      Width => 2);
   Ada.Text_IO.Put (", ");

   Ada.Integer_Text_IO.Put (
      Item  => Value3,
      Width => 2);

   Ada.Text_IO.Put (" and ");
   Ada.Integer_Text_IO.Put (
      Item  => Value4,
      Width => 2);
   Ada.Text_IO.Put (" is ");

   Ada.Integer_Text_IO.Put (
      Item  => Max_1_2_3_4,
      Width => 2);
   Ada.Text_IO.Put_Line (".");

end Maximum;