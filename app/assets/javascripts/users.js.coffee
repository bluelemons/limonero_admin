//= require jquery.tokeninput
$ ->
  $('#admin_user_roles_tokens').
    tokenInput '/admin/roles.json',
      queryParam: 'search[name_like]'
      crossDomain: false
      prePopulate: $('#admin_user_roles_tokens').data('pre')
      searchingText: 'Buscando...'
      hintText: 'Ingrese los roles que desea incluir'
      noResultsText: "Esta persona no está registrada"
