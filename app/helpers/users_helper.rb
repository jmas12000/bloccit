module UsersHelper
  def current_user_post(user)
    user ||= Post.find_by(id: session[:user])
  end
  def user_has_post?(user)
    user.posts != nil
  end
  
  def user_has_comment?(user)
   user && (user.comments != nil )
  end  
end
