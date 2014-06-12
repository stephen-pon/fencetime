class MainController < ApplicationController


  def mainpage
    mondayhours = "8:30PM - 12:00PM"
    wednesdayhours = "8:30PM - 12:00AM"
#    thursdayhours = "9:30PM - 12:00PM"
    @message = "Fencing has the room from "
    @answer = "YES"
    currTime = Time.now
    if currTime.monday?
      @currHours = mondayhours
    elsif currTime.wednesday?
      @currHours = wednesdayhours
    elsif currTime.thursday?
      @currHours = thursdayhours
    else
      @currHours = ""
      @message = "Have fun!"
      @answer = "NO"
    end
  end

end
