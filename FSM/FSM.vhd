-- Ashreet Nagar 
-- Section 10 
-- Student number: 500969636
-- COE328 Digital Systems
library ieee;
use ieee.std_logic_1164.all;
entity FSM is 
	port
	(
		clk		: in	std_logic;
		data_in	: in	std_logic;
		reset		: in 	std_logic;
		student_id	: out	std_logic_vector(3 downto 0);
		current_state	: out 	std_logic_vector(3 DOWnto 0)
		);
end entity;
architecture fsm of FSM is 
	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
	signal yfsm : state_type;
begin
	process (clk,reset)
	begin
		if reset = '1' then
			yfsm <= s0;
		elsif (clk'EVENT AND clk ='1') then
		case yfsm is
			when s0=>
				if data_in = '1' then yfsm <= s1;
					else yfsm <= s0;
						end if;
			when s1=>
				if data_in = '1' then yfsm <= s2;
					else yfsm <= s1;
						end if;
			when s2=>
				if data_in = '1' then yfsm <= s3;
					else yfsm <= s2;
						end if;
			when s3=>
				if data_in = '1' then yfsm <= s4;
					else yfsm <= s3;
						end if;
			when s4=>
				if data_in = '1' then yfsm <= s5;
					else yfsm <= s4;
						end if;
			when s5=>
				if data_in = '1' then yfsm <= s6;
					else yfsm <= s5;
						end if;
			when s6=>
				if data_in = '1' then yfsm <= s7;
					else yfsm <= s6;
						end if;
			when s7=>
				if data_in = '1' then yfsm <= s8;
					else yfsm <= s7;
						end if;
			when s8=>
				if data_in = '1' then yfsm <= s0;
					else yfsm <= s8;
						end if;
		end case;
	end if;
end process;
process(yfsm,data_in)
begin	
	case yfsm is
		when s0=>
		if (data_in = '0') then 
			student_id <= "0000"; --d1 = 5
			current_state <= "0000"; --current state 0
				else 
					student_id <= "0101"; -- d2 = 0
					current_state <= "0000"; --current state 1
						end if;
		when s1=>
		if (data_in = '0') then 
			student_id <= "0000"; --d9 = 6
			current_state <= "0001"; --current state 8
				else 
					student_id <= "0000"; -- d1 = 5
					current_state <= "0001"; --current state 9
						end if;
		when s2=>
		if (data_in = '0') then 
			student_id <= "1001"; --d5 = 6
			current_state <= "0010"; --current state 4
				else 
					student_id <= "0000"; -- d6 = 9
					current_state <= "0010"; --current state 5
						end if;
		when s3=>
		if (data_in = '0') then 
			student_id <= "0110"; --d2 = 0
			current_state <= "0011"; -- current state 1
				else 
					student_id <= "1001"; -- d3 = 0
					current_state <= "0011"; --current state 2
						end if;
		when s4=>
		if (data_in = '0') then 
			student_id <= "1001"; --d6 = 9
			current_state <= "0100"; --current state 5
				else 
					student_id <= "0110"; -- d7 = 6
					current_state <= "0100"; --current state 6
						end if;
		when s5=>
		if (data_in = '0') then 
			student_id <= "0110"; --d8 = 3
			current_state <= "0101"; --current state 7
				else 
					student_id <= "1001"; -- d9 = 6
					current_state <= "0101"; --current state 8
						end if;
	when s6=>
		if (data_in = '0') then 
			student_id <= "0011"; --d4 = 9
			current_state <= "0110"; -- current state 3
				else 
					student_id <= "0110"; -- d5 = 6
					current_state <= "0110"; --current state 4
						end if;
		when s7=>
		if (data_in = '0') then 
			student_id <= "0110"; --d3 = 0
			current_state <= "0111"; -- current state 2
				else 
					student_id <= "0011"; -- d4 = 9
					current_state <= "0111"; --current state 3
						end if;
		when s8=>
		if (data_in = '0') then 
			student_id <= "0101"; --d7 = 6
			current_state <= "1000"; --current state 6
				else 
					student_id <= "0110"; -- d8 = 3
					current_state <= "1000"; --current state 7
						end if;
	end case;
end process;
end architecture;