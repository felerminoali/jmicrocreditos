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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author user
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
    private Integer idcredito;
    @Column(name = "testemunha")
    private Integer testemunha;
    @ManyToMany(mappedBy = "creditonegocioList", fetch = FetchType.LAZY)
    private List<Bem> bemList;
    @JoinColumn(name = "idcredito", referencedColumnName = "idcredito", insertable = false, updatable = false)
    @OneToOne(optional = false, fetch = FetchType.LAZY)
    private Credito credito;

    public Creditonegocio() {
    }

    public Creditonegocio(Integer idcredito) {
        this.idcredito = idcredito;
    }

    public Integer getIdcredito() {
        return idcredito;
    }

    public void setIdcredito(Integer idcredito) {
        this.idcredito = idcredito;
    }

    public Integer getTestemunha() {
        return testemunha;
    }

    public void setTestemunha(Integer testemunha) {
        this.testemunha = testemunha;
    }

    public List<Bem> getBemList() {
        return bemList;
    }

    public void setBemList(List<Bem> bemList) {
        this.bemList = bemList;
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
        return "jcreditos.Creditonegocio[ idcredito=" + idcredito + " ]";
    }
    
}
