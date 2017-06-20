module dds (
        input [7:0] in_value,
        output reg [7:0] sin_o,
        output reg [7:0] cos_o,
        input clk
  );

  reg[7:0] sinGold [255:0] /* synthesis syn_ramstyle = "registers"*/;
  reg[7:0] cosGold [255:0] /* synthesis syn_ramstyle = "registers"*/;

  always @ (posedge clk)
    begin
      sin_o <= sinGold[in_value];
      cos_o <= cosGold[in_value];
    end

  always @ (posedge clk)
   begin  // Sine table
    sinGold[   0]=8'b00000000; // 0
    sinGold[   1]=8'b00000010; // 2
    sinGold[   2]=8'b00000011; // 3
    sinGold[   3]=8'b00000101; // 5
    sinGold[   4]=8'b00000110; // 6
    sinGold[   5]=8'b00001000; // 8
    sinGold[   6]=8'b00001001; // 9
    sinGold[   7]=8'b00001011; // 11
    sinGold[   8]=8'b00001100; // 12
    sinGold[   9]=8'b00001110; // 14
    sinGold[  10]=8'b00010000; // 16
    sinGold[  11]=8'b00010001; // 17
    sinGold[  12]=8'b00010011; // 19
    sinGold[  13]=8'b00010100; // 20
    sinGold[  14]=8'b00010110; // 22
    sinGold[  15]=8'b00010111; // 23
    sinGold[  16]=8'b00011000; // 24
    sinGold[  17]=8'b00011010; // 26
    sinGold[  18]=8'b00011011; // 27
    sinGold[  19]=8'b00011101; // 29
    sinGold[  20]=8'b00011110; // 30
    sinGold[  21]=8'b00100000; // 32
    sinGold[  22]=8'b00100001; // 33
    sinGold[  23]=8'b00100010; // 34
    sinGold[  24]=8'b00100100; // 36
    sinGold[  25]=8'b00100101; // 37
    sinGold[  26]=8'b00100110; // 38
    sinGold[  27]=8'b00100111; // 39
    sinGold[  28]=8'b00101001; // 41
    sinGold[  29]=8'b00101010; // 42
    sinGold[  30]=8'b00101011; // 43
    sinGold[  31]=8'b00101100; // 44
    sinGold[  32]=8'b00101101; // 45
    sinGold[  33]=8'b00101110; // 46
    sinGold[  34]=8'b00101111; // 47
    sinGold[  35]=8'b00110000; // 48
    sinGold[  36]=8'b00110001; // 49
    sinGold[  37]=8'b00110010; // 50
    sinGold[  38]=8'b00110011; // 51
    sinGold[  39]=8'b00110100; // 52
    sinGold[  40]=8'b00110101; // 53
    sinGold[  41]=8'b00110110; // 54
    sinGold[  42]=8'b00110111; // 55
    sinGold[  43]=8'b00111000; // 56
    sinGold[  44]=8'b00111000; // 56
    sinGold[  45]=8'b00111001; // 57
    sinGold[  46]=8'b00111010; // 58
    sinGold[  47]=8'b00111011; // 59
    sinGold[  48]=8'b00111011; // 59
    sinGold[  49]=8'b00111100; // 60
    sinGold[  50]=8'b00111100; // 60
    sinGold[  51]=8'b00111101; // 61
    sinGold[  52]=8'b00111101; // 61
    sinGold[  53]=8'b00111110; // 62
    sinGold[  54]=8'b00111110; // 62
    sinGold[  55]=8'b00111110; // 62
    sinGold[  56]=8'b00111111; // 63
    sinGold[  57]=8'b00111111; // 63
    sinGold[  58]=8'b00111111; // 63
    sinGold[  59]=8'b01000000; // 64
    sinGold[  60]=8'b01000000; // 64
    sinGold[  61]=8'b01000000; // 64
    sinGold[  62]=8'b01000000; // 64
    sinGold[  63]=8'b01000000; // 64
    sinGold[  64]=8'b01000000; // 64
    sinGold[  65]=8'b01000000; // 64
    sinGold[  66]=8'b01000000; // 64
    sinGold[  67]=8'b01000000; // 64
    sinGold[  68]=8'b01000000; // 64
    sinGold[  69]=8'b01000000; // 64
    sinGold[  70]=8'b00111111; // 63
    sinGold[  71]=8'b00111111; // 63
    sinGold[  72]=8'b00111111; // 63
    sinGold[  73]=8'b00111110; // 62
    sinGold[  74]=8'b00111110; // 62
    sinGold[  75]=8'b00111110; // 62
    sinGold[  76]=8'b00111101; // 61
    sinGold[  77]=8'b00111101; // 61
    sinGold[  78]=8'b00111100; // 60
    sinGold[  79]=8'b00111100; // 60
    sinGold[  80]=8'b00111011; // 59
    sinGold[  81]=8'b00111011; // 59
    sinGold[  82]=8'b00111010; // 58
    sinGold[  83]=8'b00111001; // 57
    sinGold[  84]=8'b00111000; // 56
    sinGold[  85]=8'b00111000; // 56
    sinGold[  86]=8'b00110111; // 55
    sinGold[  87]=8'b00110110; // 54
    sinGold[  88]=8'b00110101; // 53
    sinGold[  89]=8'b00110100; // 52
    sinGold[  90]=8'b00110011; // 51
    sinGold[  91]=8'b00110010; // 50
    sinGold[  92]=8'b00110001; // 49
    sinGold[  93]=8'b00110000; // 48
    sinGold[  94]=8'b00101111; // 47
    sinGold[  95]=8'b00101110; // 46
    sinGold[  96]=8'b00101101; // 45
    sinGold[  97]=8'b00101100; // 44
    sinGold[  98]=8'b00101011; // 43
    sinGold[  99]=8'b00101010; // 42
    sinGold[ 100]=8'b00101001; // 41
    sinGold[ 101]=8'b00100111; // 39
    sinGold[ 102]=8'b00100110; // 38
    sinGold[ 103]=8'b00100101; // 37
    sinGold[ 104]=8'b00100100; // 36
    sinGold[ 105]=8'b00100010; // 34
    sinGold[ 106]=8'b00100001; // 33
    sinGold[ 107]=8'b00100000; // 32
    sinGold[ 108]=8'b00011110; // 30
    sinGold[ 109]=8'b00011101; // 29
    sinGold[ 110]=8'b00011011; // 27
    sinGold[ 111]=8'b00011010; // 26
    sinGold[ 112]=8'b00011000; // 24
    sinGold[ 113]=8'b00010111; // 23
    sinGold[ 114]=8'b00010110; // 22
    sinGold[ 115]=8'b00010100; // 20
    sinGold[ 116]=8'b00010011; // 19
    sinGold[ 117]=8'b00010001; // 17
    sinGold[ 118]=8'b00010000; // 16
    sinGold[ 119]=8'b00001110; // 14
    sinGold[ 120]=8'b00001100; // 12
    sinGold[ 121]=8'b00001011; // 11
    sinGold[ 122]=8'b00001001; // 9
    sinGold[ 123]=8'b00001000; // 8
    sinGold[ 124]=8'b00000110; // 6
    sinGold[ 125]=8'b00000101; // 5
    sinGold[ 126]=8'b00000011; // 3
    sinGold[ 127]=8'b00000010; // 2
    sinGold[ 128]=8'b00000000; // 0
    sinGold[ 129]=8'b11111110; // -2
    sinGold[ 130]=8'b11111101; // -3
    sinGold[ 131]=8'b11111011; // -5
    sinGold[ 132]=8'b11111010; // -6
    sinGold[ 133]=8'b11111000; // -8
    sinGold[ 134]=8'b11110111; // -9
    sinGold[ 135]=8'b11110101; // -11
    sinGold[ 136]=8'b11110100; // -12
    sinGold[ 137]=8'b11110010; // -14
    sinGold[ 138]=8'b11110000; // -16
    sinGold[ 139]=8'b11101111; // -17
    sinGold[ 140]=8'b11101101; // -19
    sinGold[ 141]=8'b11101100; // -20
    sinGold[ 142]=8'b11101010; // -22
    sinGold[ 143]=8'b11101001; // -23
    sinGold[ 144]=8'b11101000; // -24
    sinGold[ 145]=8'b11100110; // -26
    sinGold[ 146]=8'b11100101; // -27
    sinGold[ 147]=8'b11100011; // -29
    sinGold[ 148]=8'b11100010; // -30
    sinGold[ 149]=8'b11100000; // -32
    sinGold[ 150]=8'b11011111; // -33
    sinGold[ 151]=8'b11011110; // -34
    sinGold[ 152]=8'b11011100; // -36
    sinGold[ 153]=8'b11011011; // -37
    sinGold[ 154]=8'b11011010; // -38
    sinGold[ 155]=8'b11011001; // -39
    sinGold[ 156]=8'b11010111; // -41
    sinGold[ 157]=8'b11010110; // -42
    sinGold[ 158]=8'b11010101; // -43
    sinGold[ 159]=8'b11010100; // -44
    sinGold[ 160]=8'b11010011; // -45
    sinGold[ 161]=8'b11010010; // -46
    sinGold[ 162]=8'b11010001; // -47
    sinGold[ 163]=8'b11010000; // -48
    sinGold[ 164]=8'b11001111; // -49
    sinGold[ 165]=8'b11001110; // -50
    sinGold[ 166]=8'b11001101; // -51
    sinGold[ 167]=8'b11001100; // -52
    sinGold[ 168]=8'b11001011; // -53
    sinGold[ 169]=8'b11001010; // -54
    sinGold[ 170]=8'b11001001; // -55
    sinGold[ 171]=8'b11001000; // -56
    sinGold[ 172]=8'b11001000; // -56
    sinGold[ 173]=8'b11000111; // -57
    sinGold[ 174]=8'b11000110; // -58
    sinGold[ 175]=8'b11000101; // -59
    sinGold[ 176]=8'b11000101; // -59
    sinGold[ 177]=8'b11000100; // -60
    sinGold[ 178]=8'b11000100; // -60
    sinGold[ 179]=8'b11000011; // -61
    sinGold[ 180]=8'b11000011; // -61
    sinGold[ 181]=8'b11000010; // -62
    sinGold[ 182]=8'b11000010; // -62
    sinGold[ 183]=8'b11000010; // -62
    sinGold[ 184]=8'b11000001; // -63
    sinGold[ 185]=8'b11000001; // -63
    sinGold[ 186]=8'b11000001; // -63
    sinGold[ 187]=8'b11000000; // -64
    sinGold[ 188]=8'b11000000; // -64
    sinGold[ 189]=8'b11000000; // -64
    sinGold[ 190]=8'b11000000; // -64
    sinGold[ 191]=8'b11000000; // -64
    sinGold[ 192]=8'b11000000; // -64
    sinGold[ 193]=8'b11000000; // -64
    sinGold[ 194]=8'b11000000; // -64
    sinGold[ 195]=8'b11000000; // -64
    sinGold[ 196]=8'b11000000; // -64
    sinGold[ 197]=8'b11000000; // -64
    sinGold[ 198]=8'b11000001; // -63
    sinGold[ 199]=8'b11000001; // -63
    sinGold[ 200]=8'b11000001; // -63
    sinGold[ 201]=8'b11000010; // -62
    sinGold[ 202]=8'b11000010; // -62
    sinGold[ 203]=8'b11000010; // -62
    sinGold[ 204]=8'b11000011; // -61
    sinGold[ 205]=8'b11000011; // -61
    sinGold[ 206]=8'b11000100; // -60
    sinGold[ 207]=8'b11000100; // -60
    sinGold[ 208]=8'b11000101; // -59
    sinGold[ 209]=8'b11000101; // -59
    sinGold[ 210]=8'b11000110; // -58
    sinGold[ 211]=8'b11000111; // -57
    sinGold[ 212]=8'b11001000; // -56
    sinGold[ 213]=8'b11001000; // -56
    sinGold[ 214]=8'b11001001; // -55
    sinGold[ 215]=8'b11001010; // -54
    sinGold[ 216]=8'b11001011; // -53
    sinGold[ 217]=8'b11001100; // -52
    sinGold[ 218]=8'b11001101; // -51
    sinGold[ 219]=8'b11001110; // -50
    sinGold[ 220]=8'b11001111; // -49
    sinGold[ 221]=8'b11010000; // -48
    sinGold[ 222]=8'b11010001; // -47
    sinGold[ 223]=8'b11010010; // -46
    sinGold[ 224]=8'b11010011; // -45
    sinGold[ 225]=8'b11010100; // -44
    sinGold[ 226]=8'b11010101; // -43
    sinGold[ 227]=8'b11010110; // -42
    sinGold[ 228]=8'b11010111; // -41
    sinGold[ 229]=8'b11011001; // -39
    sinGold[ 230]=8'b11011010; // -38
    sinGold[ 231]=8'b11011011; // -37
    sinGold[ 232]=8'b11011100; // -36
    sinGold[ 233]=8'b11011110; // -34
    sinGold[ 234]=8'b11011111; // -33
    sinGold[ 235]=8'b11100000; // -32
    sinGold[ 236]=8'b11100010; // -30
    sinGold[ 237]=8'b11100011; // -29
    sinGold[ 238]=8'b11100101; // -27
    sinGold[ 239]=8'b11100110; // -26
    sinGold[ 240]=8'b11101000; // -24
    sinGold[ 241]=8'b11101001; // -23
    sinGold[ 242]=8'b11101010; // -22
    sinGold[ 243]=8'b11101100; // -20
    sinGold[ 244]=8'b11101101; // -19
    sinGold[ 245]=8'b11101111; // -17
    sinGold[ 246]=8'b11110000; // -16
    sinGold[ 247]=8'b11110010; // -14
    sinGold[ 248]=8'b11110100; // -12
    sinGold[ 249]=8'b11110101; // -11
    sinGold[ 250]=8'b11110111; // -9
    sinGold[ 251]=8'b11111000; // -8
    sinGold[ 252]=8'b11111010; // -6
    sinGold[ 253]=8'b11111011; // -5
    sinGold[ 254]=8'b11111101; // -3
    sinGold[ 255]=8'b11111110; // -2

    // Cos Table
    cosGold[   0]=8'b01000000; // 64
    cosGold[   1]=8'b01000000; // 64
    cosGold[   2]=8'b01000000; // 64
    cosGold[   3]=8'b01000000; // 64
    cosGold[   4]=8'b01000000; // 64
    cosGold[   5]=8'b01000000; // 64
    cosGold[   6]=8'b00111111; // 63
    cosGold[   7]=8'b00111111; // 63
    cosGold[   8]=8'b00111111; // 63
    cosGold[   9]=8'b00111110; // 62
    cosGold[  10]=8'b00111110; // 62
    cosGold[  11]=8'b00111110; // 62
    cosGold[  12]=8'b00111101; // 61
    cosGold[  13]=8'b00111101; // 61
    cosGold[  14]=8'b00111100; // 60
    cosGold[  15]=8'b00111100; // 60
    cosGold[  16]=8'b00111011; // 59
    cosGold[  17]=8'b00111011; // 59
    cosGold[  18]=8'b00111010; // 58
    cosGold[  19]=8'b00111001; // 57
    cosGold[  20]=8'b00111000; // 56
    cosGold[  21]=8'b00111000; // 56
    cosGold[  22]=8'b00110111; // 55
    cosGold[  23]=8'b00110110; // 54
    cosGold[  24]=8'b00110101; // 53
    cosGold[  25]=8'b00110100; // 52
    cosGold[  26]=8'b00110011; // 51
    cosGold[  27]=8'b00110010; // 50
    cosGold[  28]=8'b00110001; // 49
    cosGold[  29]=8'b00110000; // 48
    cosGold[  30]=8'b00101111; // 47
    cosGold[  31]=8'b00101110; // 46
    cosGold[  32]=8'b00101101; // 45
    cosGold[  33]=8'b00101100; // 44
    cosGold[  34]=8'b00101011; // 43
    cosGold[  35]=8'b00101010; // 42
    cosGold[  36]=8'b00101001; // 41
    cosGold[  37]=8'b00100111; // 39
    cosGold[  38]=8'b00100110; // 38
    cosGold[  39]=8'b00100101; // 37
    cosGold[  40]=8'b00100100; // 36
    cosGold[  41]=8'b00100010; // 34
    cosGold[  42]=8'b00100001; // 33
    cosGold[  43]=8'b00100000; // 32
    cosGold[  44]=8'b00011110; // 30
    cosGold[  45]=8'b00011101; // 29
    cosGold[  46]=8'b00011011; // 27
    cosGold[  47]=8'b00011010; // 26
    cosGold[  48]=8'b00011000; // 24
    cosGold[  49]=8'b00010111; // 23
    cosGold[  50]=8'b00010110; // 22
    cosGold[  51]=8'b00010100; // 20
    cosGold[  52]=8'b00010011; // 19
    cosGold[  53]=8'b00010001; // 17
    cosGold[  54]=8'b00010000; // 16
    cosGold[  55]=8'b00001110; // 14
    cosGold[  56]=8'b00001100; // 12
    cosGold[  57]=8'b00001011; // 11
    cosGold[  58]=8'b00001001; // 9
    cosGold[  59]=8'b00001000; // 8
    cosGold[  60]=8'b00000110; // 6
    cosGold[  61]=8'b00000101; // 5
    cosGold[  62]=8'b00000011; // 3
    cosGold[  63]=8'b00000010; // 2
    cosGold[  64]=8'b00000000; // 0
    cosGold[  65]=8'b11111110; // -2
    cosGold[  66]=8'b11111101; // -3
    cosGold[  67]=8'b11111011; // -5
    cosGold[  68]=8'b11111010; // -6
    cosGold[  69]=8'b11111000; // -8
    cosGold[  70]=8'b11110111; // -9
    cosGold[  71]=8'b11110101; // -11
    cosGold[  72]=8'b11110100; // -12
    cosGold[  73]=8'b11110010; // -14
    cosGold[  74]=8'b11110000; // -16
    cosGold[  75]=8'b11101111; // -17
    cosGold[  76]=8'b11101101; // -19
    cosGold[  77]=8'b11101100; // -20
    cosGold[  78]=8'b11101010; // -22
    cosGold[  79]=8'b11101001; // -23
    cosGold[  80]=8'b11101000; // -24
    cosGold[  81]=8'b11100110; // -26
    cosGold[  82]=8'b11100101; // -27
    cosGold[  83]=8'b11100011; // -29
    cosGold[  84]=8'b11100010; // -30
    cosGold[  85]=8'b11100000; // -32
    cosGold[  86]=8'b11011111; // -33
    cosGold[  87]=8'b11011110; // -34
    cosGold[  88]=8'b11011100; // -36
    cosGold[  89]=8'b11011011; // -37
    cosGold[  90]=8'b11011010; // -38
    cosGold[  91]=8'b11011001; // -39
    cosGold[  92]=8'b11010111; // -41
    cosGold[  93]=8'b11010110; // -42
    cosGold[  94]=8'b11010101; // -43
    cosGold[  95]=8'b11010100; // -44
    cosGold[  96]=8'b11010011; // -45
    cosGold[  97]=8'b11010010; // -46
    cosGold[  98]=8'b11010001; // -47
    cosGold[  99]=8'b11010000; // -48
    cosGold[ 100]=8'b11001111; // -49
    cosGold[ 101]=8'b11001110; // -50
    cosGold[ 102]=8'b11001101; // -51
    cosGold[ 103]=8'b11001100; // -52
    cosGold[ 104]=8'b11001011; // -53
    cosGold[ 105]=8'b11001010; // -54
    cosGold[ 106]=8'b11001001; // -55
    cosGold[ 107]=8'b11001000; // -56
    cosGold[ 108]=8'b11001000; // -56
    cosGold[ 109]=8'b11000111; // -57
    cosGold[ 110]=8'b11000110; // -58
    cosGold[ 111]=8'b11000101; // -59
    cosGold[ 112]=8'b11000101; // -59
    cosGold[ 113]=8'b11000100; // -60
    cosGold[ 114]=8'b11000100; // -60
    cosGold[ 115]=8'b11000011; // -61
    cosGold[ 116]=8'b11000011; // -61
    cosGold[ 117]=8'b11000010; // -62
    cosGold[ 118]=8'b11000010; // -62
    cosGold[ 119]=8'b11000010; // -62
    cosGold[ 120]=8'b11000001; // -63
    cosGold[ 121]=8'b11000001; // -63
    cosGold[ 122]=8'b11000001; // -63
    cosGold[ 123]=8'b11000000; // -64
    cosGold[ 124]=8'b11000000; // -64
    cosGold[ 125]=8'b11000000; // -64
    cosGold[ 126]=8'b11000000; // -64
    cosGold[ 127]=8'b11000000; // -64
    cosGold[ 128]=8'b11000000; // -64
    cosGold[ 129]=8'b11000000; // -64
    cosGold[ 130]=8'b11000000; // -64
    cosGold[ 131]=8'b11000000; // -64
    cosGold[ 132]=8'b11000000; // -64
    cosGold[ 133]=8'b11000000; // -64
    cosGold[ 134]=8'b11000001; // -63
    cosGold[ 135]=8'b11000001; // -63
    cosGold[ 136]=8'b11000001; // -63
    cosGold[ 137]=8'b11000010; // -62
    cosGold[ 138]=8'b11000010; // -62
    cosGold[ 139]=8'b11000010; // -62
    cosGold[ 140]=8'b11000011; // -61
    cosGold[ 141]=8'b11000011; // -61
    cosGold[ 142]=8'b11000100; // -60
    cosGold[ 143]=8'b11000100; // -60
    cosGold[ 144]=8'b11000101; // -59
    cosGold[ 145]=8'b11000101; // -59
    cosGold[ 146]=8'b11000110; // -58
    cosGold[ 147]=8'b11000111; // -57
    cosGold[ 148]=8'b11001000; // -56
    cosGold[ 149]=8'b11001000; // -56
    cosGold[ 150]=8'b11001001; // -55
    cosGold[ 151]=8'b11001010; // -54
    cosGold[ 152]=8'b11001011; // -53
    cosGold[ 153]=8'b11001100; // -52
    cosGold[ 154]=8'b11001101; // -51
    cosGold[ 155]=8'b11001110; // -50
    cosGold[ 156]=8'b11001111; // -49
    cosGold[ 157]=8'b11010000; // -48
    cosGold[ 158]=8'b11010001; // -47
    cosGold[ 159]=8'b11010010; // -46
    cosGold[ 160]=8'b11010011; // -45
    cosGold[ 161]=8'b11010100; // -44
    cosGold[ 162]=8'b11010101; // -43
    cosGold[ 163]=8'b11010110; // -42
    cosGold[ 164]=8'b11010111; // -41
    cosGold[ 165]=8'b11011001; // -39
    cosGold[ 166]=8'b11011010; // -38
    cosGold[ 167]=8'b11011011; // -37
    cosGold[ 168]=8'b11011100; // -36
    cosGold[ 169]=8'b11011110; // -34
    cosGold[ 170]=8'b11011111; // -33
    cosGold[ 171]=8'b11100000; // -32
    cosGold[ 172]=8'b11100010; // -30
    cosGold[ 173]=8'b11100011; // -29
    cosGold[ 174]=8'b11100101; // -27
    cosGold[ 175]=8'b11100110; // -26
    cosGold[ 176]=8'b11101000; // -24
    cosGold[ 177]=8'b11101001; // -23
    cosGold[ 178]=8'b11101010; // -22
    cosGold[ 179]=8'b11101100; // -20
    cosGold[ 180]=8'b11101101; // -19
    cosGold[ 181]=8'b11101111; // -17
    cosGold[ 182]=8'b11110000; // -16
    cosGold[ 183]=8'b11110010; // -14
    cosGold[ 184]=8'b11110100; // -12
    cosGold[ 185]=8'b11110101; // -11
    cosGold[ 186]=8'b11110111; // -9
    cosGold[ 187]=8'b11111000; // -8
    cosGold[ 188]=8'b11111010; // -6
    cosGold[ 189]=8'b11111011; // -5
    cosGold[ 190]=8'b11111101; // -3
    cosGold[ 191]=8'b11111110; // -2
    cosGold[ 192]=8'b00000000; // 0
    cosGold[ 193]=8'b00000010; // 2
    cosGold[ 194]=8'b00000011; // 3
    cosGold[ 195]=8'b00000101; // 5
    cosGold[ 196]=8'b00000110; // 6
    cosGold[ 197]=8'b00001000; // 8
    cosGold[ 198]=8'b00001001; // 9
    cosGold[ 199]=8'b00001011; // 11
    cosGold[ 200]=8'b00001100; // 12
    cosGold[ 201]=8'b00001110; // 14
    cosGold[ 202]=8'b00010000; // 16
    cosGold[ 203]=8'b00010001; // 17
    cosGold[ 204]=8'b00010011; // 19
    cosGold[ 205]=8'b00010100; // 20
    cosGold[ 206]=8'b00010110; // 22
    cosGold[ 207]=8'b00010111; // 23
    cosGold[ 208]=8'b00011000; // 24
    cosGold[ 209]=8'b00011010; // 26
    cosGold[ 210]=8'b00011011; // 27
    cosGold[ 211]=8'b00011101; // 29
    cosGold[ 212]=8'b00011110; // 30
    cosGold[ 213]=8'b00100000; // 32
    cosGold[ 214]=8'b00100001; // 33
    cosGold[ 215]=8'b00100010; // 34
    cosGold[ 216]=8'b00100100; // 36
    cosGold[ 217]=8'b00100101; // 37
    cosGold[ 218]=8'b00100110; // 38
    cosGold[ 219]=8'b00100111; // 39
    cosGold[ 220]=8'b00101001; // 41
    cosGold[ 221]=8'b00101010; // 42
    cosGold[ 222]=8'b00101011; // 43
    cosGold[ 223]=8'b00101100; // 44
    cosGold[ 224]=8'b00101101; // 45
    cosGold[ 225]=8'b00101110; // 46
    cosGold[ 226]=8'b00101111; // 47
    cosGold[ 227]=8'b00110000; // 48
    cosGold[ 228]=8'b00110001; // 49
    cosGold[ 229]=8'b00110010; // 50
    cosGold[ 230]=8'b00110011; // 51
    cosGold[ 231]=8'b00110100; // 52
    cosGold[ 232]=8'b00110101; // 53
    cosGold[ 233]=8'b00110110; // 54
    cosGold[ 234]=8'b00110111; // 55
    cosGold[ 235]=8'b00111000; // 56
    cosGold[ 236]=8'b00111000; // 56
    cosGold[ 237]=8'b00111001; // 57
    cosGold[ 238]=8'b00111010; // 58
    cosGold[ 239]=8'b00111011; // 59
    cosGold[ 240]=8'b00111011; // 59
    cosGold[ 241]=8'b00111100; // 60
    cosGold[ 242]=8'b00111100; // 60
    cosGold[ 243]=8'b00111101; // 61
    cosGold[ 244]=8'b00111101; // 61
    cosGold[ 245]=8'b00111110; // 62
    cosGold[ 246]=8'b00111110; // 62
    cosGold[ 247]=8'b00111110; // 62
    cosGold[ 248]=8'b00111111; // 63
    cosGold[ 249]=8'b00111111; // 63
    cosGold[ 250]=8'b00111111; // 63
    cosGold[ 251]=8'b01000000; // 64
    cosGold[ 252]=8'b01000000; // 64
    cosGold[ 253]=8'b01000000; // 64
    cosGold[ 254]=8'b01000000; // 64
    cosGold[ 255]=8'b01000000; // 64
  end
endmodule
