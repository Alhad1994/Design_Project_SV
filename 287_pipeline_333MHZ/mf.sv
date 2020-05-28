// EE287 S'20 HW1 code



module mf(input clk,reset,
        input pushin,
        input signed [31:0] din00,
        input signed [31:0] din01,
        input signed [31:0] din02,
        input signed [31:0] din03,
        input signed [31:0] din04,
        input signed [31:0] din05,
        input signed [31:0] din06,
        input signed [31:0] din07,
        input signed [31:0] din08,
        input signed [31:0] din09,
        input signed [31:0] din10,
        input signed [31:0] din11,
        input signed [31:0] din12,
        input signed [31:0] din13,
        input signed [31:0] din14,
        input signed [31:0] din15,
        input signed [31:0] din16,
        input signed [31:0] din17,
        input signed [31:0] din18,
        input signed [31:0] din19,
        input signed [31:0] win00,
        input signed [31:0] win01,
        input signed [31:0] win02,
        input signed [31:0] win03,
        input signed [31:0] win04,
        input signed [31:0] win05,
        input signed [31:0] win06,
        input signed [31:0] win07,
        input signed [31:0] win08,
        input signed [31:0] win09,
        input signed [31:0] win10,
        input signed [31:0] win11,
        input signed [31:0] win12,
        input signed [31:0] win13,
        input signed [31:0] win14,
        input signed [31:0] win15,
        input signed [31:0] win16,
        input signed [31:0] win17,
        input signed [31:0] win18,
        input signed [31:0] win19,
        output pushout,
        output signed [31:0] res);
    reg signed [71:0] sval,sval_d;
    reg Lpushin,Lpushout,Lpushin2,Lpushin3,Lpushin4,Lpushin5;
    reg signed [31:0] Lres,Lres_n;
    reg signed [63:0] mp00,mp00_d;
    reg signed [63:0] mp01,mp01_d;
    reg signed [63:0] mp02,mp02_d;
    reg signed [63:0] mp03,mp03_d;
    reg signed [63:0] mp04,mp04_d;
    reg signed [63:0] mp05,mp05_d;
    reg signed [63:0] mp06,mp06_d;
    reg signed [63:0] mp07,mp07_d;
    reg signed [63:0] mp08,mp08_d;
    reg signed [63:0] mp09,mp09_d;
    reg signed [63:0] mp10,mp10_d;
    reg signed [63:0] mp11,mp11_d;
    reg signed [63:0] mp12,mp12_d;
    reg signed [63:0] mp13,mp13_d;
    reg signed [63:0] mp14,mp14_d;
    reg signed [63:0] mp15,mp15_d;
    reg signed [63:0] mp16,mp16_d;
    reg signed [63:0] mp17,mp17_d;
    reg signed [63:0] mp18,mp18_d;
    reg signed [63:0] mp19,mp19_d;
    reg signed [31:0] Ldin00;
    reg signed [31:0] Ldin01;
    reg signed [31:0] Ldin02;
    reg signed [31:0] Ldin03;
    reg signed [31:0] Ldin04;
    reg signed [31:0] Ldin05;
    reg signed [31:0] Ldin06;
    reg signed [31:0] Ldin07;
    reg signed [31:0] Ldin08;
    reg signed [31:0] Ldin09;
    reg signed [31:0] Ldin10;
    reg signed [31:0] Ldin11;
    reg signed [31:0] Ldin12;
    reg signed [31:0] Ldin13;
    reg signed [31:0] Ldin14;
    reg signed [31:0] Ldin15;
    reg signed [31:0] Ldin16;
    reg signed [31:0] Ldin17;
    reg signed [31:0] Ldin18;
    reg signed [31:0] Ldin19;
    reg signed [31:0] Lwin00;
    reg signed [31:0] Lwin01;
    reg signed [31:0] Lwin02;
    reg signed [31:0] Lwin03;
    reg signed [31:0] Lwin04;
    reg signed [31:0] Lwin05;
    reg signed [31:0] Lwin06;
    reg signed [31:0] Lwin07;
    reg signed [31:0] Lwin08;
    reg signed [31:0] Lwin09;
    reg signed [31:0] Lwin10;
    reg signed [31:0] Lwin11;
    reg signed [31:0] Lwin12;
    reg signed [31:0] Lwin13;
    reg signed [31:0] Lwin14;
    reg signed [31:0] Lwin15;
    reg signed [31:0] Lwin16;
    reg signed [31:0] Lwin17;
    reg signed [31:0] Lwin18;
    reg signed [31:0] Lwin19;
    
    
    //registers for internal uses
    reg signed [71:0] add00,add00_d;
    reg signed [71:0] add01,add01_d;
    reg signed [71:0] add02,add02_d;
    reg signed [71:0] add03,add03_d;
    reg signed [71:0] add04,add04_d;
    reg signed [71:0] add05,add05_d;
    reg signed [71:0] add06,add06_d;
    
		DW02_mult_2_stage #(32,32) g1 (.A(Ldin00),.B(Lwin00),.TC(1'b1),.CLK(clk),.PRODUCT(mp00_d));
		DW02_mult_2_stage #(32,32) g2 (.A(Ldin01),.B(Lwin01),.TC(1'b1),.CLK(clk),.PRODUCT(mp01_d));
		DW02_mult_2_stage #(32,32) g3 (.A(Ldin02),.B(Lwin02),.TC(1'b1),.CLK(clk),.PRODUCT(mp02_d));
		DW02_mult_2_stage #(32,32) g4 (.A(Ldin03),.B(Lwin03),.TC(1'b1),.CLK(clk),.PRODUCT(mp03_d));
		DW02_mult_2_stage #(32,32) g5 (.A(Ldin04),.B(Lwin04),.TC(1'b1),.CLK(clk),.PRODUCT(mp04_d));
		DW02_mult_2_stage #(32,32) g6 (.A(Ldin05),.B(Lwin05),.TC(1'b1),.CLK(clk),.PRODUCT(mp05_d));
		DW02_mult_2_stage #(32,32) g7 (.A(Ldin06),.B(Lwin06),.TC(1'b1),.CLK(clk),.PRODUCT(mp06_d));
		DW02_mult_2_stage #(32,32) g8 (.A(Ldin07),.B(Lwin07),.TC(1'b1),.CLK(clk),.PRODUCT(mp07_d));
		DW02_mult_2_stage #(32,32) g9 (.A(Ldin08),.B(Lwin08),.TC(1'b1),.CLK(clk),.PRODUCT(mp08_d));
		DW02_mult_2_stage #(32,32) g10 (.A(Ldin09),.B(Lwin09),.TC(1'b1),.CLK(clk),.PRODUCT(mp09_d));
		DW02_mult_2_stage #(32,32) g11 (.A(Ldin10),.B(Lwin10),.TC(1'b1),.CLK(clk),.PRODUCT(mp10_d));
		DW02_mult_2_stage #(32,32) g12 (.A(Ldin11),.B(Lwin11),.TC(1'b1),.CLK(clk),.PRODUCT(mp11_d));
		DW02_mult_2_stage #(32,32) g13 (.A(Ldin12),.B(Lwin12),.TC(1'b1),.CLK(clk),.PRODUCT(mp12_d));
		DW02_mult_2_stage #(32,32) g14 (.A(Ldin13),.B(Lwin13),.TC(1'b1),.CLK(clk),.PRODUCT(mp13_d));
		DW02_mult_2_stage #(32,32) g15 (.A(Ldin14),.B(Lwin14),.TC(1'b1),.CLK(clk),.PRODUCT(mp14_d));
		DW02_mult_2_stage #(32,32) g16 (.A(Ldin15),.B(Lwin15),.TC(1'b1),.CLK(clk),.PRODUCT(mp15_d));
		DW02_mult_2_stage #(32,32) g17 (.A(Ldin16),.B(Lwin16),.TC(1'b1),.CLK(clk),.PRODUCT(mp16_d));
		DW02_mult_2_stage #(32,32) g18 (.A(Ldin17),.B(Lwin17),.TC(1'b1),.CLK(clk),.PRODUCT(mp17_d));
		DW02_mult_2_stage #(32,32) g19 (.A(Ldin18),.B(Lwin18),.TC(1'b1),.CLK(clk),.PRODUCT(mp18_d));
		DW02_mult_2_stage #(32,32) g20 (.A(Ldin19),.B(Lwin19),.TC(1'b1),.CLK(clk),.PRODUCT(mp19_d));

        assign pushout=Lpushout;
        assign res=Lres;
    always @(*) begin

        //Pipeline stage 3
	add00_d = mp00+mp01+mp02+mp03;
	add01_d = mp04+mp05+mp06+mp07;
	add02_d = mp08+mp09+mp10+mp11;
	add03_d = mp12+mp13+mp14+mp15;
	add04_d = mp16+mp17+mp18+mp19;
	
	//Pipeline stage 4
	add05_d = add00 + add01;
	add06_d = add02 + add03 + add04;
	
	sval = add05 + add06;
	
	//shift operation
	Lres = sval >> 35;
	//$display (" sval=%b",sval);
	
   
    end
    always @(posedge(clk) or posedge(reset)) begin
        if(reset) begin
            Ldin00<=0;
            Ldin01<=0;
            Ldin02<=0;
            Ldin03<=0;
            Ldin04<=0;
            Ldin05<=0;
            Ldin06<=0;
            Ldin07<=0;
            Ldin08<=0;
            Ldin09<=0;
            Ldin10<=0;
            Ldin11<=0;
            Ldin12<=0;
            Ldin13<=0;
            Ldin14<=0;
            Ldin15<=0;
            Ldin16<=0;
            Ldin17<=0;
            Ldin18<=0;
            Ldin19<=0;
            Lwin00<=0;
            Lwin01<=0;
            Lwin02<=0;
            Lwin03<=0;
            Lwin04<=0;
            Lwin05<=0;
            Lwin06<=0;
            Lwin07<=0;
            Lwin08<=0;
            Lwin09<=0;
            Lwin10<=0;
            Lwin11<=0;
            Lwin12<=0;
            Lwin13<=0;
            Lwin14<=0;
            Lwin15<=0;
            Lwin16<=0;
            Lwin17<=0;
            Lwin18<=0;
            Lwin19<=0;
            Lpushin<=0;
            Lpushout <= 0;
            Lres_n<=0;
            Lpushin2 <=0;
            Lpushin3 <=0;
            Lpushin4 <=0;
            Lpushin5 <=0;
            add00 <= 0;
            add01 <= 0;
            add02 <=0;
            add03 <=0;
            add04 <=0;
            add05 <=0;
            add06 <=0;
            mp00 <=0;
            mp01 <=0;
            mp02 <=0;
            mp03 <=0;
            mp04 <=0;
            mp05 <=0;
            mp06 <=0;
            mp07 <=0;
            mp08 <=0;
            mp09 <=0;
            mp10 <=0;
            mp11 <=0;
            mp12 <=0;
            mp13 <=0;
            mp14 <=0;
            mp15 <=0;
            mp16 <=0;
            mp17 <=0;
            mp18 <=0;
            mp19 <=0;
            sval <=0;
            
            
        end else begin
            Ldin00<= #1 din00;
            Ldin01<= #1 din01;
            Ldin02<= #1 din02;
            Ldin03<= #1 din03;
            Ldin04<= #1 din04;
            Ldin05<= #1 din05;
            Ldin06<= #1 din06;
            Ldin07<= #1 din07;
            Ldin08<= #1 din08;
            Ldin09<= #1 din09;
            Ldin10<= #1 din10;
            Ldin11<= #1 din11;
            Ldin12<= #1 din12;
            Ldin13<= #1 din13;
            Ldin14<= #1 din14;
            Ldin15<= #1 din15;
            Ldin16<= #1 din16;
            Ldin17<= #1 din17;
            Ldin18<= #1 din18;
            Ldin19<= #1 din19;
            Lwin00<= #1 win00;
            Lwin01<= #1 win01;
            Lwin02<= #1 win02;
            Lwin03<= #1 win03;
            Lwin04<= #1 win04;
            Lwin05<= #1 win05;
            Lwin06<= #1 win06;
            Lwin07<= #1 win07;
            Lwin08<= #1 win08;
            Lwin09<= #1 win09;
            Lwin10<= #1 win10;
            Lwin11<= #1 win11;
            Lwin12<= #1 win12;
            Lwin13<= #1 win13;
            Lwin14<= #1 win14;
            Lwin15<= #1 win15;
            Lwin16<= #1 win16;
            Lwin17<= #1 win17;
            Lwin18<= #1 win18;
            Lwin19<= #1 win19;
	    Lres_n <= #1 Lres;
            add00 <= #1 add00_d;
            add01 <= #1 add01_d;
            add02 <= #1 add02_d;
            add03 <= #1 add03_d;
            add04 <= #1 add04_d;
            add05 <= #1 add05_d;
            add06 <= #1 add06_d;
            mp00 <= #1 mp00_d;
            mp01 <= #1 mp01_d;
            mp02 <= #1 mp02_d;
            mp03 <= #1 mp03_d;
            mp04 <= #1 mp04_d;
            mp05 <= #1 mp05_d;
            mp06 <= #1 mp06_d;
            mp07 <= #1 mp07_d;
            mp08 <= #1 mp08_d;
            mp09 <= #1 mp09_d;
            mp10 <= #1 mp10_d;
            mp11 <= #1 mp11_d;
            mp12 <= #1 mp12_d;
            mp13 <= #1 mp13_d;
            mp14 <= #1 mp14_d;
            mp15 <= #1 mp15_d;
            mp16 <= #1 mp16_d;
            mp17 <= #1 mp17_d;
            mp18 <= #1 mp18_d;
            mp19 <= #1 mp19_d;
            
            
            Lpushin4 <= #1 pushin;
            Lpushin3 <= #1 Lpushin4;
            Lpushin2 <= #1 Lpushin3;
            Lpushin <= #1 Lpushin2;
            Lpushout <= #1 Lpushin;
            
            
        end
    end // posedge(clk)

endmodule 
