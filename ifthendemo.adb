WITH Ada.Text_Io;
WITH Ada.Integer_Text_Io;
WITH Ada.Float_Text_Io;

procedure ifthendemo is

   -----------------------------------------------
   -- Written by: Alan Garvey
   -- Date: February 6, 2017
   --
   -- This program looks at the use of if-then-else statements.
   -----------------------------------------------
   -- Test Score and letter grade variables.
   TestScore : Integer;
   LetterGrade: Character;

BEGIN

   Ada.Text_Io.Put(Item=>"Welcome to the letter grade assigning program.");
   Ada.Text_Io.New_Line(Spacing=>2);

   -- Input the test score.
   Ada.Text_Io.Put(Item=>"Please enter your test score: ");
   Ada.Integer_Text_Io.Get(Item=>TestScore);
   Ada.Text_Io.New_Line;

   -- Calculate and print the letter grade with nested ifs
   IF TestScore >= 90 THEN
      LetterGrade:= 'A';
   ELSE
      IF TestScore >= 80 THEN
         LetterGrade:= 'B';
      ELSE
         IF TestScore >= 70 THEN
            LetterGrade:= 'C';
         ELSE
            IF TestScore >= 60 THEN
               LetterGrade:= 'D';
            ELSE
               LetterGrade:= 'F';
            END IF;
         END IF;
      END IF;
   END IF;
   Ada.Text_Io.Put(Item=>"The letter grade is: ");
   Ada.Text_Io.Put(Item=>LetterGrade);
   Ada.Text_Io.New_Line(Spacing=>2);

   -- Calculate and print the letter grade using elsif.
   IF TestScore >= 90 THEN
      LetterGrade:= 'A';
   ELSIF TestScore >= 80 THEN
      LetterGrade:= 'B';
   ELSIF TestScore >= 70 THEN
      LetterGrade:= 'C';
   ELSIF TestScore >= 60 THEN
      LetterGrade:= 'D';
   ELSE
      LetterGrade:= 'F';
   END IF;
   Ada.Text_Io.Put(Item=>"The letter grade is: ");
   Ada.Text_Io.Put(Item=>LetterGrade);
   Ada.Text_Io.New_Line(Spacing=>2);

   -- Calculate and print the letter grade in reverse order.
   IF TestScore < 60 THEN
      LetterGrade := 'F';
   ELSIF TestScore < 70 THEN
      LetterGrade := 'D';
   ELSIF TestScore < 80 THEN
      LetterGrade := 'C';
   ELSIF TestScore < 90 THEN
      LetterGrade := 'B';
   ELSE
      LetterGrade := 'A';
   END IF;
   Ada.Text_Io.Put(Item=>"The letter grade is: ");
   Ada.Text_Io.Put(Item=>LetterGrade);
   Ada.Text_Io.New_Line(Spacing=>2);




end ifthendemo;
