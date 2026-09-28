class DocumentsController < ApplicationController
  before_action :authenticate_admin_user!, only: :create

  def index
    @history_documents = Document.history
    @legal_documents = Document.legal
    @other_documents = Document.other
  end

  def create
    @document = Document.create(document_params)
  end

  private

  def document_params
    params.expect(document: [ :name, :file ])
  end
end
