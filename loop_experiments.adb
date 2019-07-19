with Ada.Integer_Text_Io, Ada.Text_Io;
use Ada.Integer_Text_Io, Ada.Text_Io;

procedure Loop_Experiments is

   ---------------------------------------
   -- A program to experiment with count-controlled loops.
   --
   -- Written by Bob Matthews
   -- Modified by NIMESH SUBEDI
   -- Date: FEB. 22, 2017
   ---------------------------------------

   -- The loop control variable.
   Count : Integer;
   Value1 : Integer;
   Value2: Integer;

   -- Counts the number of iterations.  Note that this is *not*
   -- the LCV.
   N_Iterations : Integer;

Begin

   Put(Item =>"Enter the First Value: ");
      Get(Item =>Value1 );
      New_Line;
         Put(Item =>"Enter the Second Value: ");
      Get(Item =>Value2 );
      New_Line;

   -- Initialize the iteration counter.
   N_Iterations := 0;

   -- Initialize the LCV.
   Count := Value1;

   Iterate:
      loop

      -- Test the termination condition.
      exit Iterate when Count > Value2;

      -- We didn't exit the loop, so let's count this iteration.
      N_Iterations := N_Iterations + 1;

      Put (Item => "On iteration ");
      Put (
         Item  => N_Iterations,
         Width => 0);
      Put (Item => " the loop control variable had a value of ");
      Put (
         Item  => Count,
         Width => 0);
      Put_Line (Item => ".");

      -- Increment the LCV.
      Count := Count + 1;

   end loop Iterate;

end Loop_Experiments;