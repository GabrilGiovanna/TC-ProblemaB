let d = read_line() in
let g = read_line() in
let x= String.length d in
let y= String.length g in
let z=x+1 in
let v=x+1 in

let m = Array.make_matrix z v 0 in

let c= ref 0 in

let ()= 
for i=0 to x do
  for j=0 to y do
    if(i==0 || j==0) then m.(i).(j)=0 else if (d.[i-1]==g.[j-1]) then 
    begin 
      m.(i).(j)=m.(i-1).(j-1)+1;
      if !c > (m.(i).(j)) then c:=(m.(i).(j)) else c:=c;
    end
    else m.(i).(j)=0;
  done
done
in
Printf.printf "%d\n" c
