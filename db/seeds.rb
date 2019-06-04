puts "destroying seeds"
Comment.destroy_all
Todo.destroy_all
User.destroy_all

puts "creating users"
u1 = User.create ({
  email: 'chris@poulpe.com',
  password: '123456',
})
u2 = User.create ({
  email: 'thomass@poulpe.com',
  password: '123456',
})
u3 = User.create ({
  email: 'karine@poulpe.com',
  password: '123456',
})


priority = ['(5) Very high', '(4) High', '(3) Medium', '(2) Low', '(1) Very Low']
all_users = User.all

puts "creating todos"
Todo.create({
  task: "Implement better AJAX",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Clean the dishes",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Learn React or Vue",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Go out for dinner",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Clean up room and kitchen",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Have fun whilst coding",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Show Poulpe all your capabilities",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Drink some/lots of beer",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Go on holiday",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Read a book",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Call mum back (20 missed calls)",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Become a comedian",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Learn how to do better miniapps",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Do 1 hour of coding",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Do 2 hours of coding",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Do 4 hours of coding",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Do 7 hours of coding",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Visit Pere Lachaise again",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Go to musee Dorsay",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Walk down la coulee verte",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Learn to write better french",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Enjoy life in Paris, despite the people",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Make Belgium great again",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Stop writing stupid todo's",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Implement sort method for table",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Add username to users",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Create a Faker for cool tasks of todo apps",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Pay rent to the landlord",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
Todo.create({
  task: "Have a baguette",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})

Todo.create({
  task: "Say thanks to Poulpe for the opportunity",
  priority: priority.sample,
  deadline: (DateTime.current + rand(0..100).days),
  user_id: all_users.sample.id
})
all_todos = Todo.all

50.times do
  Comment.create({
    content: Faker::Quote.famous_last_words,
    todo_id: all_todos.sample.id,
    user_id: all_users.sample.id
  })
end

puts "~~~~~~~~~~~~~~SUMMARY~~~~~~~~~~~~~~"
puts "Users: #{User.count}"
puts "Todos: #{Todo.count}"
puts "Comments: #{Comment.count}"
