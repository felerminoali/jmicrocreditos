/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author user
 */
@Entity
@Table(name = "historicopagamento")
@NamedQueries({
    @NamedQuery(name = "Historicopagamento.findAll", query = "SELECT h FROM Historicopagamento h")})
public class Historicopagamento implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected HistoricopagamentoPK historicopagamentoPK;
    @Basic(optional = false)
    @Column(name = "data")
    @Temporal(TemporalType.DATE)
    private Date data;
    @Basic(optional = false)
    @Column(name = "valor")
    private double valor;
    @Basic(optional = false)
    @Column(name = "ordem")
    private int ordem;
    @JoinColumn(name = "idcredito", referencedColumnName = "idcredito", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Credito credito;
    @JoinColumn(name = "idmodopagamento", referencedColumnName = "idmodo", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Modopagamento modopagamento;

    public Historicopagamento() {
    }

    public Historicopagamento(HistoricopagamentoPK historicopagamentoPK) {
        this.historicopagamentoPK = historicopagamentoPK;
    }

    public Historicopagamento(HistoricopagamentoPK historicopagamentoPK, Date data, double valor, int ordem) {
        this.historicopagamentoPK = historicopagamentoPK;
        this.data = data;
        this.valor = valor;
        this.ordem = ordem;
    }

    public Historicopagamento(int idcredito, int idmodopagamento) {
        this.historicopagamentoPK = new HistoricopagamentoPK(idcredito, idmodopagamento);
    }

    public HistoricopagamentoPK getHistoricopagamentoPK() {
        return historicopagamentoPK;
    }

    public void setHistoricopagamentoPK(HistoricopagamentoPK historicopagamentoPK) {
        this.historicopagamentoPK = historicopagamentoPK;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getOrdem() {
        return ordem;
    }

    public void setOrdem(int ordem) {
        this.ordem = ordem;
    }

    public Credito getCredito() {
        return credito;
    }

    public void setCredito(Credito credito) {
        this.credito = credito;
    }

    public Modopagamento getModopagamento() {
        return modopagamento;
    }

    public void setModopagamento(Modopagamento modopagamento) {
        this.modopagamento = modopagamento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (historicopagamentoPK != null ? historicopagamentoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Historicopagamento)) {
            return false;
        }
        Historicopagamento other = (Historicopagamento) object;
        if ((this.historicopagamentoPK == null && other.historicopagamentoPK != null) || (this.historicopagamentoPK != null && !this.historicopagamentoPK.equals(other.historicopagamentoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.Historicopagamento[ historicopagamentoPK=" + historicopagamentoPK + " ]";
    }
    
}
