FILE = "somma.res";
DeleteFile[FILE]; OpenWrite[FILE];
a = 5;
b = 5;
c = a+b;
WriteString[FILE,"somma=\n"]; Write[FILE,c];
