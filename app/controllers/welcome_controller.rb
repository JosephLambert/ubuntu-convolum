class WelcomeController < ApplicationController
    def index
        @intro1 = Intro.find(7)
        @intro2 = Intro.find(8)
        @intro3 = Intro.find(9)
        @intro4 = Intro.find(10)
      end
end
