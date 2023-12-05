class WildlivesController < ApplicationController

    def index
        wildlives = Wildlife.all
        render json: wildlives
    end

    def show
        wildlife = Wildlife.find(params[:id])
        if wildlife.valid?
            render json: wildlife
        else
            render json: wildlife.errors
        end
    end

    def create
        wildlife = Wildlife.create(wildlife_params)
        if wildlife.valid?
            render json: wildlife
        else
            render json: wildlife.errors
        end
    end

    def update
        wildlife = Wildlife.find(params[:id])
        wildlife.update(wildlife_params)
        if wildlife.valid?
            render json: wildlife
        else
            render json: wildlife.errors
        end
    end

    def destroy
        wildlife = Wildlife.find(params[:id])
        if wildlife.destroy
            render json: wildlife
        else
            render json: wildlife
        end
    end

    private
    def wildlife_params
        params.require(:wildlife).permit(:common_name, :scientific_binomial)
    end

end
