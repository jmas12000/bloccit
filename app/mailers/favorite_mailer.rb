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
end
