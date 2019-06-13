const styleTodoDone = () => {
  const todoItems = Array.from(document.querySelectorAll('.todo'))
  todoItems.forEach((todo) => {
    if (todo.querySelector('#todo_done').value == "false") {
      todo.classList.add('todo-done');
    }
  });
};

styleTodoDone();

