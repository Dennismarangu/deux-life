class CustomersController < ApplicationController
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
            render json: customer, status: :created
        else
            render json: { error: customer.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        customer = find_customer
        if customer
            new_customer = customer.update(customer_params)
            if new_customer.valid?
                render json: new_customer
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
