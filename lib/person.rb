class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name, bank_account= 25, happiness= 8, hygiene= 8)
      @name = name
      @bank_account = bank_account
      @happiness = happiness
      @hygiene = hygiene
    end
    
      def clean?
        @hygiene < 8 ? false : true
      end
      
      def happy?
          @happiness < 8 ? false : true
      end
      
      def happiness=(num)
        # 5, but want 4
        @happiness = num
        if @happiness >= 10
          @happiness = 10
        elsif @happiness <= 0
          @happiness = 0
        end
      end
      
      def hygiene=(num)
          @hygiene = num
        if @hygiene >= 10
          @hygiene = 10
        elsif @hygiene <= 0
          @hygiene = 0
        end
      end
      
      def get_paid(amount)
          @bank_account += amount
          return 'all about the benjamins'
      end
      
      def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end
      
      def work_out
        self.happiness += 2
        self.hygiene -= 3
        return '♪ another one bites the dust ♫'
      end
      
      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
      
      def start_conversation(friend, topic)
        if topic == "politics"
          self.happiness -= 2
          friend.happiness -= 2
          return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happiness += 1
          friend.happiness += 1
          return "blah blah sun blah rain"
        else
          return "blah blah blah blah blah"
        end
      end
      
  end