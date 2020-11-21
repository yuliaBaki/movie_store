class Movie_InfoPolicy < ApplicationPolicy
    def index?
        true
      end
    
      def show?
        @user == @record.user
      end
    
      def new?
        true
      end
end