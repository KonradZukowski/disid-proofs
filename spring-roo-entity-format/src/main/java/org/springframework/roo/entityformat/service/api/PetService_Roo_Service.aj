// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.entityformat.domain.Owner;
import org.springframework.roo.entityformat.domain.Pet;
import org.springframework.roo.entityformat.domain.PetNameAndWeightFormBean;
import org.springframework.roo.entityformat.reference.PetType;
import org.springframework.roo.entityformat.service.api.PetService;

privileged aspect PetService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Pet
     */
    public abstract Pet PetService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     */
    public abstract void PetService.delete(Pet pet);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Pet> PetService.save(Iterable<Pet> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void PetService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Pet
     */
    public abstract Pet PetService.save(Pet entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Pet> PetService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Pet> PetService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long PetService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visitsToAdd
     * @return Pet
     */
    public abstract Pet PetService.addToVisits(Pet pet, Iterable<Long> visitsToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visitsToRemove
     * @return Pet
     */
    public abstract Pet PetService.removeFromVisits(Pet pet, Iterable<Long> visitsToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param visits
     * @return Pet
     */
    public abstract Pet PetService.setVisits(Pet pet, Iterable<Long> visits);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param owner
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findByOwner(Owner owner, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param owner
     * @return Long
     */
    public abstract long PetService.countByOwner(Owner owner);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param owner
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findByOwner(Owner owner, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sendReminders
     * @param weight
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findBySendRemindersAndWeightLessThan(boolean sendReminders, Float weight, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param type
     * @param name
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findByTypeAndNameLike(PetType type, String name, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Pet> PetService.findByNameAndWeight(PetNameAndWeightFormBean formBean, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sendReminders
     * @param weight
     * @return Long
     */
    public abstract long PetService.countBySendRemindersAndWeightLessThan(boolean sendReminders, Float weight);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param type
     * @param name
     * @return Long
     */
    public abstract long PetService.countByTypeAndNameLike(PetType type, String name);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @return Long
     */
    public abstract long PetService.countByNameAndWeight(PetNameAndWeightFormBean formBean);
    
}
