//文件名:counter.v
module counter(clk,reset,start,out);
//mod10计数器输入十进制0-9数码
input clk;//时钟信号，上升沿时输出+1
input reset;//复位信号(置0)
input start;//开始计数
output reg [3:0] out;//计数器输出(8421BCD)
always @(posedge clk or posedge reset) //遇到上升沿或复位信号
begin
    if (reset)
        out <= 4'b0000;//set q=4'b0000
    else if(start) //start valid
    begin
        if(out==4'b1001)
            out <=4'b0000;//计数9时，次态为0
        else
            out<=out+4'b0001;//计数0-8时，输出加1
    end
end
endmodule
