
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
    image = "https://www.teach.org/sites/default/files/Home%20Page%20BrunetteTeacherWithStudent_resized.jpg"
    description = "The salary for a teacher ranges from $22k to about $58k.
     Description: Teachers create lesson plans and teach those plans to the entire class, individually to students or in small groups, track student progress and present the information to parents, create tests, create and reinforce classroom rules, work with school administration prepare students for standardized tests, and manage students outside the classroom, such as in school hallways, detention, etc."
    
    elsif string == "Programmer"
    image = "http://img.welkermedia.com/uploads/2017/02/Kloss-2.jpg"
    description = "The salary for a programmer is 79,530 a year. 
    Description:A computer programmer creates the code for software applications and operating systems. After a software developer designs a computer program, the programmer writes code that converts that design into a set of instructions a computer can follow. He or she tests the program to look for errors and then rewrites it until it is error-free. The programmer continues to evaluate programs that are in use, making updates and adjustments as needed. "
    elsif string == "Pilot"
    image = "http://1.bp.blogspot.com/-Z8FCwGfW0io/TxPOsK-wVzI/AAAAAAAABrI/y5ZAtUr5KVw/s1600/john+travolta.jpg"
    description = "The "
    elsif string == "Doctor"
    image  = "http://i.huffpost.com/gen/1412204/images/o-DOCTOR-facebook.jpg"
    elsif string == "Chef"
    image = "http://akns-images.eonline.com/eol_images/Entire_Site/2014213/rs_300x300-140313084137-600.2hells-kitchen-gordon-ramsay.ls.31314.jpg"
    elsif string == "Academia"
    image = "http://inpublicsafety.com/wp-content/uploads/sites/13/2015/11/Academic-Research.jpg"
     
  end
  return image
end

# person=Project.new({"Q1"=>"always", "Q2"=>"always", "Q3"=>"always", "Q4"=>"always", "Q5"=>"always", "Q6"=>"always", "Q7"=>"always", "Q8
# "=>"always", "Q9"=>"always", "Q10"=>"always", "Q11"=>"always", "Q12"=>"always", "Q13"=>"always"})
# p person.get_results("extrovert")
end

 def get_desc(string)
  if string == "Teacher"
    
    description = "The salary for a teacher ranges from $22k to about $58k.
     Description: Teachers create lesson plans and teach those plans to the entire class, individually to students or in small groups, track student progress and present the information to parents, create tests, create and reinforce classroom rules, work with school administration prepare students for standardized tests, and manage students outside the classroom, such as in school hallways, detention, etc.(Source:https://slack-redir.net/link?url=http%3A%2F%2Fwww.snagajob.com%2Fjob-descriptions%2Fteacher%2F)"
    
    elsif string == "Programmer"
    description = "The salary for a programmer is 79,530 a year. 
    Description:A computer programmer creates the code for software applications and operating systems. After a software developer designs a computer program, the programmer writes code that converts that design into a set of instructions a computer can follow. He or she tests the program to look for errors and then rewrites it until it is error-free. The programmer continues to evaluate programs that are in use, making updates and adjustments as needed.(Source:https://www.thebalance.com/what-does-a-computer-programmer-do-525996) "
    elsif string == "Pilot"
    description = "The salary for a Pilot starts at around $65,340 a year.
    Description: Pilots aren't surrounded with the mystique of the 1960s and 70s, but they are still well respected and highly trained professionals. Airline pilots usually work in pairs and are responsible for all crew and passengers from boarding to landing. Flying around the world often results in jet lag and a ton of time away from home, so it's not for everyone. The airline will provide for all your out-of-town accommodations though.
        The Federal Aviation Administration does limit the number of flight hours to ensure the safety of passengers and airline employees. Pilots can fly a maximum of 100 hours a month and 1,000 hours a year. (Source:http://www.snagajob.com/job-descriptions/pilot/)"
    elsif string == "Doctor"
    description
    
    elsif string == "Chef"
    description
    
    elsif string == "Academia"
    description
    
    end
  return description
end
