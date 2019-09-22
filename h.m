function hv = h(i)
hA = [1,2,1,2];
if (i+2 > 0) && (i+2 <= 4)
    hv = hA(i+2);
else
    hv = 0;
end;