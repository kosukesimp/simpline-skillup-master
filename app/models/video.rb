# == Scema Information
#
# Total name: videos
#
# example  :text  not null
#









class Video < ActiveRecord::Base
  #attr_accessor :example, :sugested, :answer
  belongs_to :post
end
