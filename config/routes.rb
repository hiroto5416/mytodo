Rails.application.routes.draw do
  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#addTodo'
  delete 'todos/:id', to: 'todos#deleteTodo'
 end