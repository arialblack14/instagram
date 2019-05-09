defmodule InstagramWeb.Resolvers.Posts do
  alias Instagram.Posts

  def photos(_, _, _) do
    {:ok, Posts.list_photos()}
  end
end
