u = User.new
u.email = 'admin@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.is_admin = true
u.save

# Intro1-15

create_intro = for i in 1..15 do
                   Intro.create!([
                                     link: '#'
                                 ])
end

# 视频
Video.create!(
    name: '无线的视频介绍'
)

Video.create!(
    name: '网络的视频介绍'
)

# footer 文章
create_footer_post = for i in 1..3 do
                         Post.create!([
                                          title: '服务',
                                          description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                          is_hidden: false,
                                          category: '服务'
                                      ])
end

create_footer_post = for i in 4..5 do
                         Post.create!([
                                          title: '关于我们',
                                          description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                          is_hidden: false,
                                          category: '关于我们'
                                      ])
end

create_footer_post = for i in 6..7 do
                         Post.create!([
                                          title: '招商合作',
                                          description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                          is_hidden: false,
                                          category: '招商合作'
                                      ])
end
# 方案
Post.create!(
    title: '无线上网解决方案',
    description: '111',
    category: '方案',
    subcate: '无线1',
    is_hidden: false

)

Post.create!(
    title: '酒店网络解决方案',
    description: '111',
    category: '方案',
    is_hidden: false
)

Post.create!(
    title: '学校解决方案',
    description: '111',
    category: '方案',
    is_hidden: false
)

# 无线知识跟网络知识

post_category = %w(
    无线知识
    网络知识
)

subcate = %w(
    无线1
    无线2
    无线3
    无线4
    无线5
    网络1
    网络2
    网络3
    网络4
    网络5
)

create_post1 = for i in 1..10 do
                   Post.create!([title: "Post no.#{i}",
                                 description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                 is_hidden: false,
                                 category: post_category[0],
                                 subcate: subcate[rand(0..4)]])
end

create_post2 = for i in 1..10 do
                   Post.create!([title: "Post no.#{i}",
                                 description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                 is_hidden: false,
                                 category: post_category[1],
                                 subcate: subcate[rand(5..9)]])
end

# 产品

create_productaw = for i in 1..3 do
                       Product.create!([title: "Product AW no.#{i}",
                                        description: "这是用seeds文件建立的第 #{i} 个公开的AW产品",
                                        quantity: 999,
                                        price: rand(6..10) * 100,
                                        category: 'AW网桥',
                                        is_hidden: false,
                                        slogan: "标语 #{i} ",
                                        feature: "特点#{i}"])

end

create_productaw = for i in 1..3 do
                       Product.create!([title: "Product CW no.#{i}",
                                        description: "这是用seeds文件建立的第 #{i} 个公开的CW产品",
                                        quantity: 999,
                                        price: rand(6..10) * 100,
                                        category: 'CW无线路由器',
                                        is_hidden: false,
                                        slogan: "标语 #{i} ",
                                        feature: "特点#{i}"])

end

create_productsw = for i in 1..3 do
                       Product.create!([title: "Product SW no.#{i}",
                                        description: "这是用seeds文件建立的第 #{i} 个公开的SW产品",
                                        quantity: 999,
                                        price: rand(6..10) * 100,
                                        category: 'SW交换机',
                                        is_hidden: false,
                                        slogan: "标语 #{i} ",
                                        feature: "特点#{i}"])

end
