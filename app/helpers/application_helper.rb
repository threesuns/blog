module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "游记——分享生活的旅行博客"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def time_ago_in_words_zh(timestamp)
    minutes = (((Time.now - timestamp).abs)/60).round
    return nil if minutes < 0
    case
        when minutes < 1    then "1分钟以内"
        when minutes == 1   then "1分钟以前"
        when minutes < 50   then "#{minutes} 分钟以前"
        when minutes < 90   then "1小时以前"
        when minutes < 1440 then "#{(minutes / 60).round} 小时以前"
    else 
        timestamp.strftime('%d %b %Y')
    end
end
end

