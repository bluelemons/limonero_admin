//= require jquery.tokeninput
$ ->
  $('#contrato_compradores_tokens').
    tokenInput '/admin/people.json',
      queryParam: 'q[name_like]'
      crossDomain: false
      prePopulate: $('#admin_lote_compradores_tokens').data('pre')
      searchingText: 'Buscando...'
      hintText: 'Ingrese el nombre de la persona que desea incluir'
      noResultsText: "No existe este persona"
