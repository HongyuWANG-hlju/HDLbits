module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    assign p1y = ( p1a & p1b & p1c ) | ( p1e & p1d & p1f );
    assign p2y = ( p2a & p2b ) | ( p2c & p2d );

endmodule

------------------------------------------------------------------------------------------------

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire o1,o2,o3,o4;
    
    assign o1 = ( p1a & p1b & p1c );
    assign o2 = ( p1e & p1d & p1f );
    assign o3 = ( p2a & p2b );
    assign o4 = ( p2c & p2d );
    assign p1y = o1 | o2;
    assign p2y = o3 | o4;

endmodule
