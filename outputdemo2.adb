WITH Ada.Text_Io;
WITH Ada.Integer_Text_Io;
WITH Ada.Float_Text_Io;

procedure outputdemo2 is

   -----------------------------------------------
   -- This is a comment.  A comment is written text that the
   -- programmer inserts into the program to explain what the
   -- program does and how it works.  The compiler ignores
   -- anything following two dashes, so you can use as many
   -- or as few dashes as you wish in the lines above and
   -- below, as long as you use at least 2.
   --
   -- Every program you write should contain a brief description
   -- of what the program does, along with the author's name
   -- and the date.
   --
   -- This program demonstrates various output statements and
   -- what they produce.
   -----------------------------------------------
   -- Silly variables to store fixed test scores.  Later we will do input.
   Test1 : Integer;
   Test2 : Integer;
   Test3 : Integer;
   Test4 : Integer;
   Test5 : Integer;

   -- Variables useful to help calculate the average.
   TestTotal: Integer;
   NumberOfTests: CONSTANT Integer := 5;

   AverageTestScore: Float;

BEGIN

   Ada.Text_Io.Put(Item=>"Welcome to the test average calculator.");
   Ada.Text_Io.New_Line(Spacing=>2);

   -- Output the test scores.
   Ada.Text_Io.Put(Item=>"Test 1 score: ");
   Ada.Integer_Text_Io.Get(Item=>Test1);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item=>"Test 2 score: ");
   Ada.Integer_Text_Io.Get(Item=>Test2);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item=>"Test 3 score: ");
   Ada.Integer_Text_Io.Get(Item=>Test3);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item=>"Test 4 score: ");
   Ada.Integer_Text_Io.Get(Item=>Test4);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put(Item=>"Test 5 score: ");
   Ada.Integer_Text_Io.Get(Item=>Test5);
   Ada.Text_Io.New_Line;

   -- Calculate the average test score.
   TestTotal := Test1 + Test2 + Test3 + Test4 + Test5;
   AverageTestScore := Float(TestTotal)/Float(NumberOfTests);

   Ada.Text_Io.Put(Item=>"Average test score is: ");
   Ada.Float_Text_Io.Put(Item=>AverageTestScore);

   Ada.text_io.new_line;

   Ada.Text_Io.Put(Item=>"Average test score is: ");
   Ada.Float_Text_Io.Put(Item=>AverageTestScore, Fore=>0, Aft=>2, Exp=>0);

   Ada.Text_Io.New_Line;

end outputdemo2;
