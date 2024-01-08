/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.models;

/**
 *
 * @author ASUS
 */
public class Transaksi {
    private String idTransaksi;
    private Produk produk;
    private int jumlahProduk;

    public Transaksi() {
    }

    public Transaksi(String idTransaksi, Produk produk, int jumlahProduk) {
        this.idTransaksi = idTransaksi;
        this.produk = produk;
        this.jumlahProduk = jumlahProduk;
    }

    public String getIdTransaksi() {
        return idTransaksi;
    }

    public void setIdTransaksi(String idTransaksi) {
        this.idTransaksi = idTransaksi;
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
}