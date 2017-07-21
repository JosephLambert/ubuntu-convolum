u = User.new
u.email = 'admin@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.is_admin = true
u.save

# intro1
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww4.sinaimg.cn/large/006tKfTcly1fhqp3susrfj313l0jhk8w.jpg')
)

# intro2
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrl8p4cm3j30eq07ignd.jpg')
)

# intro3
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrl902dusj30eq07ita4.jpg')
)

# intro4
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrl9ab3vaj30eq07i79w.jpg')
)

# intro5
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww3.sinaimg.cn/large/006tKfTcly1fhrl9itkmkj30g307odgy.jpg')
)

# intro6
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww4.sinaimg.cn/large/006tKfTcly1fhrl9uvhh6j30g307oab8.jpg')
)

# intro7
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww4.sinaimg.cn/large/006tKfTcly1fhrla49nrej30860g4jsb.jpg')
)

# intro8
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww4.sinaimg.cn/large/006tKfTcly1fhrlae3e0ij30c706d0uq.jpg')
)

# intro9
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrlan1fdgj30c706dtbd.jpg')
)

# intro10
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww2.sinaimg.cn/large/006tKfTcly1fhrlaxxy28j30cx09btdd.jpg')
)

# intro11
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrlb7fhl3j30g307odky.jpg')
)

# intro12
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww3.sinaimg.cn/large/006tKfTcly1fhrlbl9wauj30g307on0l.jpg')
)

# intro13
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrlbwdrd2j30860g476l.jpg')
)

# intro14
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww4.sinaimg.cn/large/006tKfTcly1fhrlc7dg3rj30g307odky.jpg')
)

# intro15
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww1.sinaimg.cn/large/006tKfTcly1fhrlcngssmj30g307on0l.jpg')
)

# intro16
Intro.create!(
    link: '/plansintroduction/posts',
    image: open('https://ww3.sinaimg.cn/large/006tKfTcly1fhrlcxiapyj30860g476l.jpg')
)

# 视频
Video.create!(
    name: '无线的视频介绍'
)

Video.create!(
    name: '网络的视频介绍'
)
# 方案
Post.create!(
    title: '无线上网解决方案',
    description: '111',
    category: '方案',
    subcate: '无线1',
    is_hidden: false,
    slogan: '汇聚专业知识，快速帮你找到解决方案',
    postpic: open('https://ww2.sinaimg.cn/large/006tKfTcly1fhrlld5xuvj30by04qgo2.jpg')
)

Post.create!(
    title: '酒店网络解决方案',
    description: '111',
    category: '方案',

    is_hidden: false,
    slogan: '汇聚专业知识，快速帮你找到解决方案',
    postpic: open('https://ww3.sinaimg.cn/large/006tKfTcly1fhrlm9of0sj30by04qdhr.jpg')
)

Post.create!(
    title: '学校解决方案',
    description: '111',
    category: '方案',

    is_hidden: false,
    slogan: '汇聚专业知识，快速帮你找到解决方案',
    postpic: open('https://ww2.sinaimg.cn/large/006tKfTcly1fhrlmmfoh8j30by04q0v4.jpg')
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

create_post1 = for i in 1..100 do
                   Post.create!([title: "Post no.#{i}",
                                 description: "这是用seeds文件建立的第 #{i} 个公开的文章",
                                 is_hidden: false,
                                 category: post_category[0],
                                 subcate: subcate[rand(0..4)]])
end

create_post2 = for i in 1..100 do
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
                                        quantity: rand(6..10),
                                        price: rand(6..10) * 100,
                                        category: 'aw',
                                        is_hidden: false,
                                        slogan: "标语 #{i} "])

end

create_productaw = for i in 1..3 do
                       Product.create!([title: "Product CW no.#{i}",
                                        description: "这是用seeds文件建立的第 #{i} 个公开的CW产品",
                                        quantity: rand(6..10),
                                        price: rand(6..10) * 100,
                                        category: 'cw',
                                        is_hidden: false,
                                        slogan: "标语 #{i} "])

end

create_productsw = for i in 1..3 do
                       Product.create!([title: "Product SW no.#{i}",
                                        description: "这是用seeds文件建立的第 #{i} 个公开的SW产品",
                                        quantity: rand(6..10),
                                        price: rand(6..10) * 100,
                                        category: 'sw',
                                        is_hidden: false,
                                        slogan: "标语 #{i} "])

end
