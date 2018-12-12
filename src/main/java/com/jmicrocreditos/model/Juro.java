/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "juro")
@NamedQueries({
    @NamedQuery(name = "Juro.findAll", query = "SELECT j FROM Juro j")})
public class Juro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idjuro")
    private Integer idjuro;
    @Basic(optional = false)
    @Column(name = "percentagem")
    private double percentagem;
    @Basic(optional = false)
    @Column(name = "estado")
    private boolean estado;
    @ManyToMany(mappedBy = "juroList", fetch = FetchType.LAZY)
    private List<Credito> creditoList;

    public Juro() {
    }

    public Juro(Integer idjuro) {
        this.idjuro = idjuro;
    }

    public Juro(Integer idjuro, double percentagem, boolean estado) {
        this.idjuro = idjuro;
        this.percentagem = percentagem;
        this.estado = estado;
    }

    public Integer getIdjuro() {
        return idjuro;
    }

    public void setIdjuro(Integer idjuro) {
        this.idjuro = idjuro;
    }

    public double getPercentagem() {
        return percentagem;
    }

    public void setPercentagem(double percentagem) {
        this.percentagem = percentagem;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public List<Credito> getCreditoList() {
        return creditoList;
    }

    public void setCreditoList(List<Credito> creditoList) {
        this.creditoList = creditoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idjuro != null ? idjuro.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Juro)) {
            return false;
        }
        Juro other = (Juro) object;
        if ((this.idjuro == null && other.idjuro != null) || (this.idjuro != null && !this.idjuro.equals(other.idjuro))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Juro[ idjuro=" + idjuro + " ]";
    }
    
}
