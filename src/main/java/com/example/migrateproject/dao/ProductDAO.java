package com.example.migrateproject.dao;

import com.example.migrateproject.dal.IProduct;
<<<<<<< HEAD
import dto.GetTopProductsWithFirstAttribute;

import java.sql.CallableStatement;
import java.sql.ResultSet;
=======
import com.example.migrateproject.model.Attribute;
import com.example.migrateproject.model.CarColor;
import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
>>>>>>> HieuNT
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends DBContext implements IProduct {
    @Override
    public ArrayList<GetTopProductsWithFirstAttribute> getTopProductsWithFirstAttribute() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
        try {
<<<<<<< HEAD
            String sql = "{call GetTopProductsWithFirstAttribute}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GetTopProductsWithFirstAttribute(rs.getInt(1),
                        rs.getString(2),rs.getFloat(3),rs.getString(4)));
=======
            String sql = "WITH RankedProducts AS (\n" +
                    "    SELECT p.product_id, \n" +
                    "           p.product_name, \n" +
                    "           p.product_img, \n" +
                    "           p.price,\n" +
                    "           ROW_NUMBER() OVER (PARTITION BY a.automaker_id ORDER BY p.product_id DESC) AS rn\n" +
                    "    FROM Product p\n" +
                    "    JOIN Automaker a ON a.automaker_id = p.automaker_id\n" +
                    ")\n" +
                    "SELECT product_id, product_name, product_img, price\n" +
                    "FROM RankedProducts\n" +
                    "WHERE rn = 1;";
            PreparedStatement ps=connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GetTopProductsWithFirstAttribute(rs.getInt(1),
                        rs.getString(2),rs.getFloat(4),rs.getString(3)));
>>>>>>> HieuNT
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
<<<<<<< HEAD
    public ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaCivic() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
=======
    public ArrayList<Product> getTop4HondaCivic() {
        ArrayList<Product> list = new ArrayList<>();
>>>>>>> HieuNT
        try {
            String sql = "{call SP_GetTop4HondaCivic}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
<<<<<<< HEAD
                list.add(new GetTopProductsWithFirstAttribute(rs.getInt(1),
                        rs.getString(2),rs.getFloat(3),rs.getString(4)));
=======
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
>>>>>>> HieuNT
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
<<<<<<< HEAD
    public ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaBRV() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
=======
    public ArrayList<Product> getTop4HondaBRV() {
        ArrayList<Product> list = new ArrayList<>();
>>>>>>> HieuNT
        try {
            String sql = "{call SP_GetTop4HondaBRV}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
<<<<<<< HEAD
                list.add(new GetTopProductsWithFirstAttribute(rs.getInt(1),
                        rs.getString(2),rs.getFloat(3),rs.getString(4)));
=======
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
>>>>>>> HieuNT
            }
        } catch (Exception e) {
        }
        return list;
    }

<<<<<<< HEAD
    public static void main(String[] args) {
        ProductDAO dao=new ProductDAO();
        ArrayList<GetTopProductsWithFirstAttribute> list=dao.getTop4HondaBRV();
        for(GetTopProductsWithFirstAttribute g:list){
            System.out.println(g.getAttributeImg());
=======
    @Override
    public ArrayList<Product> getTop4HondaCRV() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaCRV}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaCity() {
        ArrayList<Product> list=new ArrayList<>();
        try{
            String query="select top 4 *from Product\n" +
                    "where automaker_id=1";
            PreparedStatement ps=connection.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        }catch (Exception ex){

        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaHRV() {
        ArrayList<Product> list=new ArrayList<>();
        try{
            String query="select top 4 *from Product\n" +
                    "where automaker_id=4";
            PreparedStatement ps=connection.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        }catch (Exception ex){

        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaAccord() {
        return null;
    }

    @Override
    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetAllProduct}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getAllProductByAutumakerId(int id) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetProductByAutomakerID(?)}";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public InfoProductDAO getProductByProductId(int productId) {
        Product product = new Product();
        List<CarColor> carColorList = new ArrayList<>();
        List<Attribute> attributeList = new ArrayList<>();
        try {
            String query = "SELECT * FROM Product where Product.product_id= ?";
            String queryColor = "SELECT * FROM Car_Color where Car_Color.product_id= ?";
            String queryAttr = "SELECT * FROM Attribute where Attribute.product_id= ?";
            CallableStatement stmt1 = connection.prepareCall(query);
            CallableStatement stmt2 = connection.prepareCall(queryColor);
            CallableStatement stmt3 = connection.prepareCall(queryAttr);
            stmt1.setInt(1, productId);
            stmt2.setInt(1, productId);
            stmt3.setInt(1, productId);
            ResultSet rs1 = stmt1.executeQuery();
            ResultSet rs2 = stmt2.executeQuery();
            ResultSet rs3 = stmt3.executeQuery();
            while (rs1.next()) {
                product = (new Product(rs1.getInt("product_id"), rs1.getString("product_name"),
                        rs1.getInt("region_id"), rs1.getInt("automaker_id"),
                        rs1.getInt("quantity"), rs1.getString("product_img"),
                        rs1.getFloat("price"), rs1.getString("desciption")));
            }
            while (rs2.next()) {
                carColorList.add(new CarColor(rs2.getInt("color_id"),
                        rs2.getString("color_name"),
                        rs2.getString("color_img")));
            }
            while (rs3.next()) {
                attributeList.add(new Attribute(rs3.getInt("attribute_id"),
                        rs3.getString("attribute_name"),
                        rs3.getString("attribute_value"),
                        rs3.getString("attribute_img")));
            }
            stmt2.setInt(1, productId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new InfoProductDAO(product, carColorList, attributeList);
    }

    @Override
    public int countProductByAutomakerId(int automaker_id) {
        int count=0;
        try{
            String sql="{call SP_CountProdcutByAutumakerID(?)}";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setInt(1,automaker_id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                count=rs.getInt(1);
            }
        }catch (Exception ex){

        }
        return count;
    }

    @Override
    public ArrayList<Product> phanTrang(int automaker_id,int index) {
        ArrayList<Product> list=new ArrayList<>();
        try{
            String sql="{call SP_PhanTrang(?,?)}";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setInt(1,automaker_id);
            ps.setInt(2,index);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price"),rs.getString("desciption")));
            }
        }catch (Exception ex){

        }
        return list;
    }

    @Override
    public List<Product> getProductPaginationByAutoMakerId(int autoMakerId, int offset, int noOfRecords, String orderBy) {
        List<Product> list = new ArrayList<>();
        PreparedStatement preparedStatement;
        try {
            String query = "SELECT * FROM Product where Product.automaker_id= ?";
            if (orderBy == null || orderBy.isEmpty()) {
                orderBy = "product_id";
            }
            query += " ORDER BY " + orderBy;
            query += " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, autoMakerId);
            preparedStatement.setInt(2, offset);
            preparedStatement.setInt(3, noOfRecords);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price"),rs.getString("desciption")));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int getTotalRecordsProductByAutoMakerId(int automaker_id) {
        int totalRecords = 0;
        PreparedStatement preparedStatement;
        ResultSet resultSet;

        try {
            String query = "SELECT COUNT(*) FROM Product WHERE automaker_id = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, automaker_id);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                totalRecords = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totalRecords;
    }

    public static void main(String[] args) {
        ProductDAO dao=new ProductDAO();
        ArrayList<Product> list=dao.getTop4HondaCity();
        for(Product g:list){
            System.out.println(g.getProductName());
>>>>>>> HieuNT
        }
    }
}
