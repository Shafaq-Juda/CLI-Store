require_relative 'store'

class App

  def run
    continue_running = true
    while continue_running
      puts prompt
      option = gets.chomp.to_i
      if option == 7
        puts select_department(option)
        continue_running = false
      else
        puts select_department(option)
      end
    end
  end
  
  def prompt
    <<~TEXT

      *************************
      Welcome to the CLI Store!
      *************************

      Visit any department:
      1. Newborn
      2. Girls
      3. Boys
      4. Women
      5. Men
      6. Home
      7. Exit

      Enter the number of your desired Department:
    TEXT
  end

  def select_department(option)
    case option
    when 1
      return Store.new("Newborn", "I1")
    when 2
      return Store.new("Girls", "I2")
    when 3
      return Store.new("Boys", "I3")
    when 4
      return Store.new("Women", "I4")
    when 5
      return Store.new("Men", "I5")
    when 6
      return Store.new("Home", "I6")
    when 7
      return "Thank you for visiting!"
    else
      return "Invalid option! Please try again."
    end
  end
end

App.new.run
