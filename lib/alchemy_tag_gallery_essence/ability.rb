module Alchemy
  module TagGallery
    module Essence
      class Ability
        include CanCan::Ability

        def initialize(user)
          return if user.nil?
          if user.has_role?(:author) || user.has_role?(:editor) || user.has_role?(:admin)
            can :manage, Alchemy::EssenceTagGallery
          end
        end
      end
    end
  end
end
