/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author Raimundo Jose
 */
@Entity
@Table(name = "creditonegocio")
@NamedQueries({
    @NamedQuery(name = "Creditonegocio.findAll", query = "SELECT c FROM Creditonegocio c")})
public class Creditonegocio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idcredito")
    private Short idcredito;
    @Column(name = "testemunha")
    private String testemunha;
    @Column(name = "testemunha2")
    private String testemunha2;
    @Column(name = "bem")
    private String bem;
    @Column(name = "urldeclaracao")
    private String urldeclaracao;
    @JoinColumn(name = "idcredito", referencedColumnName = "idcredito", insertable = false, updatable = false)
    @OneToOne(optional = false, fetch = FetchType.LAZY)
    private Credito credito;

    public Creditonegocio() {
    }

    public Creditonegocio(Short idcredito) {
        this.idcredito = idcredito;
    }

    public Short getIdcredito() {
        return idcredito;
    }

    public void setIdcredito(Short idcredito) {
        this.idcredito = idcredito;
    }

    public String getTestemunha() {
        return testemunha;
    }

    public void setTestemunha(String testemunha) {
        this.testemunha = testemunha;
    }

    public String getTestemunha2() {
        return testemunha2;
    }

    public void setTestemunha2(String testemunha2) {
        this.testemunha2 = testemunha2;
    }

    public String getBem() {
        return bem;
    }

    public void setBem(String bem) {
        this.bem = bem;
    }

    public String getUrldeclaracao() {
        return urldeclaracao;
    }

    public void setUrldeclaracao(String urldeclaracao) {
        this.urldeclaracao = urldeclaracao;
    }

    public Credito getCredito() {
        return credito;
    }

    public void setCredito(Credito credito) {
        this.credito = credito;
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
        if (!(object instanceof Creditonegocio)) {
            return false;
        }
        Creditonegocio other = (Creditonegocio) object;
        if ((this.idcredito == null && other.idcredito != null) || (this.idcredito != null && !this.idcredito.equals(other.idcredito))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jmicrocreditos.model.Creditonegocio[ idcredito=" + idcredito + " ]";
    }
    
}
