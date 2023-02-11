function [zijienew,zijiess] = picyuchuli(file)
f= fopen(file,'rb');
zijie = fread(f);
fclose(f);
zijiess = size(zijie,1);
bianma = org.apache.commons.codec.binary.Base64;
zijienew = char(bianma.encode(zijie))';
end
