/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Ayesa1
 */
public class City {
    
    private int id;
    private String name, countryCode, District, population;
    
    public City(){
        
    }

    public City(int id, String name, String countryCode, String District, String population) {
        this.id = id;
        this.name = name;
        this.countryCode = countryCode;
        this.District = District;
        this.population = population;
    }

    
    //get

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public String getDistrict() {
        return District;
    }

    public String getPopulation() {
        return population;
    }
    
    
    //set

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public void setDistrict(String District) {
        this.District = District;
    }

    public void setPopulation(String population) {
        this.population = population;
    }
    
    
    
}
