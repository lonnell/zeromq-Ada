------------------------------------------------------------------------------
--                                                                          --
--                             0MQ Ada-binding                              --
--                                                                          --
--                                   Z M Q                                  --
--                                                                          --
--                                  S p e c                                 --
--                                                                          --
--            Copyright (C) 2010-2011, per.sandberg@bredband.net            --
--                                                                          --
-- 0MQ Ada-binding is free software;  you can  redistribute it  and/or      --
-- modify it under terms of the  GNU General Public License as published    --
-- by the Free Soft-ware  Foundation;                                       --
-- either version 2,  or (at your option) any later version.                --
-- 0MQ Ada-binding is distributed in the hope that it will be useful, but   --
-- WITH OUT ANY WARRANTY;                                                   --
-- without even the  implied warranty of MERCHANTABILITY or                 --
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License    --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------

package ZMQ is
   pragma Preelaborate;
   ZMQ_Error : exception;
   type Version_Type is record
      Major : Natural;
      Minor : Natural;
      Patch : Natural;
   end record;

   Binding_Version : constant Version_Type := (0, 0, 1);
   function Library_Version return Version_Type;

   function image (item : Version_Type) return String;

private
   function Error_Message (no : Integer) return String;
   procedure Validate_Library_Version;
   --  Raiese ZMQ_Error if the underlaying library isent a valid version
end ZMQ;
