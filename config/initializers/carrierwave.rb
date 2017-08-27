# CarrierWave.configure do |config|
#     config.storage = :aliyun
#     config.aliyun_access_id  = 'LTAI02AihiSUJGri'
#     config.aliyun_access_key = 'SSXGKcSAWCMDxSuUkngslTDMadP1k7'
#     # 你需要在 Aliyum OSS 上面提前创建一个 Bucket
#     config.aliyun_bucket     = 'convolum'
#     # 是否使用内部连接，true - 使用 Aliyun 主机内部局域网的方式访问  false - 外部网络访问
#     config.aliyun_internal   = true
#     # 配置存储的地区数据中心，默认: cn-hangzhou
#     # config.aliyun_area     = "cn-hangzhou"
#     # 使用自定义域名，设定此项，carrierwave 返回的 URL 将会用自定义域名
#     # 自定义域名请 CNAME 到 you_bucket_name.oss-cn-hangzhou.aliyuncs.com (you_bucket_name 是你的 bucket 的名称)
#     # config.aliyun_host       = 'https://convolum.oss-cn-qingdao.aliyuncs.com'
#     # Bucket 为私有读取请设置 true，默认 false，以便得到的 URL 是能带有 private 空间访问权限的逻辑
#     # config.aliyun_private_read = false
# end

CarrierWave.configure do |config|
    config.storage = :qiniu
    config.qiniu_access_key    = ENV['qiniu_access_key']
    config.qiniu_secret_key    = ENV['qiniu_secret_key']
    config.qiniu_bucket        = ENV['qiniu_bucket']
    config.qiniu_bucket_domain = ENV['qiniu_bucket_domain']
    config.qiniu_block_size    = 4 * 1024 * 1024
    config.qiniu_protocol      = 'http'
    # config.qiniu_up_host       = 'http://up.qiniug.com' # 选择不同的区域时，"up.qiniug.com" 不同
end
