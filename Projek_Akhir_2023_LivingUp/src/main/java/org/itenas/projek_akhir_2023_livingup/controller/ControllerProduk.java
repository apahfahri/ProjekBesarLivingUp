/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.itenas.projek_akhir_2023_livingup.models.Produk;
import org.itenas.projek_akhir_2023_livingup.utilities.ConnectionManager;

/**
 *
 * @author ASUS
 */
public class ControllerProduk {

    ConnectionManager conMan = new ConnectionManager();
    Connection con = conMan.connect();
    Statement stm;
    ResultSet rs;

    public boolean createProduk(Produk prdk) {
        String query = "insert into produk values ('" + prdk.getId()
                + "','" + prdk.getNama()
                + "'," + prdk.getHarga()
                + ",'" + prdk.getRuangan()
                + "','" + prdk.getWarna()
                + "','" + prdk.getKeterangan()
                + "','" + prdk.getMaterial()
                + "'," + prdk.getStok()
                + ",'" + prdk.getFoto()
                + "')";
        try {
            stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }

    public List<Produk> showProduk() {
        List<Produk> listProduk = new ArrayList<>();
        try {
            stm = con.createStatement();
            rs = stm.executeQuery("select * from produk");
            while (rs.next()) {
                Produk produk = new Produk();
                produk.setId(rs.getString("ID"));
                produk.setNama(rs.getString("Nama"));
                produk.setHarga(rs.getInt("Harga"));
                produk.setRuangan(rs.getString("Ruangan"));
                produk.setWarna(rs.getString("Warna"));
                produk.setKeterangan(rs.getString("Keterangan"));
                produk.setMaterial(rs.getString("Material"));
                produk.setStok(rs.getInt("Stok"));
                produk.setFoto(rs.getBytes("Foto"));
                listProduk.add(produk);
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return listProduk;
    }
    
    public Produk findProdukByID(String id) {
        Produk produk = null;
        try {
            stm = con.createStatement();
            rs = stm.executeQuery("select * from produk where id = '"+id+"'");
            while (rs.next()) {
                produk = new Produk();
                produk.setId(rs.getString("ID"));
                produk.setNama(rs.getString("Nama"));
                produk.setHarga(rs.getInt("Harga"));
                produk.setRuangan(rs.getString("Ruangan"));
                produk.setWarna(rs.getString("Warna"));
                produk.setKeterangan(rs.getString("Keterangan"));
                produk.setMaterial(rs.getString("Material"));
                produk.setStok(rs.getInt("Stok"));
                produk.setFoto(rs.getBytes("Foto"));
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return produk;
    }
    
    public List<Produk> findProdukByKategori(String kategori, String dicari) {
        List<Produk> listProduk = new ArrayList<>();
        try {
            stm = con.createStatement();
            rs = stm.executeQuery("select * from produk where "+kategori+" like '%"+dicari+"%'");
            while (rs.next()) {
                Produk produk = new Produk();
                produk.setId(rs.getString("ID"));
                produk.setNama(rs.getString("Nama"));
                produk.setHarga(rs.getInt("Harga"));
                produk.setRuangan(rs.getString("Ruangan"));
                produk.setWarna(rs.getString("Warna"));
                produk.setKeterangan(rs.getString("Keterangan"));
                produk.setMaterial(rs.getString("Material"));
                produk.setStok(rs.getInt("Stok"));
                produk.setFoto(rs.getBytes("Foto"));
                listProduk.add(produk);
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return listProduk;
    }
    
    public List<Produk> findProdukByPencarian(String kategori, String dicari) {
        List<Produk> listProduk = new ArrayList<>();
        try {
            stm = con.createStatement();
            rs = stm.executeQuery("select * from produk where "+kategori+" like '%"+dicari+"%'");
            while (rs.next()) {
                Produk produk = new Produk();
                produk.setId(rs.getString("ID"));
                produk.setNama(rs.getString("Nama"));
                produk.setHarga(rs.getInt("Harga"));
                produk.setRuangan(rs.getString("Ruangan"));
                produk.setWarna(rs.getString("Warna"));
                produk.setKeterangan(rs.getString("Keterangan"));
                produk.setMaterial(rs.getString("Material"));
                produk.setStok(rs.getInt("Stok"));
                produk.setFoto(rs.getBytes("Foto"));
                listProduk.add(produk);
            }
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        return listProduk;
    }

    public boolean updateProduk(Produk prdk, String id){
        String query = "update produk set id = '" +prdk.getId()
                + "', nama = '"+prdk.getNama()
                + "', harga = "+prdk.getHarga()
                + ", ruangan = '"+prdk.getRuangan()
                + "', warna = '"+prdk.getWarna()
                + "', keterangan = '"+prdk.getKeterangan()
                + "', material = '"+prdk.getMaterial()
                + "', stok = "+prdk.getStok()
                + ", foto = '"+ prdk.getFoto()
                +"' where id = '"+ id +"'";
        try {
            stm = con.createStatement();
            stm.executeUpdate(query);
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            return false;
        }
    }
    
    public boolean deleteProduk(String id){
        String query = "delete from produk where id = '"+id+"'";
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
