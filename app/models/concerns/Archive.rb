module Archive
    extend ActiveSupport::Concern
    VALID_STATUSES = ['public', 'private', 'archived']

    included do 
        validates :status, allow_nil: true, inclusion: { in: VALID_STATUSES }
    end

    def archived?
        status == 'archived'
    end
end