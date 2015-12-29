class Channel < ActiveRecord::Base
  attr_accessible :pid, :sort, :status, :target, :title, :url
end
