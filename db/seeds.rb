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

Post.find_or_create_by!(title: "The only one with this title", body: "Test body")
Post.find_or_create_by!(title: "The only one with this title").comments.find_or_create_by!(body: "Unique comments body")
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
