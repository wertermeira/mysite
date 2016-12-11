class Backend::ContactsController < BackendController
  before_action :set_contact, only: [:destroy, :show]
  def index
    @contacts = Contact.all
  end

  def show

  end

  def destroy
    if @contact.destroy
      redirect_to backend_contacts_path, notice: "Mensagem deletada"
    else
      redirect_to backend_contacts_path, alert: "Erro ao deletar mensagem"
    end
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

end
