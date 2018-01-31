# frozen_string_literal: true

module Decidim
  module Accountability
    module Admin
      class ImportResultsCSVJob < ApplicationJob
        queue_as :default

        def perform(current_user, current_feature, csv_file_path)
          importer = Decidim::Accountability::ResultsCSVImporter.new(current_feature, csv_file_path, current_user)

          errors = importer.import!

          Decidim::Accountability::ImportMailer.import(current_user, errors).deliver_now
        end
      end
    end
  end
end
