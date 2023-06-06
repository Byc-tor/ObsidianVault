---
<%*
let x="";let tipo="";let tema="";let materia = "" ;let len="lenguaje: ";
const languages = {
    "Programacion ": "Programacion",
    "Redes ": "Redes",
    "Estructura  ": "Estructura "
}
lang = await tp.system.suggester(Object.keys(languages),Object.values(languages)) 
if (lang) {
    materia=lang;  
    if(materia=="Programacion"){
        x+= await tp.system.suggester(["Python" , "Java" , "JS", "C" ,"C++", "Bash" ],["Python" , "Java" , "JS", "C" ,"C++", "Bash" ]);
        len+=x;
    }
} 
tema= await tp.system.prompt("TEMA");
tp.file.rename(materia+"_"+tema);
tR+="" 
%>
materia: <%* tR += materia %>
<%* tR += len %>
alias: <%* tR += materia %>_<%* tR += tema %>
tags: 
    -  <%* tR += materia %>/<%* tR += tema %>
    - <%* tR += materia %>/<%* tR += x%>
---

# << <%* tR += tema %> >>
