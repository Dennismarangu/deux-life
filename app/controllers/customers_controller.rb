class CustomersController < ApplicationController
    before_action :require_login, only: [:update, :destroy]

    def index
        customers = Customer.all
        render json: customers
    end

    def show
        customer = find_customer
        if customer
            render json: customer
        else
            render json: { error: "Oops! Customer not found!" }, status: :not_found
        end
    end

    def create
        customer = Customer.create(customer_params)
        if customer.valid?
            save_user(customer.id)
            token = encode(customer.id, customer.email)
            session[:customer_id] = customer.id
            # blob = ActiveStorage::Blob.find(user.id)
            # image = url_for(blob)
            customer = customer.attributes.except('updated_at', 'created_at', 'password_digest')

            app_response(message: 'Registration was successful', status: :created, data: {user: customer, token: token})
            #render json: customer, status: :created
        else
            render json: { error: customer.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        customer = find_customer
        if customer
            customer.update(customer_params)
            if customer.valid?
                render json: customer
            else
                render json: { error: customer.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { error: "Oops! Customer not found!" }, status: :not_found
        end
    end

    def destroy
        customer = find_customer
        if customer
            customer.destroy
            head :no_content
        else
            render json: { error: "Oops! Customer not found!" }, status: :not_found
        end
    end

    private

    def find_customer
        Customer.find_by(id: params[:id])
    end

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation)
    end
end
