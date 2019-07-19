WITH Ada.Text_IO;
WITH Ada.Integer_Text_IO;
WITH Ada.Float_Text_IO;

PROCEDURE Weather IS
   -- This program reads weather.
   -- Written by: NIMESH SUBEDI
   -- Truman email: ns8851@truman.edu
   -- Date: March 3, 2017

   Datafile           : Ada.Text_IO.File_Type;
   LoopCount          : Integer               := 0;
   Hightemp           : Integer;
   Lowtemp            : Integer;
   Precipitation        : Float;
   Date               : String (1 .. 9);
   TotalHightemp      : Integer               := 0;
   TotalLowtemp       : Integer               := 0;
   TotalPrecipitation : Float                 := 0.00;

   MaxHightemp     : Integer         := 0;
   MinLowtemp      : Integer         := 50;
   MaxHightemptime : String (1 .. 9);
   MinLowtemptime  : String (1 .. 9);

   AvgHightemp : Float;
   AvgLowtemp  : Float;
   Linenumber  : Constant Integer := 6;

BEGIN

   -- It opens the file Weather.txt
   Ada.Text_IO.Open (
      File => Datafile,
      Mode => Ada.Text_IO.In_File,
      Name => "Weather.txt");

   -- It shows the data loop.
   Dataloop :
      LOOP
      EXIT Dataloop WHEN LoopCount = 6;
      LoopCount := LoopCount + 1;
      Ada.Integer_Text_IO.Get (
         File => Datafile,
         Item => Hightemp);

      Ada.Integer_Text_IO.Get (
         File => Datafile,
         Item => Lowtemp);

      Ada.Float_Text_IO.Get (
         File => Datafile,
         Item => Precipitation);

      Ada.Text_IO.Get (
         File => Datafile,
         Item => Date);

      TotalHightemp := TotalHightemp + Hightemp;
      TotalLowtemp := TotalLowtemp + Lowtemp;
      TotalPrecipitation := TotalPrecipitation + Precipitation;

      IF Lowtemp < MinLowtemp THEN
         MinLowtemp := Lowtemp;
         MinLowtemptime := Date;
      END IF;

      IF Hightemp > MaxHightemp THEN
         MaxHightemp := Hightemp;
         MaxHightemptime := Date;
      END IF;
   END LOOP Dataloop;

   AvgHightemp := Float(TotalHightemp)/Float(Linenumber);
   AvgLowtemp := Float(TotalLowtemp)/Float(Linenumber);

   -- Average High Temperature
   Ada.Text_IO.Put (Item => "Average High Temperature: ");
   Ada.Float_Text_IO.Put (
      Item => AvgHightemp,
      Fore => 2,
      Aft  => 2,
      Exp  => 0);
   Ada.Text_IO.New_Line;

   --Average Low Temperature
   Ada.Text_IO.Put (Item => "Average Low Temperature: ");
   Ada.Float_Text_IO.Put (
      Item => AvgLowtemp,
      Fore => 2,
      Aft  => 2,
      Exp  => 0);
   Ada.Text_IO.New_Line;

   -- Max High temperature with date
   Ada.Text_IO.Put (Item => "Maximum High Temperature: ");
   Ada.Integer_Text_IO.Put (Item => MaxHightemp);
   Ada.Text_IO.Put (Item => " On Date: ");
   Ada.Text_IO.Put (Item => MaxHightemptime);
   Ada.Text_IO.New_Line;

   --Min Low Temperature with date
   Ada.Text_IO.Put (Item => "Mininmum Low Temperature: ");
   Ada.Integer_Text_IO.Put (Item => MinLowtemp);
   Ada.Text_IO.Put (Item => " On Date: ");
   Ada.Text_IO.Put (Item => MinLowtemptime);
   Ada.Text_IO.New_Line;

   -- Total percipitation
   Ada.Text_IO.Put (Item => "Total Precipitation: ");
   Ada.Float_Text_IO.Put (
      Item => TotalPrecipitation,
      Fore => 1,
      Aft  => 2,
      Exp  => 0);

END Weather;