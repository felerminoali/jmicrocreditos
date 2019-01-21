/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){

    $('.funcionario').hide();
    $('.comerciante').hide();
    $('.creditoPenhor').hide();

    $('#destino').change(function(){
        validar_credito($(this).val());
    });

});

function validar_credito(v){

    if(v == 1){
        $('.funcionario').show('slow');
        $('.comerciante').hide();
        $('.creditoPenhor').hide();
    }

    if(v == 2){
        $('.comerciante').show('slow');
        $('.funcionario').hide();
        $('.creditoPenhor').hide();
    }
    if (v == 3){
        $('.creditoPenhor').show('slow');
        $('.funcionario').hide();
        $('.comerciante').hide();
    }
}






