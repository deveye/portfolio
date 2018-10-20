# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
			title: "Topic #{topic}"
		)
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis 
		praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias 
		excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
		 officia deserunt mollitia animi, id est laborum et dolorum fuga. 
		 Et harum quidem rerum facilis est et expedita distinctio. 
		 Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
		 impedit quo minus id quod maxime placeat facere possimus, omnis voluptas 
		 assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut 
		 officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates 
		 repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur 
		 a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut
		  perferendis doloribus asperiores repellat.",
	  topic_id: Topic.last.id
	)
end

puts "10 blog posts created!"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		skill_percent: 20
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio item #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
		 impedit quo minus id quod maxime placeat facere possimus, omnis voluptas 
		 assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut 
		 officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates 
		 repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur 
		 a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut
		  perferendis doloribus asperiores repellat.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/400x250"
	)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio item #{portfolio_item}",
		subtitle: "PHP",
		body: "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
		 impedit quo minus id quod maxime placeat facere possimus, omnis voluptas 
		 assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut 
		 officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates 
		 repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur 
		 a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut
		  perferendis doloribus asperiores repellat.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/400x250"
	)
end

puts "9 portfolio items created!"

3.times do |technology|
	Portfolio.last.technologies.create!(
			name: "Technology #{}"
		)
end

puts "3 technologies created!"