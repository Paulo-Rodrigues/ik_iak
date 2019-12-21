class ApplicationController < ActionController::Base
    before_action :hide_navbar

    private

    def hide_navbar
        @hide_navbar = true
    end
end
