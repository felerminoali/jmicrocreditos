/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author user
 */
@Embeddable
public class HistoricopagamentoPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "idcredito")
    private int idcredito;
    @Basic(optional = false)
    @Column(name = "idmodopagamento")
    private int idmodopagamento;

    public HistoricopagamentoPK() {
    }

    public HistoricopagamentoPK(int idcredito, int idmodopagamento) {
        this.idcredito = idcredito;
        this.idmodopagamento = idmodopagamento;
    }

    public int getIdcredito() {
        return idcredito;
    }

    public void setIdcredito(int idcredito) {
        this.idcredito = idcredito;
    }

    public int getIdmodopagamento() {
        return idmodopagamento;
    }

    public void setIdmodopagamento(int idmodopagamento) {
        this.idmodopagamento = idmodopagamento;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) idcredito;
        hash += (int) idmodopagamento;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HistoricopagamentoPK)) {
            return false;
        }
        HistoricopagamentoPK other = (HistoricopagamentoPK) object;
        if (this.idcredito != other.idcredito) {
            return false;
        }
        if (this.idmodopagamento != other.idmodopagamento) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "jcreditos.HistoricopagamentoPK[ idcredito=" + idcredito + ", idmodopagamento=" + idmodopagamento + " ]";
    }
    
}
