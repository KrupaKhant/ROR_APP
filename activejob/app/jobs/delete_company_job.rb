class DeleteCompanyJob < ApplicationJob
  queue_as :default

  def perform(company_id)
    Company.destroy(company_id)
  end
end
