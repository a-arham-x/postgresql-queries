do $$
declare
a integer;
b integer;
c integer;
begin	
a := 4;
b := 5;	
c := a + b;
raise notice 'The sum of % and % is %', a, b, c;
end;
$$
