const styleTodoDone = () => {
  const todoItems = Array.from(document.querySelectorAll('.todo'))
  todoItems.forEach((todo) => {
    if (todo.querySelector('#todo_done').value == "false") {
      todo.classList.add('todo-done');
    }
  });
};

const sendNewTodoForm = (new_todo_form) => {
  const url = new_todo_form.attributes.action.value;
  const method = new_todo_form.method;
  console.log('url: ',url)
  console.log('method: ',method)

  const task = document.querySelector('#form-task-text').value;
  const priority = document.querySelector('#form-priority-select').value;
  const user = document.querySelector('#todo_user_id').value;

  const year = document.querySelector('#todo_deadline_1i').value;
  const month = document.querySelector('#todo_deadline_2i').value;
  const day = document.querySelector('#todo_deadline_3i').value;
  const date = `${day}-${month}-${year}`

  $.ajax({
    method: method,
    url: url,
    data: { todo: {task: task, priority: priority, user_id: user, deadline: date} }
  }).done(function(data) {
      location.reload();
    })
    .fail(function(xhr, status, error) {
    //Ajax request failed.
    var errorMessage = xhr.status + ': ' + xhr.statusText
    alert('Error - ' + errorMessage);
    });
};

const updateDone = (edit_done_form) => {
  const url = edit_done_form.attributes.action.value;
  const method = edit_done_form.method;
  const value = edit_done_form.querySelector('#todo_done').value;

  $.ajax({
    method: method,
    url: url,
    data: { todo: {done: value}, _method: 'PATCH' }
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
  $('form#new_todo').submit(function(event){
    event.preventDefault();
    sendNewTodoForm(this);
  });
  $('form.edit_todo').submit(function(event){
    event.preventDefault();
    updateDone(this);
  });
  // THIS CODE IS SUPPOSED TO AJAX DELETE FUNCTION -> DOES NOT WORK, BUT CLOSE
  // const linkDeleteTodo = Array.from(document.querySelectorAll('.delete_todo'))
  // linkDeleteTodo.forEach((link) => {
  //   deleteTodo(link);
  // });
});


