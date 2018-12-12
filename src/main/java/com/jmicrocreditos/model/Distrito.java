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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "distrito")
@NamedQueries({
    @NamedQuery(name = "Distrito.findAll", query = "SELECT d FROM Distrito d")})
public class Distrito implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ididstrito")
    private Integer ididstrito;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @JoinColumn(name = "idprovincia", referencedColumnName = "idprovincia")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Provincia idprovincia;
    @OneToMany(mappedBy = "iddistrito", fetch = FetchType.LAZY)
    private List<Instituicao> instituicaoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "iddistrito", fetch = FetchType.LAZY)
    private List<Cliente> clienteList;

    public Distrito() {
    }

    public Distrito(Integer ididstrito) {
        this.ididstrito = ididstrito;
    }

    public Distrito(Integer ididstrito, String descricao) {
        this.ididstrito = ididstrito;
        this.descricao = descricao;
    }

    public Integer getIdidstrito() {
        return ididstrito;
    }

    public void setIdidstrito(Integer ididstrito) {
        this.ididstrito = ididstrito;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Provincia getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(Provincia idprovincia) {
        this.idprovincia = idprovincia;
    }

    public List<Instituicao> getInstituicaoList() {
        return instituicaoList;
    }

    public void setInstituicaoList(List<Instituicao> instituicaoList) {
        this.instituicaoList = instituicaoList;
    }

    public List<Cliente> getClienteList() {
        return clienteList;
    }

    public void setClienteList(List<Cliente> clienteList) {
        this.clienteList = clienteList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ididstrito != null ? ididstrito.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Distrito)) {
            return false;
        }
        Distrito other = (Distrito) object;
        if ((this.ididstrito == null && other.ididstrito != null) || (this.ididstrito != null && !this.ididstrito.equals(other.ididstrito))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Distrito[ ididstrito=" + ididstrito + " ]";
    }
    
}
