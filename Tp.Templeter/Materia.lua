---
<%*
let titulo="";let materia="";let tema="";
const languages = {
	"Calculo ": "Calculo",
	"Geometria ": "Geometria",
	"Lineal ": "Lineal",
	"Programacion ": "Programacion",
	"Redes ": "Redes",
	"Programacion  ": "Programacion "
}
lang =await tp.system.suggester(Object.keys(languages),Object.values(languages)) 
if (lang) {
	materia=lang;  
	if(materia=="Calculo"){
		materia+= await tp.system.prompt("Grado");
	}
	tema= await tp.system.prompt("TEMA GENERAL");
	titulo= await tp.system.prompt("tituloDeNota");
} 
tp.file.rename(tema+"_"+titulo)

tR+="" 
%>
title: <%* tR += titulo %>
materia: <%* tR += materia %>
tags: <%* tR += materia %>/<%* tR += tema %>/<%* tR += titulo %>
---

# << <%* tR += titulo %> >>
