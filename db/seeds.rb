require 'random_data'

50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all
 
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Number of posts: #{Post.count}"
Post.find_or_create_by(title: "The only on of this title", body: "Test body")
puts "Number of posts after method: #{Post.count}"
 
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
