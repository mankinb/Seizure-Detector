function length = line_length(channel)

count = 0;
for i = 2:9999
   diff = channel(i) - channel(i-1);
   abs_diff = abs(diff);  
   count = count + abs_diff;   
end    
length = count;

end