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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "cliente")
@NamedQueries({
    @NamedQuery(name = "Cliente.findAll", query = "SELECT c FROM Cliente c")})
public class Cliente implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idcliente")
    private Integer idcliente;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "apelido")
    private String apelido;
    @Basic(optional = false)
    @Column(name = "nr_bi")
    private int nrBi;
    @Column(name = "linhaendereco1")
    private String linhaendereco1;
    @Column(name = "linhaendereco2")
    private String linhaendereco2;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcliente", fetch = FetchType.LAZY)
    private List<Contacto> contactoList;
    @JoinColumn(name = "iddistrito", referencedColumnName = "ididstrito")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Distrito iddistrito;
    @JoinColumn(name = "idestadocivil", referencedColumnName = "idestadocivil")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Estadocivil idestadocivil;
    @JoinColumn(name = "idcliente", referencedColumnName = "user_id", insertable = false, updatable = false)
    @OneToOne(optional = false, fetch = FetchType.LAZY)
    private User user;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcliente", fetch = FetchType.LAZY)
    private List<Credito> creditoList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "cliente", fetch = FetchType.LAZY)
    private Funcionario funcionario;

    public Cliente() {
    }

    public Cliente(Integer idcliente) {
        this.idcliente = idcliente;
    }

    public Cliente(Integer idcliente, String nome, String apelido, int nrBi) {
        this.idcliente = idcliente;
        this.nome = nome;
        this.apelido = apelido;
        this.nrBi = nrBi;
    }

    public Integer getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(Integer idcliente) {
        this.idcliente = idcliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        this.apelido = apelido;
    }

    public int getNrBi() {
        return nrBi;
    }

    public void setNrBi(int nrBi) {
        this.nrBi = nrBi;
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

    public List<Contacto> getContactoList() {
        return contactoList;
    }

    public void setContactoList(List<Contacto> contactoList) {
        this.contactoList = contactoList;
    }

    public Distrito getIddistrito() {
        return iddistrito;
    }

    public void setIddistrito(Distrito iddistrito) {
        this.iddistrito = iddistrito;
    }

    public Estadocivil getIdestadocivil() {
        return idestadocivil;
    }

    public void setIdestadocivil(Estadocivil idestadocivil) {
        this.idestadocivil = idestadocivil;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Credito> getCreditoList() {
        return creditoList;
    }

    public void setCreditoList(List<Credito> creditoList) {
        this.creditoList = creditoList;
    }

    public Funcionario getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(Funcionario funcionario) {
        this.funcionario = funcionario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcliente != null ? idcliente.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cliente)) {
            return false;
        }
        Cliente other = (Cliente) object;
        if ((this.idcliente == null && other.idcliente != null) || (this.idcliente != null && !this.idcliente.equals(other.idcliente))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Cliente[ idcliente=" + idcliente + " ]";
    }
    
}
