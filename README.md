# exponential golumb encode/decoder for signed integer in k-th order

## Usage
### Encoder
Expect input is sequence of signed integer(within 16bit). Output would be binary stream stored in '.bin' format.
> function: bin_str=exp_columb(k,source) , write_bin(name,bin_str)

### Decoder
Expect input is binary stream file. Output is sequence of signed integer.
> fucntion: bin_decode=read_bin(name,k)




Wiki of [exponential golumb coding](https://en.wikipedia.org/wiki/Exponential-Golomb_coding#Extension_to_negative_numbers).
