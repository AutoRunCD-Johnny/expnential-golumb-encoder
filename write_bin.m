function write_bin(name,bin_str)

fp=fopen([name '.bin'],'w');
byte_data=[];
for i=1:(length(bin_str)/8);
    byte_data=[byte_data bin2dec(bin_str(1+8*(i-1):8*i))];
end
fwrite(fp,byte_data);
fclose(fp);