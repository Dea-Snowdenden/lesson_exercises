#progress bar
class Progress_bar_indicator
  def initialize(start, finish)
  @start = start
  @progress = 0
  @finish = finish
  end



  def progress_bar
    @progress = @start + 1
    @start = @progress
    puts "#{@progress}/#{@finish}"
  end
end
