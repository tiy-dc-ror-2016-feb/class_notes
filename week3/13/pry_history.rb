"Bo Butcher".split
"Bo Butcher III".split
"John Qunicy Adams".split
"John Qunicy Adams".split.last
"John Qunicy Adams".split.first
"John Qunicy Adams".split.pop
name_array = "John Qunicy Adams".split
name_array.pop
name_array.join(" ")
exit
"John Qunicy Adams".split[0..-1]
"John Qunicy Adams".split[0..-2]
"deaad".split[0..-2]
exit
[1,2,3,4].min
exit
Date.now
Date.current
Date.new
DateTime.new
Time.now
exit
Student
ls Student
Student.new(name: "Bo")
bo = _
ls bo 
bo.save
bo.no_touching?
mike = Student.create(name: "Mike")
mike.new_record?
mike
mike.name 
mike.name = "Studnet"
mike.changes
mike.save
mike.name = "Mike"
mike.save
Pick.new
exit!
Pick.new
exit
Pick.new
Pick.create
p = _
p
p.update(student_id: 1, picked_at: Time.now)
Student.all
Student.first
Student.last
Student.create(name: "Nadia")
Student.create(name: "Sam")
Student.create(name: "Steve")
Student.all.size
Student.count
Student.first
Student.last
Student.find(4)
Student.find(4).to_sql
Student.find_by_name("Mike")
Student.where(name: "Mike")
Student.where(name: "Mike").first
Student.where(name: "Mike").to_sql
Student.create(name: "Mike")
Student.where(name: "Mike")
Student.where(name: "Mike").count
Student.where(name: "Mike").order
Student.where(name: "Mike").order(:id)
Student.where(name: "Mike").order(:id, :desc)
Student.where(name: "Mike").order(:id, :desc).to_a
Student.where(name: "Mike").order("id DESC").to_a
Student.order("name DESC")
Student.order("name DESC").count
Student.order(name: :desc)
Student.order(name: :desc, id: :asc)
Student.where(id: 6)
Student.where(id: 6).first
Student.find(6)
Student.find(6).update(name: "EvilMike")
Student.find(6)
evil_mike = Student.find(6)
evil_mike.destroy
evil_mike = Student.find(6)
Student.where(id: 6).first
Student.where(id: 6)
Pick.new
Student.where(id: 3)
Student.where(id: 3).first
nadia = _
naida.id
nadia = _
nadia.id
exit
nadia = Student.find(3)
ls nadia
nadia.pick!
exit
nadia.pick!
nadia = Student.find(3)
nadia.pick!
Pick.all
Pick.where(student_id: 3)
Pick.where(student_id: 3).count
Pick.where(student_id: 3).to_sql
nadia
nadia.picks
exit
Student.first
Student.first.picks
exit
nadia = Student.find(3)
nadia.picks
Pick.first.student
Pick.first.student_id
exit
Pick.first.student_id
Pick.first.student
Pick.first.student.picks
exit

