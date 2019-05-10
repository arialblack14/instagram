alias Instagram.{Posts, Repo}

mock_photos = 8

photos_list = [
  "https://cdn-images-1.medium.com/max/1200/0*ngXgBNNdx6iiWP8q.png",
  "https://www.sematecsolucoes.com.br/wp-content/uploads/2016/01/programming.jpg",
  "http://noic.com.br/wp-content/uploads/2018/09/programming.jpg",
  "https://www.linknacional.com.br/wp-content/uploads/2016/03/wordpress-tag-cloud-2.png",
  "https://www.uwork.me/wp-content/uploads/2019/01/web_code.jpg",
  "https://novofocomunicacao.com.br/wp-content/uploads/2016/11/busca-organica-redes-sociais.jpg",
  "https://png.pngtree.com/png-vector/20190301/ourlarge/pngtree-programming-and-web-technology-vector-with-computer-illustration-png-image_755051.jpg",
  "https://crossbrowsertesting.com/blog/wp-content/uploads/2017/04/Image-01-01.png",
  "https://cdn.dribbble.com/users/788099/screenshots/4135014/programming_kit8-net.png"
]

for idx <- 0..mock_photos do
  photo = %{
    image_url: Enum.at(photos_list, idx),
    caption: Faker.Lorem.Shakespeare.hamlet()
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!()
end
