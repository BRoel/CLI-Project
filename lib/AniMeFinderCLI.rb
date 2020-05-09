class AniMeFinderCLI

    attr_accessor :username

    def greeting
        puts "Hello and welcome to the AniMe Finder!  Whats your name?"
       
    end

    def get_username
        username = gets.chomp
        self.username = username
        puts "Hello #{self.username}"
    end

    def run
        greeting
        get_username
    end

end

