-- Copyright (c) 2014 CERN
-- Maciej Suminski <maciej.suminski@cern.ch>
--
-- This source code is free software; you can redistribute it
-- and/or modify it in source code form under the terms of the GNU
-- General Public License as published by the Free Software
-- Foundation; either version 2 of the License, or (at your option)
-- any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA


-- Tests if constants in packages can be initialized with expressions
-- that normally require elaboration to be properly emitted.

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.const_package_pkg.all;

entity const_package is
end const_package;

architecture test of const_package is
    signal bitstring : std_logic_vector(3 downto 0) := c_bitstring;
    signal aggregate : std_logic_vector(7 downto 0);
begin
   aggregate <= c_aggregate;
end test;
