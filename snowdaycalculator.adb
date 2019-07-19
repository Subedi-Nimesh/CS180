
GNAT GPL 2006 (20060522-34)
Copyright 1992-2006, Free Software Foundation, Inc.

Compiling: c:/users/nimesh/downlo~1/snowdaycalculator.adb (source file time stamp: 2017-02-20 19:09:36)

     1. WITH Ada.Text_IO;
     2. WITH Ada.Integer_Text_IO;
     3.
     4. PROCEDURE Snowdaycalculator IS
     5.    -- This program will calculate if there will be Snow Day or Not.
     6.
     7.    -- Variables used for programs
     8.        InchesOfSnow  : Integer;
     9.        Temp          : Integer;
    10.        Wind          : Integer;
    11.        Answer        : Character;
    12.        BoringMeeting : Boolean;
    13.        SnowDay       : Boolean;
    14.      BEGIN
    15.
    16.         Ada.Text_Io.Put (Item=> "Created By Nimesh Subedi ");
    17.         Ada.Text_Io.New_Line;
    18.         Ada.Text_IO.Put (Item=> "and my Truman username is ns8851");
    19.         Ada.Text_Io.New_Line;
    20.         Ada.Text_Io.New_Line;
    21.
    22.
    23.         Ada.Text_Io.Put (Item => "Input the Inches Of Snow: ");
    24.         Ada.Integer_Text_Io.Get (Item => InchesOfSnow);
    25.
    26.     -- IfThen Statement for conditions
    27.            IF InchesOfSnow < 4 THEN
    28.                       SnowDay:= False;
    29.                       Ada.Text_Io.Put (Item=> " No, It is not snowy day.");
    30.            End If;
    31.
    32.            IF InchesOfSnow > 10 THEN
    33.                        SnowDay:= True;
    34.                        Ada.Text_Io.Put (Item=> "Yes, It is a snowy day.");
    35.           END IF;
    36.
    37.               IF InchesOfSnow > 4 AND InchesOfSnow < 10 THEN
    38.                        Ada.Text_IO.Put (Item => "Input The degree of Temperature: ");
    39.                        Ada.Integer_Text_Io.Get (Item => Temp);
    40.
    41.             IF Temp < 0 THEN
    42.                        SnowDay:= True;
    43.                        Ada.Text_Io.Put (Item=> "Yes, It is a snowy day.");
    44.             End IF;
    45.
    46.             IF Temp > 20 THEN
    47.                        SnowDay:= False;
    48.                        Ada.Text_Io.Put (Item=> "No,  It is not a snowy day.");
    49.             END IF;
    50.             End IF;
    51.
    52.             IF Temp > 0 and Temp < 20 then
    53.                         Ada.Text_Io.Put (Item => "Input the speed of current wind: ");
    54.                         Ada.Integer_Text_Io.Get (Item => Wind);
    55.
    56.             IF Wind > 25 THEN
    57.                         SnowDay:= True;
    58.                         Ada.Text_Io.Put (Item=> "Yes,  It is a snowy day.");
    59.             END IF;
    60.             End IF;
    61.
    62.             IF Wind < 25 THEN
    63.                         Ada.Text_IO.Put (Item => "Is This a Meeting Boring (Y/N): ");
    64.                         Ada.Text_Io.Get (Item => Answer);
    65.
    66.       IF Answer = 'Y' THEN
    67.                SnowDay := True;
    68.                BoringMeeting := True;
    69.                Ada.Text_IO.Put (Item=> "Yes, it is a Boring Meeting = " & Boolean'Image (BoringMeeting));
    70.                Ada.Text_Io.New_Line;
    71.                Ada.Text_Io.Put (Item=> "Yes, It is a snowy day");
    72.       ELSE
    73.                SnowDay :=   False;
    74.                BoringMeeting := False;
    75.                Ada.Text_IO.Put (Item=> "No, It is not a Boring Meeting = " & Boolean'Image (BoringMeeting));
    76.                Ada.Text_Io.New_Line;
    77.                Ada.Text_Io.Put (Item=> "No,  It is not a snowy day");
    78.
    79.       END IF;
    80.       END IF;
    81.       Ada.Text_Io.New_Line (Spacing=>2);
    82.       Ada.Text_Io.Put  (Item=> "Snowday = " & Boolean'Image(SnowDay));
    83.
    84. END Snowdaycalculator;

 84 lines: No errors
