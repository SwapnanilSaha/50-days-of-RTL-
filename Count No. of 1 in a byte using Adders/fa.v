module fa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2;
ha h1(.a(a),.b(b),.sum(w1),.carry(w2));
ha h2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or a1(cout,w2,w3);
endmodule
