module display(clk,num,reset,out);
input clk;//时钟信号
input [3:0] num;//输入十进制数码的8码
input reset;//复位信号(置0)
output reg [6:0] out;//输出七段数码管对应的7位信号
always @(posedge clk or posedge reset)
begin
    if(reset)
        out<=7'b1111110;//收到复位信号，数码管输出置0
    else
    begin
        case(num) //将0-9九个数译成对应的七段数码管取值
            4'b0000:
                out <= 7'b1111110;
            4'b0001:
                out <= 7'b0110000;
            4'b0010:
                out <= 7'b1101101;
            4'b0011:
                out <= 7'b1111001;
            4'b0100:
                out <= 7'b0110011;
            4'b0101:
                out <= 7'b1011011;
            4'b0110:
                out <= 7'b1011111;
            4'b0111:
                out <= 7'b1110000;
            4'b1000:
                out <= 7'b1111111;
            4'b1001:
                out <= 7'b1111011;
            4'b1010:
                out <= 7'b0001110; //L
            4'b1011:
                out <= 7'b1001110;  //C
            4'b1100:
                out <= 7'b0000000;  //无
            4'b1101:
                out <= 7'b1100111;  //P
            4'b1110:
                out <= 7'b1110110;  //N
            4'b1111:
                out <= 7'b1110111;  //A
        endcase
    end
end
endmodule
