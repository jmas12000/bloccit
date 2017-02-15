class FavoriteMailer < ApplicationMailer
  default from: "jmas1_2000@hotmail.com"
  
  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@shielded-temple-33287.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@shielded-temple-33287.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@shielded-temple-33287.herokuapp.com>"
 
    @user = user
    @post = post
    @comment = comment
 
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
  
  def new_post(post) 
    headers["Message-ID"] = "<posts/#{post.id}@shielded-temple-33287.herokuapp.com>"
    headers["In-Reply-To"] = "<posts/#{post.id}@shielded-temple-33287.herokuapp.com>"
    headers["References"] = "<posts/#{post.id}@shielded-temple-33287.herokuapp.com>"
 
    @post = post
 
    mail(to: post.user.email, subject: "New favorite on #{post.title}")
  end
end
