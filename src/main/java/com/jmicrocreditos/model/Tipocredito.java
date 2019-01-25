/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Raimundo Jose
 */
@Entity
@Table(name = "tipocredito")
@NamedQueries({
    @NamedQuery(name = "Tipocredito.findAll", query = "SELECT t FROM Tipocredito t")})
public class Tipocredito implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcrecredito")
    private Integer idcrecredito;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @OneToMany(mappedBy = "idtipocredito", fetch = FetchType.LAZY)
    private List<Credito> creditoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idtipoCredito", fetch = FetchType.LAZY)
    private List<Grupoalvo> grupoalvoList;

    public Tipocredito() {
    }

    public Tipocredito(Integer idcrecredito) {
        this.idcrecredito = idcrecredito;
    }

    public Tipocredito(Integer idcrecredito, String descricao) {
        this.idcrecredito = idcrecredito;
        this.descricao = descricao;
    }

    public Integer getIdcrecredito() {
        return idcrecredito;
    }

    public void setIdcrecredito(Integer idcrecredito) {
        this.idcrecredito = idcrecredito;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public List<Credito> getCreditoList() {
        return creditoList;
    }

    public void setCreditoList(List<Credito> creditoList) {
        this.creditoList = creditoList;
    }

    public List<Grupoalvo> getGrupoalvoList() {
        return grupoalvoList;
    }

    public void setGrupoalvoList(List<Grupoalvo> grupoalvoList) {
        this.grupoalvoList = grupoalvoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcrecredito != null ? idcrecredito.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tipocredito)) {
            return false;
        }
        Tipocredito other = (Tipocredito) object;
        if ((this.idcrecredito == null && other.idcrecredito != null) || (this.idcrecredito != null && !this.idcrecredito.equals(other.idcrecredito))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jmicrocreditos.model.Tipocredito[ idcrecredito=" + idcrecredito + " ]";
    }
    
}
