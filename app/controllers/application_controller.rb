class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/homepage.html.erb"})
  end

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "tied"
    elsif @comp_move == "paper"
      @result = "lost"
    else
      @result = "won"
    end
    
    render({ :template => "game_templates/user_rock.html.erb", :layout => "rules_link.html.erb" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "won"
    elsif @comp_move == "paper"
      @result = "tied"
    else
      @result = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb", :layout => "rules_link.html.erb"})
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @result = "lost"
    elsif @comp_move == "paper"
      @result = "won"
    else
      @result = "tied"
    end

    render({ :template => "game_templates/user_scissors.html.erb", :layout => "rules_link.html.erb"})
  end
end
