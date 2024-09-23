'use strict';
let id=1;
let c="A";
for(let f=1; f<=15; ++f)
{
    for(let p=1; p<=4; ++p)
    {
        if(p==1) c="A";
        else if(p==2) c="B";
        else if(p==3) c="C";
        else if(p==4) c="D";
        else if(p==5) c="E";
        else if(p==6) c="F";
        console.log(`INSERT INTO "posti" VALUES (${id},${f},'${c}','locale',0,0);`)
        ++id;
    }
}

for(let f=1; f<=20; ++f)
{
    for(let p=1; p<=5; ++p)
    {
        if(p==1) c="A";
        else if(p==2) c="B";
        else if(p==3) c="C";
        else if(p==4) c="D";
        else if(p==5) c="E";
        else if(p==6) c="F";
        console.log(`INSERT INTO "posti" VALUES (${id},${f},'${c}','regionale',0,0);`)
        ++id;
    }
}


for(let f=1; f<=25; ++f)
{
    for(let p=1; p<=6; ++p)
    {
        if(p==1) c="A";
        else if(p==2) c="B";
        else if(p==3) c="C";
        else if(p==4) c="D";
        else if(p==5) c="E";
        else if(p==6) c="F";
        console.log(`INSERT INTO "posti" VALUES (${id},${f},'${c}','internazionale',0,0);`)
        ++id;
    }
}