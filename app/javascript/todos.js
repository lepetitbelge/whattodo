$(function(){
  $("form#new_todo").submit(function(event){
    event.preventDefault();

    const action = this.attributes.action.value
    const method = this.method

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
  });
});
