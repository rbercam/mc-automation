Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file }

# Module to call instantiated classes
module Pages
  def budget
    @budget ||= Budget.new
  end
  def report
    @report ||= Report.new
  end
end