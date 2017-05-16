CarrierWave.configure do |config|
    config.storage = :qiniu
    config.qiniu_access_key    = ENV['j9OHxnXvOkcoxz0VdJPKUqcTatcvCKRvVxO_eoBG']
    config.qiniu_secret_key    = ENV['UDJaJzvy9xoOm4dPkcoOLsNsvogpUpDSKXGC3NfB']
    config.qiniu_bucket        = ENV['jdstore']
    config.qiniu_bucket_domain = ENV['om4lubav4.bkt.clouddn.com']
    config.qiniu_block_size    = 4 * 1024 * 1024
    config.qiniu_protocol      = 'http'
    config.qiniu_up_host       = 'http://up.qiniug.com' # 选择不同的区域时，"up.qiniug.com" 不同
end
