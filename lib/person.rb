require 'pry'
class Person
attr_accessor :bank_account
    attr_reader :name
    @@all = []
    def initialize(person_name)
        @name = person_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

    # def name
    #  @name
    # end

    # def bank_account
    #     @bank_account
    # end

    # def bank_account=(num)
    #     @bank_account = num
    # end

    def happiness 
        @happiness
    end

    def happiness=(happy_idx)
        #@happiness = happy_idx
        if happy_idx >= 10 
             @happiness = 10
        elsif happy_idx <= 0
             @happiness = 0
        else
            @happiness = happy_idx
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene_idx)
        @hygiene = hygiene_idx
        if @hygiene >= 10
            @hygiene = 10
        elsif @hygiene <= 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 #what is this doing? self = an instance of Person class, aka a person.
        # in order for #take_bath to work, need to call hygiene= method on the object/instance,
        # which is why we need to use 'self'.
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end
    end
end

