const styleTodoDone = () => {
  const todoItems = Array.from(document.querySelectorAll('.todo'))
  todoItems.forEach((todo) => {
    if (todo.querySelector('#todo_done').value == "false") {
      todo.classList.add('todo-done');
    }
  });
};

const updateDone = (edit_done_form) => {
  const url = edit_done_form.attributes.action.value;
  const method = edit_done_form.method;
  const data = $(edit_done_form).serializeArray();

  $.ajax({
    method: method,
    url: url,
    data: data,
    dataType: 'script'
  }).done(function(data) {
      console.log(data);
      location.reload();
    })
    .fail(function(xhr, status, error) {
    //Ajax request failed.
    var errorMessage = xhr.status + ': ' + xhr.statusText
    alert('Error - ' + errorMessage);
    });
};

const deleteTodo = (link) => {
  link.addEventListener('click', (event) => {
    event.stopPropagation();
    event.preventDefault();
    const method = link.id
    const url = link.attributes['href'].value;

    $.ajax({
      type: method,
      url: url
    }).done(function(data) {
      console.log("we're here bebee")
      location.reload();
    }).fail(function(xhr, status, error) {
    //Ajax request failed.
      const errorMessage = xhr.status + ': ' + xhr.statusText
      alert('Error - ' + errorMessage);
    });
  });
};

$(function(){
  styleTodoDone();

  $('form.edit_todo').submit(function(event){
    event.preventDefault();
    updateDone(this);
  });
});

