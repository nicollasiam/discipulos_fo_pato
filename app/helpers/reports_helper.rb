module ReportsHelper
  def show_planned(val)
    "#{val[:planned]} ( #{val[:expenditure] + val[:planned]} )"
  end
end
