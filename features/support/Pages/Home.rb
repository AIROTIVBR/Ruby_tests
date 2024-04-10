Class HomePage

    include Capybara::DSL

    def open
        visit 'https://demo.realworld.io/#'
    end

end