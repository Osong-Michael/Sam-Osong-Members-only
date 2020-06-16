module PostsHelper
  def loged_user(post)
    if user_signed_in?
      post.user.name
    else
      'John Doe:'
    end
  end

  def sign_in_user
    'Sign Up or Sign In to see who posted!!!' unless user_signed_in?
  end

  def is_current_user(post) # rubocop:disable Naming/PredicateName
    link_to 'Edit', edit_post_path(post) if current_user == post.user
  end

  def destroy_post(post)
    link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } if current_user == post.user
  end
end
