10.times do |i|
  Blog.create!(
    title: "Blog No #{i+1}",
    source: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lorem ex, sodales eu nisi nec, fringilla tempor sapien. Nullam pulvinar sodales dolor, et elementum tellus. ",
    body: "Cras eget arcu pulvinar turpis posuere eleifend a quis tellus. Pellentesque euismod non enim eu aliquet. Duis ultrices sed arcu ac faucibus. Nulla malesuada lorem mauris, a placerat lacus laoreet ultricies. Quisque vel mattis elit. Maecenas condimentum vel enim et fringilla. Pellentesque pellentesque, enim eu imperdiet pharetra, metus eros auctor diam, a ullamcorper magna turpis malesuada ipsum. Integer ut dictum magna. Pellentesque ac est nibh. Aliquam nec pretium orci. Mauris porttitor tortor tellus. Donec dapibus faucibus luctus. Morbi ligula mauris, sodales sit amet dapibus eget, malesuada ut lorem. Nam eget tristique arcu."
  )
end
5.times do |s|
  Skill.create!(
  title: "Ruby on Rails",
  badge: "http://via.placeholder.com/100x150",
  percent: 70
  )
end
6.times do |t|
  Portfolio.create!(
    title: "Portfolio #{t+1}",
    subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lorem ex, sodales eu nisi nec, fringilla tempor sapien. Nullam pulvinar sodales dolor, et elementum tellus.",
    body: "Cras eget arcu pulvinar turpis posuere eleifend a quis tellus. Pellentesque euismod non enim eu aliquet. Duis ultrices sed arcu ac faucibus. Nulla malesuada lorem mauris, a placerat lacus laoreet ultricies. Quisque vel mattis elit. Maecenas condimentum vel enim et fringilla. Pellentesque pellentesque, enim eu imperdiet pharetra, metus eros auctor diam, a ullamcorper magna turpis malesuada ipsum. Integer ut dictum magna. ",
    main_img: "http://via.placeholder.com/600x400",
    thumb_img: "http://via.placeholder.com/350x200"
  )
end
10.times do |m|
  Memo.create!(
    title: "#{m+1} How-to",
    body: "Cras eget arcu pulvinar turpis posuere eleifend a quis tellus. Pellentesque euismod non enim eu aliquet. Duis ultrices sed arcu ac faucibus. Nulla malesuada lorem mauris, a placerat lacus laoreet ultricies. Quisque vel mattis elit. Maecenas condimentum vel enim et fringilla. Pellentesque pellentesque, enim eu imperdiet pharetra, metus eros auctor diam, a ullamcorper magna turpis malesuada ipsum. Integer ut dictum magna. Pellentesque ac est nibh. Aliquam nec pretium orci. Mauris porttitor tortor tellus. Donec dapibus faucibus luctus. Morbi ligula mauris, sodales sit amet dapibus eget, malesuada ut lorem. Nam eget tristique arcu."
  )
end
