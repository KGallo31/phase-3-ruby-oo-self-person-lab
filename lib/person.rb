require 'pry'
class Person

    attr_reader:name
    attr_accessor:bank_account
    attr_reader:happiness
    attr_reader:hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8        
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
            return @happiness
        elsif happiness < 0
            @happiness = 0
            return @happiness
        else
            @happiness = happiness
            return happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
            return @hygiene
        elsif hygiene < 0
            @hygiene = 0
            return @hygiene
        else
            @hygiene = hygiene
            return hygiene
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene+4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness+2)
        self.hygiene=(@hygiene-3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness+3)
        friend.happiness=(friend.happiness+3)
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness-2)
            friend.happiness=(friend.happiness-2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness+1)
            friend.happiness=(friend.happiness+1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
    
end


# binding.pry