/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Raimundo Jose
 */
@Entity
@Table(name = "credito")
@NamedQueries({
    @NamedQuery(name = "Credito.findAll", query = "SELECT c FROM Credito c")})
public class Credito implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcredito")
    private Integer idcredito;
    @Basic(optional = false)
    @Column(name = "valor")
    private double valor;
    @Basic(optional = false)
    @Column(name = "data_emprestimo")
    @Temporal(TemporalType.DATE)
    private Date dataEmprestimo;
    @Basic(optional = false)
    @Column(name = "data_pagamento")
    @Temporal(TemporalType.DATE)
    private Date dataPagamento;
    @Basic(optional = false)
    @Column(name = "nr_max_pag")
    private int nrMaxPag;
    @JoinTable(name = "credito_juro", joinColumns = {
        @JoinColumn(name = "idcredito", referencedColumnName = "idcredito")}, inverseJoinColumns = {
        @JoinColumn(name = "idjuro", referencedColumnName = "idjuro")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Juro> juroList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "credito", fetch = FetchType.LAZY)
    private Creditonegocio creditonegocio;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "credito", fetch = FetchType.LAZY)
    private List<Historicopagamento> historicopagamentoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "credito", fetch = FetchType.LAZY)
    private List<Creditoconsumo> creditoconsumoList;
    @JoinColumn(name = "idcliente", referencedColumnName = "idcliente")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Cliente idcliente;
    @JoinColumn(name = "idestado", referencedColumnName = "idestado")
    @ManyToOne(fetch = FetchType.LAZY)
    private Estado idestado;
    @JoinColumn(name = "idtipocredito", referencedColumnName = "idcrecredito")
    @ManyToOne(fetch = FetchType.LAZY)
    private Tipocredito idtipocredito;

    public Credito() {
    }

    public Credito(Integer idcredito) {
        this.idcredito = idcredito;
    }

    public Credito(Integer idcredito, double valor, Date dataEmprestimo, Date dataPagamento, int nrMaxPag) {
        this.idcredito = idcredito;
        this.valor = valor;
        this.dataEmprestimo = dataEmprestimo;
        this.dataPagamento = dataPagamento;
        this.nrMaxPag = nrMaxPag;
    }

    public Integer getIdcredito() {
        return idcredito;
    }

    public void setIdcredito(Integer idcredito) {
        this.idcredito = idcredito;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public Date getDataEmprestimo() {
        return dataEmprestimo;
    }

    public void setDataEmprestimo(Date dataEmprestimo) {
        this.dataEmprestimo = dataEmprestimo;
    }

    public Date getDataPagamento() {
        return dataPagamento;
    }

    public void setDataPagamento(Date dataPagamento) {
        this.dataPagamento = dataPagamento;
    }

    public int getNrMaxPag() {
        return nrMaxPag;
    }

    public void setNrMaxPag(int nrMaxPag) {
        this.nrMaxPag = nrMaxPag;
    }

    public List<Juro> getJuroList() {
        return juroList;
    }

    public void setJuroList(List<Juro> juroList) {
        this.juroList = juroList;
    }

    public Creditonegocio getCreditonegocio() {
        return creditonegocio;
    }

    public void setCreditonegocio(Creditonegocio creditonegocio) {
        this.creditonegocio = creditonegocio;
    }

    public List<Historicopagamento> getHistoricopagamentoList() {
        return historicopagamentoList;
    }

    public void setHistoricopagamentoList(List<Historicopagamento> historicopagamentoList) {
        this.historicopagamentoList = historicopagamentoList;
    }

    public List<Creditoconsumo> getCreditoconsumoList() {
        return creditoconsumoList;
    }

    public void setCreditoconsumoList(List<Creditoconsumo> creditoconsumoList) {
        this.creditoconsumoList = creditoconsumoList;
    }

    public Cliente getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(Cliente idcliente) {
        this.idcliente = idcliente;
    }

    public Estado getIdestado() {
        return idestado;
    }

    public void setIdestado(Estado idestado) {
        this.idestado = idestado;
    }

    public Tipocredito getIdtipocredito() {
        return idtipocredito;
    }

    public void setIdtipocredito(Tipocredito idtipocredito) {
        this.idtipocredito = idtipocredito;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcredito != null ? idcredito.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Credito)) {
            return false;
        }
        Credito other = (Credito) object;
        if ((this.idcredito == null && other.idcredito != null) || (this.idcredito != null && !this.idcredito.equals(other.idcredito))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jmicrocreditos.model.Credito[ idcredito=" + idcredito + " ]";
    }
    
}
