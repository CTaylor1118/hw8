# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(lname: "Dow", fname: "Thomas", email: "thomas@gmail.com", thumbnail: "Thomas.png");
user1.id = 1;
user1.save;

user2 = User.create(lname: "Doe", fname: "John", email: "john@gmail.com", thumbnail: "John.png");
user2.id = 2;
user2.save;

user3 = User.create(lname: "Taylor", fname: "Andrew", email: "andrew@gmail.com", thumbnail: "Andrew.png");
user3.id = 3;
user3.save;
bug1 = Bug.create(title: 'Feature request', description: 'Lorem ipsum dolor sit amet, quo et magna iusto, dicat conclusionemque quo in. Nam honestatis deterruisset ad, ea mel equidem nostrum definitionem. Tollit saperet duo in, viris omittantur mediocritatem ex sit. Duo labore nostrud ut, dicat labitur sensibus ius et, id nec nulla elitr graeci. Pri et mazim nihil utinam. Ei eam fierent elaboraret.', issue_type: 2, status: 1, priority: 0, user_id: user1.id);

bug2 = Bug.create(title: 'Bug found', description: 'His iriure hendrerit at. Legimus pertinax pri ei, ad falli laoreet qui, erroribus percipitur disputationi ei duo. Ubique doming audire ea has, vis quando molestiae consequuntur ex. Nec feugiat intellegat an, ea vis vero errem, nostrud meliore veritus in per. Vis ea oportere honestatis, sumo democritum abhorreant mea cu, quo cu fabulas detraxit explicari.', issue_type: 0, status: 0, priority: 1, user_id: user2.id);

bug3 = Bug.create(title: 'Something is broken', description: '
Et primis perfecto mel. Fugit euripidis consequuntur ut sed. Sed quem nobis dignissim in, nec ne eripuit periculis, ex liber equidem ponderum qui. Eam vivendo fastidii assueverit ne, mei ut dictas liberavisse voluptatibus. Qui id dicit homero doctus, at vix exerci argumentum reformidans, eu discere epicurei inciderint duo. Vel et nullam verear, etiam alterum definiebas ut cum.', issue_type: 1, status: 2, priority: 2, user_id: user3.id);