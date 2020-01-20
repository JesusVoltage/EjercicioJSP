/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Modelo.City;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ayesa1
 */
public class CityDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    
    /**
    * Funcion que realiza peticion al servidor para obtener los datos de las ciudades
    * @return lista de ciudades
    */
    public List listar() {
        ArrayList<City> list = new ArrayList<>();
        String sql = "select * from city";
        try {
            con = Conexion.obtener();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                City city = new City();
                city.setId(rs.getInt("ID"));
                city.setName(rs.getString("name"));
                city.setCountryCode(rs.getString("countryCode"));
                city.setDistrict(rs.getString("District"));
                city.setPopulation(rs.getString("population"));
                list.add(city);
            }
        } catch (Exception e) {
        }
        return list;

    }
    /**
     * 
     * @param name nombre de la ciudad
     * @param countrycode codigo del pais de la ciudad, ej: 'ESP' --> España,
     * @param district nombre del distrito de la ciudad
     * @param population INT numero de habitantes
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static void insertar(String name, String countrycode, String district, String population) throws SQLException, ClassNotFoundException{
        try {
            Connection conn = Conexion.obtener();
            out.print(name);
            String query = "insert into city values( default,\'"+name+"\',\'"+countrycode+"\',\'"+district+"\',"+Integer.parseInt(population)+");";
            Statement st = conn.createStatement();
            st.execute(query);
            st.close();
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }

}
