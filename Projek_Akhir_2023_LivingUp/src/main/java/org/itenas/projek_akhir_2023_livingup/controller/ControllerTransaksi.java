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
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return produk;
    }

    public double pembelian(String id) {
        double total_pembayaran = 0;

        try {
            String query = "SELECT harga FROM produk WHERE id = '" + id + "'";

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

    public boolean insertTransaksi(String id, String idBeli1, int jumlah, double total_pembayaran) {

        String query = "INSERT INTO pembelian VALUES ('" + idBeli1 + "', '" + id + "'," + jumlah + "," + total_pembayaran + ")";
        try {
            Statement stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }

  /*  public boolean updateTransaksi(Transaksi transaksi, String idBeli1, String id, int jumlah, Double totalHarga) {
        String query = "update pembelian set idBeli1 = '" + transaksi.getIdTransaksi()
                + "', id = '" + transaksi.get()
                + "', jumlah = " + transaksi.getJumlahProduk()
                + ", total_pembayaran = '" + transaksi.g()
                + "' where idBeli1 = '" + id + "'";
        try {
            stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }
*/
       public boolean updateProduk(Produk prdk, String id) {
        // Metode updateProduk dengan PreparedStatement
        try {
            String query = "UPDATE produk SET id = ?, nama = ?, harga = ?, ruangan = ?, warna = ?, keterangan = ?, material = ?, stok = ? WHERE id = ?";
            PreparedStatement pstmt = con.prepareStatement(query);

            pstmt.setString(1, prdk.getId());
            pstmt.setString(2, prdk.getNama());
            pstmt.setDouble(3, prdk.getHarga());
            pstmt.setString(4, prdk.getRuangan());
            pstmt.setString(5, prdk.getWarna());
            pstmt.setString(6, prdk.getKeterangan());
            pstmt.setString(7, prdk.getMaterial());
            pstmt.setInt(8, prdk.getStok());
          //  pstmt.setString(9, prdk.getFoto());
            pstmt.setString(10, id);

            pstmt.executeUpdate();
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

    public boolean deleteTransaksi(String id) {
        String query = "delete from pembelian where idBeli1 = '" + id + "'";
        try {
            stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }
}
