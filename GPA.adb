WITH Ada.Text_IO;
WITH Ada.Integer_Text_IO;
WITH Ada.Float_Text_IO;

PROCEDURE GPA IS
   My_Name        : String (1 .. 10);
   My_Name_Length : Integer;

   -----------------------------------------------
   -- This program recieves/reads scores of five class and
   -- then displays the grade point average to the screen.
   N : Integer;
   I : Integer;
   M : Integer;
   E : Integer;
   S : Integer;

   H : Float;
   U : Float;
   B : Float;
   D : Float;
   O : Float;

   P : Float;
   A : Float;
   G : Float;
   Y : Float;
   W : Float;


   -- Variables useful to help calculate the average.
   Total          : Float;
   Numberofcredit : Float;
   GPA            : Float;

BEGIN

   Ada.Text_Io.Put(Item => "Hello !!! This Program is created by Nimesh Subedi.");
   Ada.Text_Io.New_Line;
   Ada.Text_Io.Put(Item => "Inorder to calculate the Grade Point Average. ");
   Ada.Text_Io.New_Line(Spacing => 2);

   Ada.Text_Io.Put(Item => "Please Enter Your Name : ");
   Ada.Text_IO.Get_Line(
      Item => My_Name,
      Last => My_Name_Length);
   Ada.Text_IO.New_Line(Spacing => 2);

   -- Read the Grade of 5 classes
   Ada.Text_Io.Put(Item => "Please enter grade points for class 1 : ");
   Ada.Integer_Text_Io.Get(Item => N);
   Ada.Text_Io.Put(Item => "Enter credit hours for class 1 : ");
   Ada.Float_Text_IO.Get(Item => H);
   P := Float(N) * H;
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item => "Please enter grade points for class 2 : ");
   Ada.Integer_Text_Io.Get(Item => I);
   Ada.Text_Io.Put(Item => "Enter credit hours for class 2 : ");
   Ada.Float_Text_IO.Get(Item => U);
   A := Float(I) * U;
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item => "Please enter grade points for class 3 : ");
   Ada.Integer_Text_Io.Get(Item => M);
   Ada.Text_Io.Put(Item => "Enter credit hours for class 3 : ");
   Ada.Float_Text_IO.Get(Item => B);
   G := Float(M) * B;
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item => "Please enter grade points for class 4 : ");
   Ada.Integer_Text_Io.Get(Item => E);
   Ada.Text_Io.Put(Item => "Enter credit hours for class 4 : ");
   Ada.Float_Text_IO.Get(Item => D);
   Y := Float(E) * D;
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item => "Please enter grade points for class 5 : ");
   Ada.Integer_Text_Io.Get(Item => S);
   Ada.Text_Io.Put(Item => "Enter credit hours for class 5 : ");
   Ada.Float_Text_IO.Get(Item => O);
   W := Float(S) * O;
   Ada.Text_Io.New_Line;

   Numberofcredit := H + U + B + D + O;

   -- Calculate the Grade Point Averege
   Total := P + A + G + Y + W;
   GPA := Total/Numberofcredit;

   -- Print the Grade Point average
   Ada.Text_IO.Put(Item => My_Name (1 .. My_Name_Length));
   Ada.Text_Io.Put(Item => ", Your Grade Point Average is: ");
   Ada.Float_Text_Io.Put(
      Item => GPA,
      Aft  => 3,
      Exp  => 0);
   Ada.Text_Io.New_Line;

END GPA;