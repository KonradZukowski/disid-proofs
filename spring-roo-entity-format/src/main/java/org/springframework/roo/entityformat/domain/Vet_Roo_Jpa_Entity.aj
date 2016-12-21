// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.domain;

import javax.persistence.Entity;
import org.springframework.roo.entityformat.domain.Vet;
import org.springframework.roo.entityformat.domain.Visit;
import org.springframework.util.Assert;

privileged aspect Vet_Roo_Jpa_Entity {
    
    declare @type: Vet: @Entity;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String Vet.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String Vet.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitsToAdd
     */
    public void Vet.addToVisits(Iterable<Visit> visitsToAdd) {
        Assert.notNull(visitsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Visit item : visitsToAdd) {
            this.visits.add(item);
            item.setVet(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitsToRemove
     */
    public void Vet.removeFromVisits(Iterable<Visit> visitsToRemove) {
        Assert.notNull(visitsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Visit item : visitsToRemove) {
            this.visits.remove(item);
            item.setVet(null);
        }
    }
    
}
