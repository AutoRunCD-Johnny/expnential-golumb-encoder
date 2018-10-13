function bin_str=exp_columb(k,source)

bin_str=[];
%entropy encoder (exp columb in k-order)
for i=1:length(source);
    if(source(i)<=0);
        temp=uint16(source(i)*-2)+2^k;
    else
        temp=uint16(source(i)*2-1)+2^k;
    end
    if(2^nextpow2(temp)~=temp);
        zero_len=nextpow2(temp)-1-k;
    else
        zero_len=nextpow2(temp)-k;
    end
    
    bin_str=[bin_str [repmat(['0'],1,zero_len) dec2bin(temp)]];
end

%zero padding for last byte
padding=mod(8-mod(length(bin_str),8),8);
if(padding~=0);
    bin_str=[bin_str repmat(['0'],1,padding)];
end

i,padding,[repmat(['0'],1,zero_len) dec2bin(temp)]


