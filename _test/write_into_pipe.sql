--
-- Use this script to write the text 'hello world'
-- into a message named 'queue_name'.
-- Then use
--   .\read_pipe.exe user/pw queue_name
--
declare
   status number;
begin
             dbms_pipe.pack_message('hello world');
   status := dbms_pipe.send_message('queue_name');
end;
/
