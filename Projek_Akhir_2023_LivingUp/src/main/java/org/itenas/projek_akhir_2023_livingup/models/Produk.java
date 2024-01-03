    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.itenas.projek_akhir_2023_livingup.models;

/**
 *
 * @author ASUS
 */
public class Produk {
    private int stok;
    private String id,nama,ruangan,warna,keterangan,material;
    private double harga;
    private byte[] foto;

    public Produk() {
    }

    public Produk(String id, int stok, String nama, String ruangan, String warna, String keterangan, String material, double harga, byte[] foto) {
        this.id = id;
        this.stok = stok;
        this.nama = nama;
        this.ruangan = ruangan;
        this.warna = warna;
        this.keterangan = keterangan;
        this.material = material;
        this.harga = harga;
        this.foto = foto;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getStok() {
        return stok;
    }

    public void setStok(int stok) {
        this.stok = stok;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getRuangan() {
        return ruangan;
    }

    public void setRuangan(String ruangan) {
        this.ruangan = ruangan;
    }

    public String getWarna() {
        return warna;
    }

    public void setWarna(String warna) {
        this.warna = warna;
    }

    public String getKeterangan() {
        return keterangan;
    }

    public void setKeterangan(String keterangan) {
        this.keterangan = keterangan;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public double getHarga() {
        return harga;
    }

    public void setHarga(double harga) {
        this.harga = harga;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }
    
    
}
