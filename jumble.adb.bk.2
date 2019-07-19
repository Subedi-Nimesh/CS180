WITH Ada.Text_Io, Ada.Integer_Text_Io;

PROCEDURE Jumble IS

   ------------------------------------
   --
   -- A program to jumble the characters in a sentence.
   --
   -- Written by Bob Matthews, modified by Alan Garvey
   -- Modified by: Nimesh Subedi
   -- Date: April 04, 2017
   --
   ------------------------------------

   -- Maximum length of the sentence the program can
   --   handle.
   Max_Sentence_Length : CONSTANT Integer := 80;


   FUNCTION To_Lower (
         Char : IN     Character)
     RETURN Character IS
      -- This function converts the uppercase character C
      --   to its lowercase equivalent.  Results are undefined if
      --   the parameter C is not an uppercase letter.

      -- The distance between uppercase and lowercase letters in the
      --   ASCII character set.
      Case_Distance : CONSTANT Integer := 32;

      Upper_Position,
      Lower_Position : Integer;
      Lower          : Character;

   BEGIN

      Upper_Position := Character'Pos (Char);
      Lower_Position := Upper_Position + Case_Distance;
      Lower := Character'Val (Lower_Position);

      RETURN Lower;

   END To_Lower;

   FUNCTION To_Upper (
         Char : IN     Character)
     RETURN Character IS

      Case_Distance : CONSTANT Integer := 32;

      Lower_Position,
      Upper_Position : Integer;
      Upper          : Character;

   BEGIN

      Lower_Position := Character'Pos (Char);
      Upper_Position := Lower_Position - Case_Distance;
      Upper := Character'Val (Upper_Position);

      RETURN Upper;

   END To_Upper;

   FUNCTION Unpunctuate (
         Char : IN     Character)
     RETURN Character IS
      Word : Character;
   BEGIN
      CASE Char IS
         WHEN '.'|'?'|',' =>
            Word := '@';
         WHEN '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' =>
            Word := '~';
         WHEN OTHERS =>
            Word := Char;
      END CASE;
      RETURN Word;
   END Unpunctuate;



   -- The sentence to process will be stored here.
   Sentence : String (1 .. Max_Sentence_Length);

   -- The length of the sentence.
   Sentence_Length : Integer;

   Current_Char : Character;

BEGIN

   -- Prompt for input sentence and then read it.

   Ada.Text_Io.Put ("Enter a sentence (");
   Ada.Integer_Text_IO.Put (
      Item  => Max_Sentence_Length,
      Width => 0);
   Ada.Text_IO.Put (" characters max): ");
   Ada.Text_IO.Get_Line (
      Item => Sentence,
      Last => Sentence_Length);

   -- Process the sentence, one character at time.
   Change_Char:
      FOR I IN 1 .. Sentence_Length LOOP

      -- The notation Sentence(I) is an expression
      -- for the I'th character of the string
      -- Sentence.  For example
      --
      --    Sentence(1)
      --
      -- is the first character in the string variable
      -- Sentence.

      Current_Char := Sentence(I);

      -- Is the I'th character in the string an uppercase
      -- character?
      IF Current_Char >= 'A' AND Current_Char <= 'Z' THEN
         -- Replace the uppercase character with its
         -- lowercase equivalent.
         Sentence(I) := To_Lower(Current_Char);
      ELSE
         IF
               Current_Char >= 'a' AND Current_Char <= 'z' THEN
            Sentence(I) := To_Upper(Current_Char);
         ELSE
            Sentence(I) := Unpunctuate(Current_Char);
         END IF;
      END IF;
   END LOOP Change_Char;

   -- Print out the converted sentence.
   Ada.Text_IO.Put_Line (Sentence(1 .. Sentence_Length));

END Jumble;
