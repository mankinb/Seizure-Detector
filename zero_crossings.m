function zero_cross = zero_crossings(channel)

count = 0;
for i = 2:9999
    if sign(channel(i)) - sign(channel(i-1)) ~= 0
        count = count + 1;
    end  
end    
zero_cross = count;

end

