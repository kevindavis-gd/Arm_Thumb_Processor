library ieee;
use ieee.std_logic_1164.all;


entity oneBitAdder is
        port( a, b, cin         : in  STD_LOGIC;
              sum, cout         : out STD_LOGIC );
end oneBitAdder;

architecture rt1 of oneBitAdder is
begin
        
        -- Calculate the sum of the 1-BIT adder.
        sum <=  (not a and not b and cin) or
                (not a and b and not cin) or
                (a and not b and not cin) or
                (a and b and cin);

        -- Calculates the carry out of the 1-BIT adder.
        cout <= (not a and b and cin) or
                (a and not b and cin) or
                (a and b and not cin) or
                (a and b and cin);
end rt1;