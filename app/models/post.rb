class Post < ActiveRecord::Base
	def previous_post
  		prevp = self.class.order('post_number').where('post_number < ?', self.post_number)
  		prevp.first if prevp
	end
	def next_post
  		nextp = self.class.order('post_number').where('post_number > ?', self.post_number)
  		nextp.first if nextp
	end
end
