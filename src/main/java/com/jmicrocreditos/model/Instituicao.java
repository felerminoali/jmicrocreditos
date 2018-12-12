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
@Table(name = "instituicao")
@NamedQueries({
    @NamedQuery(name = "Instituicao.findAll", query = "SELECT i FROM Instituicao i")})
public class Instituicao implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idinstituicao")
    private Integer idinstituicao;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "contacto_gestor")
    private String contactoGestor;
    @Column(name = "linhaendereco1")
    private String linhaendereco1;
    @Column(name = "linhaendereco2")
    private String linhaendereco2;
    @JoinColumn(name = "iddistrito", referencedColumnName = "ididstrito")
    @ManyToOne(fetch = FetchType.LAZY)
    private Distrito iddistrito;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idinstituicao", fetch = FetchType.LAZY)
    private List<Funcionario> funcionarioList;

    public Instituicao() {
    }

    public Instituicao(Integer idinstituicao) {
        this.idinstituicao = idinstituicao;
    }

    public Instituicao(Integer idinstituicao, String descricao, String contactoGestor) {
        this.idinstituicao = idinstituicao;
        this.descricao = descricao;
        this.contactoGestor = contactoGestor;
    }

    public Integer getIdinstituicao() {
        return idinstituicao;
    }

    public void setIdinstituicao(Integer idinstituicao) {
        this.idinstituicao = idinstituicao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getContactoGestor() {
        return contactoGestor;
    }

    public void setContactoGestor(String contactoGestor) {
        this.contactoGestor = contactoGestor;
    }

    public String getLinhaendereco1() {
        return linhaendereco1;
    }

    public void setLinhaendereco1(String linhaendereco1) {
        this.linhaendereco1 = linhaendereco1;
    }

    public String getLinhaendereco2() {
        return linhaendereco2;
    }

    public void setLinhaendereco2(String linhaendereco2) {
        this.linhaendereco2 = linhaendereco2;
    }

    public Distrito getIddistrito() {
        return iddistrito;
    }

    public void setIddistrito(Distrito iddistrito) {
        this.iddistrito = iddistrito;
    }

    public List<Funcionario> getFuncionarioList() {
        return funcionarioList;
    }

    public void setFuncionarioList(List<Funcionario> funcionarioList) {
        this.funcionarioList = funcionarioList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idinstituicao != null ? idinstituicao.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Instituicao)) {
            return false;
        }
        Instituicao other = (Instituicao) object;
        if ((this.idinstituicao == null && other.idinstituicao != null) || (this.idinstituicao != null && !this.idinstituicao.equals(other.idinstituicao))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Instituicao[ idinstituicao=" + idinstituicao + " ]";
    }
    
}
