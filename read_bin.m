function bin_decode=read_bin(name,k)

bin_decode=[];
fp=fopen([name '.bin'],'r');
byte_data=fread(fp);
i=1;
%64bit buffer
str_buf=[];

while (1);
    if(64-length(str_buf)>7 && i<=length(byte_data));
        str_buf=[str_buf dec2bin(byte_data(i),8)];
        i=i+1;
    elseif(length(str_buf)>k);
        p=1;
        while(str_buf(p)=='0' && p<length(str_buf));
            p=p+1;
        end
        if(p~=length(str_buf));
        bit_len=p+k;
        temp=bin2dec(str_buf(p:p+bit_len-1))-2^k;
        if(mod(temp,2)==0);
            temp=temp/-2;
        else
            temp=(temp+1)/2;
        end
        bin_decode=[bin_decode temp];
        str_buf=str_buf(p+bit_len:length(str_buf));
        else
           break; 
        end
    else
        break;
    end
end

str_buf

fclose(fp);

