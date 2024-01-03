/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.models;

/**
 *
 * @author ASUS
 */
public class Pembelian {
    private String id;
    private Produk produk;
    private int jumlahProduk;
    private double totalBayar;

    public Pembelian() {
    }

    public Pembelian(String id, Produk produk, int jumlahProduk, double totalBayar) {
        this.id = id;
        this.produk = produk;
        this.jumlahProduk = jumlahProduk;
        this.totalBayar = totalBayar;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Produk getProduk() {
        return produk;
    }

    public void setProduk(Produk produk) {
        this.produk = produk;
    }

    public int getJumlahProduk() {
        return jumlahProduk;
    }

    public void setJumlahProduk(int jumlahProduk) {
        this.jumlahProduk = jumlahProduk;
    }

    public double getTotalBayar() {
        return totalBayar;
    }

    public void setTotalBayar(double totalBayar) {
        this.totalBayar = totalBayar;
    }
    
    
}
