class TestResque
	@queue = :test_resque

	def self.perform user_id,info
		user = User.find user_id
		f = File.open("#{Rails.root}/public/test_resque.txt", "wb") { |file| user.attrbutes.keys.each{|a| file.write a.to_s+user[a]+"\n"}  }
		f.close
	end
end
