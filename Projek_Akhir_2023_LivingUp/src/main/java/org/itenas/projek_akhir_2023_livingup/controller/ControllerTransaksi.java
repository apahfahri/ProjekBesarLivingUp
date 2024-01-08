/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.itenas.projek_akhir_2023_livingup.utilities.ConnectionManager;
import org.itenas.projek_akhir_2023_livingup.models.Produk;
import org.itenas.projek_akhir_2023_livingup.models.Transaksi;

/**
 *
 * @author asust
 */
public class ControllerTransaksi {

    ConnectionManager conMan = new ConnectionManager();
    Connection con = conMan.connect();
    Statement stm;
    ResultSet rs;

    public List<Transaksi> getAllTransactions() {
    List<Transaksi> listTransaksi = new ArrayList<>();
    try {
        stm = con.createStatement();
        rs = stm.executeQuery("SELECT pembelian.idBeli1, pembelian.id, pembelian.jumlah, produk.harga, produk.nama FROM pembelian INNER JOIN produk ON pembelian.id = produk.id");
        while (rs.next()) {
            Transaksi transaksi = new Transaksi();
            transaksi.setIdTransaksi(rs.getString("idBeli1"));

            Produk produk = new Produk();
            produk.setId(rs.getString("id"));
            produk.setNama(rs.getString("nama"));
            produk.setHarga(rs.getInt("harga"));

            transaksi.setProduk(produk);
            transaksi.setJumlahProduk(rs.getInt("jumlah"));
            
            listTransaksi.add(transaksi);
            updateStock(produk.getId(), transaksi.getJumlahProduk());

        }
    } catch (SQLException ex) {
        ex.printStackTrace();
        System.out.println(ex.toString());
    }
    return listTransaksi;
}

    
    public Produk findProdukByID(String id) throws SQLException {
        Produk produk = null;
        try {
        PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM produk WHERE id = ?");
        preparedStatement.setString(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            produk = new Produk();
            produk.setId(resultSet.getString("id"));
            produk.setNama(resultSet.getString("nama"));
        } }catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return produk;
    }

    public double pembelian(String id) {
        double total_pembayaran = 0;

        try {
            String query = "SELECT harga FROM produk WHERE id = '"+ id + "'";

            PreparedStatement preparedStatement = con.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                total_pembayaran = resultSet.getDouble("harga");
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return total_pembayaran;
    }

    public boolean insertTransaksi(String id,String idBeli1 , int jumlah , double total_pembayaran) {
        
            String query = "INSERT INTO pembelian VALUES ('" + idBeli1 +"', '" +id+ "',"+jumlah+","+total_pembayaran+")";
        try {
            Statement stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }    
    }
    public boolean updateProduk(Produk prdk, String id) {
        String query = "update produk set id = '" + prdk.getId()
                + "', nama = '" + prdk.getNama()
                + "', harga = " + prdk.getHarga()
                + ", ruangan = '" + prdk.getRuangan()
                + "', warna = '" + prdk.getWarna()
                + "', keterangan = '" + prdk.getKeterangan()
                + "', material = '" + prdk.getMaterial()
                + "', stok = " + prdk.getStok()
                + ", foto = '" + prdk.getFoto()
                + "' where id = '" + id + "'";
        try {
            stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }
public void updateStock(String id, int stok) {
    try {
        PreparedStatement preparedStatement = con.prepareStatement("UPDATE produk SET stok = stok - ? WHERE id = ?");
        preparedStatement.setInt(1, stok);
        preparedStatement.setString(2, id);
        preparedStatement.executeUpdate();
    } catch (SQLException ex) {
        ex.printStackTrace();
        System.out.println(ex.toString());
    }
}
}
