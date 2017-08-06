class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all

		@person = Person.new
		@person.cars.build
		@person.loans.build.build_car
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
		# because of the model that is used, new is called from index.  
		# disabling to make this clear.

		# not needed when the modal is called from /people
		# but if you need /people/new then you definately do.
    @person = Person.new
		@person.cars.build
		@person.loans.build.build_car
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }

        format.js { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }

        format.js { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
		# # 2.4.0 :001 > Loan.attribute_names.map(&:to_sym).push(:_destroy)
    def person_params
      params.require(:person).permit(:first_name, :last_name,
				loans_attributes: [:id, :car_id, :person_id, :comment, :created_at, 
				:updated_at, :_destroy,
					car_attributes: [:id, :cartype, :created_at, :updated_at, :_destroy] 
				] 
)
    end
end
