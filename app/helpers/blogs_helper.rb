module BlogsHelper
  def month_human_name(month)
    case month
    when 1
      'Январь'
    when 2
      'Февраль'
    when 3
      'Март'
    when 4
      'Апрель'
    when 5
      'Май'
    when 6
      'Июнь'
    when 7
      'Июль'
    when 8
      'Август'
    when 9
      'Сентябрь'
    when 10
      'Октябрь'
    when 11
      'Ноябрь'
    else
      'Декабрь'
    end
  end

end
