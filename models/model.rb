
class Career
    attr_accessor :results, :params
    
def initialize(params)
    @params=params
    @results= {:Programmer => 0,
    :Academia => 0,
    :Teacher => 0,
    :Doctor => 0,
    :Pilot => 0,
    :Chef => 0,
    }

chef_img = "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi1167g3rvVAhXn6oMKHS6bAsAQjRwIBw&url=http%3A%2F%2Fwww.eonline.com%2Fnews%2F842511%2Fgordon-ramsay-s-children-won-t-inherit-his-fortune&psig=AFQjCNFLaVRnK4SL0Fal6rIDA_wjONEm3A&ust=1501872906807877"

# @Chef = {:img src = "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi1167g3rvVAhXn6oMKHS6bAsAQjRwIBw&url=http%3A%2F%2Fwww.eonline.com%2Fnews%2F842511%2Fgordon-ramsay-s-children-won-t-inherit-his-fortune&psig=AFQjCNFLaVRnK4SL0Fal6rIDA_wjONEm3A&ust=1501872906807877"}
end

def question1
    if @params[:question1] == "english"
        @results[:Teacher] += 1
    elsif @params[:question1] == "math"
        @results[:Programmer] += 1
        @results[:Pilot] += 1
    elsif @params[:question1] == "science"
        @results[:Doctor] += 1
    elsif @params[:question1] == "art"
        @results[:Chef] += 1
    elsif @params[:question1] == "history"
        @results[:Academia] += 1
    end
end

def question2
    if @params[:question2] == "bachelors"
        @results[:Programmer] += 1
        @results[:Teacher] += 1
    elsif @params[:question2] == "PHD/doctorate"
        @results[:Academia] += 1
        @results[:Doctor] += 1
    elsif @params[:question2] == "vocational school"
        @results[:Pilot] += 1
        @results[:Chef] += 1
    end
end

def question3
    if @params[:question3] == "extrovert"
        @results[:Teacher] += 1
        @results[:Doctor] += 1
    elsif @params[:question3] == "introvert"
        @results[:Programmer] += 1
    elsif @params[:question3] == "ambivert"
        @results[:Academia] += 1
        @results[:Pilot] += 1
        @results[:Chef] += 1
    end
end

def question4
    if @params[:question4] == "leader" 
        @results[:Academia] += 1
        @results[:Teacher] += 1
        @results[:Doctor] += 1
    elsif @params[:question4] == "member" 
        @results[:Programmer] += 1
        @results[:Pilot] += 1
        @results[:Chef] += 1
    end
end

def question5
    if params[:question5] == "traveling"
        @results[:Pilot] += 1
    elsif params[:question5] == "building"
        @results[:Programmer] += 1
     elsif params[:question5] == "food"
        @results[:Chef] += 1
     elsif params[:question5] == "helping"
        @results[:Doctor] += 1
        @results[:Teacher] += 1
     elsif params[:question5] == "discovering"
        @results[:Academia] += 1
    end
end

def final_results
    personality_job =@results.values
    max = personality_job.max
    answer =""
    @results.each do |key,value|
        if value == max
            answer=key.to_s
        end 
    end 
    return answer
end


# def career_pic(career)
#     if career == "Chef" 
#         picture_img = "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwi1167g3rvVAhXn6oMKHS6bAsAQjRwIBw&url=http%3A%2F%2Fwww.eonline.com%2Fnews%2F842511%2Fgordon-ramsay-s-children-won-t-inherit-his-fortune&psig=AFQjCNFLaVRnK4SL0Fal6rIDA_wjONEm3A&ust=1501872906807877"
#     elsif career == "Doctor"
#         picture_img= ""
#     end
# return picture_img
# end





 def get_results(string)
  if string == "Teacher"
    image = ""
    elsif string == "Programmer"
    image = "http://img.welkermedia.com/uploads/2017/02/Kloss-2.jpg"
    elsif string == "Pilot"
    image = "http://1.bp.blogspot.com/-Z8FCwGfW0io/TxPOsK-wVzI/AAAAAAAABrI/y5ZAtUr5KVw/s1600/john+travolta.jpg"
    elsif string == "Doctor"
    image  = ""
    elsif string == "Chef"
    image = "http://akns-images.eonline.com/eol_images/Entire_Site/2014213/rs_300x300-140313084137-600.2hells-kitchen-gordon-ramsay.ls.31314.jpg"
    elsif string == "Academia"
    image = ""
     
  end
  return image
end

# person=Project.new({"Q1"=>"always", "Q2"=>"always", "Q3"=>"always", "Q4"=>"always", "Q5"=>"always", "Q6"=>"always", "Q7"=>"always", "Q8
# "=>"always", "Q9"=>"always", "Q10"=>"always", "Q11"=>"always", "Q12"=>"always", "Q13"=>"always"})
# p person.get_results("extrovert")
end

