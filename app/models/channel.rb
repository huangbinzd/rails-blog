class Channel < ActiveRecord::Base
  attr_accessible :pid, :sort, :status, :target, :title, :url

  # 设置字段必填(整合写法)
  validates :title, :presence => true,
                    :uniqueness => { :message => "标题不能重复" }  
  validates :url,   :presence => true

  # 分页设置每页数据数量
  paginates_per 6
end
