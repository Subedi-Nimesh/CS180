with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Integer_Text_IO;

procedure Mileage is

-- This program computes miles per gallon given four amounts
-- for gallons used, and starting and ending mileages

   -- Constants
   Capacity  : constant Float := 25.0;   -- Maximum gas tank size

   -- Variables
   Car_Make : String (1..20);          -- Make of car
   Last     : Integer range 0..20;     -- Number of letters in
                                       -- Car_Make

   Amt1 : Float range 0.0 .. Capacity;  -- Gallons for fillup 1
   Amt2 : Float range 0.0 .. Capacity;  -- Gallons for fillup 2
   Amt3 : Float range 0.0 .. Capacity;  -- Gallons for fillup 3
   Amt4 : Float range 0.0 .. Capacity;  -- Gallons for fillup 4

   Start_Miles : Float range 0.0 .. Float'Last;  -- Starting mileage
   End_Miles   : Float range 0.0 .. Float'Last;  -- Ending mileage

   MPG : Integer range 4 .. 100;              -- Computed miles per gallon

begin     -- Mileage
   -- Get the data
   Ada.Text_IO.Put (Item => "Enter the make of your car: ");
   Ada.Text_IO.Get_Line (Item => Car_Make, Last => Last);

   Ada.Text_IO.Put (Item => "Enter the number of gallons for 4 fillups: ");
   Ada.Float_Text_IO.Get (Item => Amt1);
   Ada.Float_Text_IO.Get (Item => Amt2);
   Ada.Float_Text_IO.Get (Item => Amt3);
   Ada.Float_Text_IO.Get (Item => Amt4);

   Ada.Text_IO.Put (Item => "Enter the starting and ending mileages: ");
   Ada.Float_Text_IO.Get (Item => Start_Miles);
   Ada.Float_Text_IO.Get (Item => End_Miles);

   -- Calculate the miles per gallon
   MPG := Integer( (End_Miles - Start_Miles) / (Amt1 + Amt2 + Amt3 + Amt4) );

   -- Echo print input data
   Ada.Text_IO.New_Line (Spacing => 2);
   Ada.Text_IO.Put (Item => "Car Make: " & Car_Make (1..Last) );
   Ada.Text_IO.New_Line (Spacing => 2);
   Ada.Text_IO.Put (Item => "For the gallon amounts: ");
   Ada.Text_IO.New_Line (Spacing => 1);
   Ada.Float_Text_IO.Put (Item => Amt1,
                          Fore => 4,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.Put (Item => ',');
   Ada.Float_Text_IO.Put (Item => Amt2,
                          Fore => 4,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.Put (Item => ',');
   Ada.Float_Text_IO.Put (Item => Amt3,
                          Fore => 4,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.Put (Item => ',');
   Ada.Float_Text_IO.Put (Item => Amt4,
                          Fore => 4,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.New_Line (Spacing => 2);
   Ada.Text_IO.Put  (Item => "a starting mileage of ");
   Ada.Float_Text_IO.Put (Item => Start_Miles,
                          Fore => 6,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.New_Line (Spacing => 1);
   Ada.Text_IO.Put (Item => "and an ending mileage of ");
   Ada.Float_Text_IO.Put (Item => End_Miles,
                          Fore => 6,
                          Aft  => 1,
                          Exp  => 0);
   Ada.Text_IO.New_Line (Spacing => 2);

   -- Display the results
   Ada.Text_IO.Put (Item => "the mileage per gallon is ");
   Ada.Integer_Text_IO.Put (Item  => MPG,
                            Width => 3);
   Ada.Text_IO.New_Line (Spacing => 1);

end Mileage;