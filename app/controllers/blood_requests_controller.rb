class BloodRequestsController < ApplicationController
  def new
    @blood_request = BloodRequest.new
    @blood_request.persons_required = 5
    @hospitals_groups = {'Chișinău' =>
      ['IMSP Spitalul Clinic Republican',
       'Spitalul Clinic Republican',
       'Institutul Cardiologie',
       'Institutul de Neurologie și Neurochirurgie',
       'IMSP Institutul Mamei și Copilului',
       'Clinica "Emilian Coțaga"',
       'MSP Institutul Oncologic',
       'IMSP Centrul Național ștințifico-Practic Medicină de Urgență',
       'IMSP Spitalul Clinic de Traumatologie și Ortopedie',
       'IMSP Spitalul Clinic al Ministerului Sănătății',
       'IMSP Dispensarul Republican de Narcologie',
       'IMSP Spitalul Boli Infecțioase și Dermatologie "Toma Ciorbă"',
       'Clinica Dermatologie',
       'Clinica Boli Infecțioase',
       'IMSP Institutul de Ftiziopneumologie "Chirii Draganiuc"',
       'IMSP Spitalul Clinic de Psihiatrie',
       'Centrul Republican de Reabilitare pentru Copii',
       'IMSP Spitalul Clinic Municipal nr.1',
       'IMSP Spitalul Clinic Municipal "Sfîntul Arhanghel Mihail"',
       'IMSP Spitalul Clinic Municipal Sfînta Treime"',
       'IMSP Spitalul Clinic Municipal nr.4',
       'IMSP Spitalul Clinic Municipal pentru Copii "V. Ignatenco"',
       'IMSP Spitalul Clinic Municipal pentru Copii nr.1',
       'IMSP Spitalul Clinic Municipal Boli Contagioase de Copii',
       'Spitalul Clinic Municipal de Ftiziopneumologie',
       'IMSP Maternitatea nr.2'
      ],
      'Bălți' =>
      ['IMSP Spitalul de Psihiatrie, mun Bălți',
       'IMSP Spitalul Municipal Bălți'
      ],
      'Orhei' =>
      ['IMSP Spitalul de Psihiatrie și Ftiziopneumologie Orhei',
       'IMSP Spitalul raional Orhei'],
      'Alte orașe' =>
      ['IMSP Spitalul raional Anenii-Noi',
      'IMSP Spitalul raional Basarabeasca',
      'IMSP Spitalul raional Briceni',
      'IMSP Spitalul raional Cahul',
      'IMSP Spitalul raional Cantemir',
      'IMSP Spitalul raional Călărași',
      'IMSP Spitalul raional Căușeni',
      'IMSP Spitalul raional Ceadîr-Lunga',
      'IMSP Spitalul raional Cimișlia',
      'IMSP Spitalul raional Comrat',
      'IMSP Spitalul raional Criuleni',
      'IMSP Spitalul raional Dondușeni',
      'IMSP Spitalul raional Drochia',
      'IMSP Spitalul raional Edineț',
      'IMSP Spitalul raional Fălești',
      'IMSP Spitalul raional Florești',
      'IMSP Spitalul raional Glodeni',
      'IMSP Spitalul raional Hîncești',
      'IMSP Spitalul raional Hîncești',
      'IMSP Spitalul raional Ialoveni',
      'IMSP Spitalul raional Leova',
      'IMSP Spitalul raional Nisporeni',
      'IMSP Spitalul raional Ocnița',
      'IMSP Spitalul raional Rîșcani',
      'IMSP Spitalul raional Rezina',
      'IMSP Spitalul raional Sîngerei',
      'IMSP Spitalul raional Soroca',
      'IMSP Spitalul raional Strășeni',
      'IMSP Spitalul raional Șoldănești',
      'IMSP Spitalul raional Ștefan-Vodă',
      'IMSP Spitalul raional Taraclia',
      'IMSP Spitalul raional Telenești',
      'IMSP Spitalul raional Ungheni',
      'IMSP Spitalul raional Vulcănești']
    }
  end

  def index
    @blood_requests = BloodRequest.all
  end

  def create
    @blood_request = BloodRequest.new br_params

    if @blood_request.save
      @blood_request.shortlink.save
      redirect_to @blood_request.link
    else
      flash.now[:error] = @blood_request.errors.full_messages.join('<br />')
                                               .html_safe
      render 'new'
    end
  end

  private

    def br_params
      params.require(:blood_request).permit!
    end
end
