function validar(){

if (document.formulario.valor.value < 1000 && value > 100000){
alert("Só aceitamos empréstimos num valo mínimo de 1000 e máximo 100.000");
        document.formulario.valor.focus();
        return false;
}
if (document.formulario.valor.value > 100000){
alert("Só aceitamos empréstimos num valo mínimo de 1000 e máximo 100.000");
        document.formulario.valor.focus();
        return false;
}

}