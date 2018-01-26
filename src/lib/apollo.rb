class Apollo
    def initialize(name)
        if name.class == String
            @name = name
            @isBorn = false
            @job = "Underage"
            @money = 0
            @age = 0
            @alive = false
            @miscarrage = rand(0..1)
            @death = rand(1..103)
            return true
        else
            return false
        end
    end
    
    # Be able to retreive his name
    def getName()
       return @name 
    end
    
    # Be able to retreive his job
    def getJob()
       return @job 
    end
    
    def getAge()
       return @age 
    end
    
    # Be Born
    def bear()
        if @miscarrage == 0
            @isBorn = true
            @alive = true
            @miscarrage = 3
            return true
        elsif @miscarrage == 1
            @isBorn = false
            @alive = false
            @miscarrage = 3
            return false
        elsif @miscarrage == 3
            return "Already Tried To Bear"
        end
    end
    
    def yearPass()
        if @alive == true && @isBorn == true
            @age += 1
            if @age == @death
                return "Your Apollo has died"
                @alive = false
            end
            return "A year has passed"
        elsif @alive == false
            return "Your Apollo isn't alive"
        elsif @isBorn == false
            return "Your Apollo isn't born yet"
        end
    end
    
    # Be able to get a job
    def findJob()
        if @age > 14 && @alive == true
            case rand(1..4)
            when 1
                @job = "Coder"
                return true
            when 2
                @job = "Janitor"
                return true
            when 3
                @job = "Boss"
                return true
            when 4
                @job = "Unemployed"
                return false
            end
        end
    end
end
