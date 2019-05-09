defmodule InstagramWeb.Resolvers.Posts do
  alias InstagramWeb.Posts

  def photos(_, _, _) do
    {:ok, Posts.list_photos()}
  end
end
