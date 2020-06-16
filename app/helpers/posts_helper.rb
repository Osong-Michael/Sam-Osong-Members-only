module PostsHelper
  def loged_user(post)
    if user_signed_in?
      post.user.name
    else
      "John Doe:"
    end
  end

  def sign_in_user
    if !user_signed_in?
      "Sign Up or Sign In to see who posted!!!"    
    end
  end

def is_current_user(post)
  if current_user == post.user
    
    link_to 'Edit', edit_post_path(post) 
    
  end
 
end

def destroy_post(post)
  if current_user == post.user  
    
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
  end
end


end
