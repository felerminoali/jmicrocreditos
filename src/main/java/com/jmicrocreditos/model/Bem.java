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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "bem")
@NamedQueries({
    @NamedQuery(name = "Bem.findAll", query = "SELECT b FROM Bem b")})
public class Bem implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idbem")
    private Integer idbem;
    @Column(name = "descricao")
    private String descricao;
    @JoinTable(name = "bens_creditonegocio", joinColumns = {
        @JoinColumn(name = "idbem", referencedColumnName = "idbem")}, inverseJoinColumns = {
        @JoinColumn(name = "idcredito", referencedColumnName = "idcredito")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Creditonegocio> creditonegocioList;

    public Bem() {
    }

    public Bem(Integer idbem) {
        this.idbem = idbem;
    }

    public Integer getIdbem() {
        return idbem;
    }

    public void setIdbem(Integer idbem) {
        this.idbem = idbem;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public List<Creditonegocio> getCreditonegocioList() {
        return creditonegocioList;
    }

    public void setCreditonegocioList(List<Creditonegocio> creditonegocioList) {
        this.creditonegocioList = creditonegocioList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idbem != null ? idbem.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bem)) {
            return false;
        }
        Bem other = (Bem) object;
        if ((this.idbem == null && other.idbem != null) || (this.idbem != null && !this.idbem.equals(other.idbem))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Bem[ idbem=" + idbem + " ]";
    }
    
}
