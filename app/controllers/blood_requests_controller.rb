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
       'IMSP Spitalul Clinic Municipal nr.l',
       'IMSP Spitalul Clinic Municipal "Sfîntul Arhanghel Mihail"',
       'IMSP Spitalul Clinic Municipal Sfînta Treime"',
       'IMSP Spitalul Clinic Municipal nr.4',
       'IMSP Spitalul Clinic Municipal pentru Copii "V. Ignatenco"',
       'IMSP Spitalul Clinic Municipal pentru Copii nr. 1',
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
      'Anenii-Noi' =>
      ['IMSP Spitalul raional Anenii-Noi'],
      'Basarabeasca' =>
      ['IMSP Spitalul raional Basarabeasca'],
      'Briceni' =>
      ['IMSP Spitalul raional Briceni'],
      'Cahul' =>
      ['IMSP Spitalul raional Cahul'],
      'Cantemir' =>
      ['IMSP Spitalul raional Cantemir'],
      'Călărași' =>
      ['IMSP Spitalul raional Călărași'],
      'Căușeni' =>
      ['IMSP Spitalul raional Căușeni'],
      'Ceadîr-Lunga' =>
      ['IMSP Spitalul raional Ceadîr-Lunga'],
      'Cimișlia' =>
      ['IMSP Spitalul raional Cimișlia'],
      'Comrat' =>
      ['IMSP Spitalul raional Comrat'],
      'Criuleni' =>
      ['IMSP Spitalul raional Criuleni'],
      'Dondușeni' =>
      ['IMSP Spitalul raional Dondușeni'],
      'Drochia' =>
      ['IMSP Spitalul raional Drochia'],
      'Edineț' =>
      ['IMSP Spitalul raional Edineț'],
      'Fălești' =>
      ['IMSP Spitalul raional Fălești'],
      'Florești' =>
      ['IMSP Spitalul raional Florești'],
      'Glodeni' =>
      ['IMSP Spitalul raional Glodeni'],
      'Hîncești' =>
      ['IMSP Spitalul raional Hîncești'],
      'Hîncești' =>
      ['IMSP Spitalul raional Hîncești'],
      'Ialoveni' =>
      ['IMSP Spitalul raional Ialoveni'],
      'Leova' =>
      ['IMSP Spitalul raional Leova'],
      'Nisporeni' =>
      ['IMSP Spitalul raional Nisporeni'],
      'Ocnița' =>
      ['IMSP Spitalul raional Ocnița'],
      'Rîșcani' =>
      ['IMSP Spitalul raional Rîșcani'],
      'Rezina' =>
      ['IMSP Spitalul raional Rezina'],
      'Sîngerei' =>
      ['IMSP Spitalul raional Sîngerei'],
      'Soroca' =>
      ['IMSP Spitalul raional Soroca'],
      'Strășeni' =>
      ['IMSP Spitalul raional Strășeni'],
      'Șoldănești' =>
      ['IMSP Spitalul raional Șoldănești'],
      'Ștefan-Vodă' =>
      ['IMSP Spitalul raional Ștefan-Vodă'],
      'Taraclia' =>
      ['IMSP Spitalul raional Taraclia'],
      'Telenești' =>
      ['IMSP Spitalul raional Telenești'],
      'Ungheni' =>
      ['IMSP Spitalul raional Ungheni'],
      'Vulcănești' =>
      ['IMSP Spitalul raional Vulcănești']
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
