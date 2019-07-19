WITH Ada.Float_Text_Io;
WITH Ada.Integer_Text_Io;
WITH Ada.Text_Io;

procedure lab3 is

   ------------------------------------
   -- This program figures the wage for
   -- a worker.
   --
   -- Written by Bob Matthews with modifications by Alan Garvey
   -- Modified by Nimesh Subedi
   -- Date:  02/07/2017
   ------------------------------------

   Full_Time_Hours : constant Float := 40.0;
   Overtime_Rate   : CONSTANT Float := 1.5;
   Wage_Increase   : CONSTANT Float := 0.07;
   Long_Tenure     : CONSTANT Integer := 12;
   One_Year        : Boolean;
   Months_Worked         : Integer;
   Base_Wage             : Float;
   Hours_Worked          : Float;
   Overtime_Hours_Worked : Float;
   Pay                   : Float;
   Insurance_Type        : Character;
   Low_Insurance         : CONSTANT Integer := 240;
   High_Insurance        : CONSTANT Integer := 320;

Begin

   -- Prompt user to enter hourly wage ,
   -- hours worked and months worked.
   Ada.Text_Io.Put (Item => "Please enter hourly wage: ");
   Ada.Float_Text_Io.Get (Item => Base_Wage);

   Ada.Text_Io.Put (Item => "Please enter hours worked: ");
   Ada.Float_Text_Io.Get (Item => Hours_Worked);

   Ada.Text_Io.Put (Item => "Please enter Months worked: ");
   Ada.Integer_Text_Io.Get (Item => Months_worked);

   Ada.Text_Io.Put (Item => "Enter Your Insurance type 'H'or 'L' : ");
   Ada.Text_Io.Get (Item => Insurance_Type);

   -- Determine if overtime was worked.  Then, compute
   -- wage using appropriate formula
   if Hours_Worked <= Full_Time_Hours then

      -- No overtime
      Pay := Base_Wage * Hours_Worked;

   else

      -- Overtime.  Figure overtime overs worked, then
      -- compute pay based on the overtime rate.
      Overtime_Hours_Worked := Hours_Worked - Full_Time_Hours;
      Pay := Base_Wage * Full_Time_Hours
         + Overtime_Hours_Worked * Base_Wage * Overtime_Rate;

   end if;

   IF Months_Worked >= Long_Tenure THEN
      One_Year := True;

      --Pay is increased by 7%
      Pay := Pay + (Pay * Wage_Increase);
   ELSE
      One_Year := False;

   END IF;

   IF Insurance_Type = 'H' THEN
      Pay := Pay - Float(High_Insurance);
   END IF;

    IF Insurance_Type = 'L' THEN
      Pay := Pay - Float(Low_Insurance);

   END IF;

   -- Output total pay amount.
   Ada.Text_Io.Put (Item => "Pay is $");
   Ada.Float_Text_Io.Put (
      Item => Pay,
      Fore => 0,
      Aft  => 2,
      Exp  => 0);
   Ada.Text_Io.New_Line;


end lab3;