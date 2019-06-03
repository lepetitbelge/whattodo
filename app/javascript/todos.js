const sendNewTodoForm = (new_todo_form) => {
  const action = new_todo_form.attributes.action.value
  const method = new_todo_form.method
  console.log('action: ',action)
  console.log('method: ',method)

  const task = document.querySelector('#form-task-text').value
  const priority = document.querySelector('#form-priority-select').value
  const user = document.querySelector('#todo_user_id').value

  const year = document.querySelector('#todo_deadline_1i').value
  const month = document.querySelector('#todo_deadline_2i').value
  const day = document.querySelector('#todo_deadline_3i').value
  const date = `${day}-${month}-${year}`

  $.ajax({
    method: method,
    url: action,
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
  const action = edit_done_form.attributes.action.value
  const method = edit_done_form.method
  const value = edit_done_form.querySelector('#todo_done').value;

  $.ajax({
    method: method,
    url: action,
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

$(function(){
  $('form#new_todo').submit(function(event){
    event.preventDefault();
    sendNewTodoForm(this);
  });
  $('form.edit_todo').submit(function(event){
    event.preventDefault();
    updateDone(this);
  });
});
