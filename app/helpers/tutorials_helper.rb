module TutorialsHelper
	def tablePintingLogic(data_amount)
		amount = Array.new
		extra = data_amount % 3
		data_amount -= extra
		data_amount /= 3
		if extra == 2
			amount.push(data_amount + 1)
			amount.push(data_amount + 1)
			amount.push(data_amount)
		elsif extra == 1
			amount.push(data_amount + 1)
			amount.push(data_amount)
			amount.push(data_amount)
		else
			amount.push(data_amount)
			amount.push(data_amount)
			amount.push(data_amount)
		end

		return amount
	end
end
