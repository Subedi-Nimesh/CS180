WITH Ada.Text_Io;
WITH Ada.Integer_Text_Io;
WITH Ada.Float_Text_Io;

procedure filedemo is

   -----------------------------------------------
   -- This program reads a username and five test scores from a file,
   -- then outputs the average score to the screen.

   -- Every program you write should contain a brief description
   -- of what the program does, along with the author's name
   -- and the date.
   --
   -- Author:  Alan Garvey
   -- Date:  February 1, 2017
   -----------------------------------------------
   -- Variables to store test scores.
   Test1 : Integer;
   Test2 : Integer;
   Test3 : Integer;
   Test4 : Integer;
   Test5 : Integer;

   -- Variables useful to help calculate the average.
   TestTotal: Integer;
   NumberOfTests: CONSTANT Integer := 5;

   AverageTestScore: Float;

   -- File variable for the input file.
   InputFile: Ada.Text_IO.File_Type;

BEGIN

   Ada.Text_Io.Put(Item=>"Welcome to the test average calculator.");
   Ada.Text_Io.New_Line(Spacing=>2);

   -- First open the file for reading.
   Ada.Text_IO.Open(File => InputFile,
      Mode => Ada.Text_IO.In_File,
      Name => "TestScores.dat");

   -- Read the test scores.
   -- You don't want prompts when you are reading from a file.
   -- Ada.Text_Io.Put(Item=>"Test 1 score: ");
   Ada.Integer_Text_Io.Get(File=>InputFile, Item=>Test1);
   Ada.Text_Io.New_Line;

   -- Ada.Text_Io.Put(Item=>"Test 2 score: ");
   Ada.Integer_Text_Io.Get(File=>InputFile, Item=>Test2);
   Ada.Text_Io.New_Line;

   -- Ada.Text_Io.Put(Item=>"Test 3 score: ");
   Ada.Integer_Text_Io.Get(File=>InputFile, Item=>Test3);
   Ada.Text_Io.New_Line;

   -- Ada.Text_Io.Put(Item=>"Test 4 score: ");
   Ada.Integer_Text_Io.Get(File=>InputFile, Item=>Test4);
   Ada.Text_Io.New_Line;

   -- Ada.Text_Io.Put(Item=>"Test 5 score: ");
   Ada.Integer_Text_Io.Get(File=>InputFile, Item=>Test5);
   Ada.Text_Io.New_Line;

   -- Calculate the average test score.
   TestTotal := Test1 + Test2 + Test3 + Test4 + Test5;
   AverageTestScore := Float(TestTotal)/Float(NumberOfTests);

   -- Output the average.
   Ada.Text_Io.Put(Item=>"Average test score is: ");
   Ada.Float_Text_Io.Put(Item=>AverageTestScore, Fore=>0, Aft=>2, Exp=>0);

   Ada.Text_Io.New_Line;

end filedemo;
