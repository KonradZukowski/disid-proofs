// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.web;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesData;
import io.springlets.data.web.datatables.DatatablesPageable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.entityformat.domain.Pet;
import org.springframework.roo.entityformat.domain.PetNameAndWeightFormBean;
import org.springframework.roo.entityformat.service.api.PetService;
import org.springframework.roo.entityformat.web.PetsSearchThymeleafController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect PetsSearchThymeleafController_Roo_Thymeleaf {
    
    declare @type: PetsSearchThymeleafController: @Controller;
    
    declare @type: PetsSearchThymeleafController: @RequestMapping(value = "/pets/search", name = "PetsSearchThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     */
    public MessageSource PetsSearchThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param petService
     * @param messageSource
     */
    @Autowired
    public PetsSearchThymeleafController.new(PetService petService, MessageSource messageSource) {
        this.petService = petService;
        this.messageSource = messageSource;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "byNameAndWeightForm", value = "/byNameAndWeight/search-form")
    public ModelAndView PetsSearchThymeleafController.byNameAndWeightForm(@ModelAttribute("formBean") PetNameAndWeightFormBean formBean, Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        return new ModelAndView("pets/findByNameAndWeightForm");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "byNameAndWeight", value = "/byNameAndWeight")
    public ModelAndView PetsSearchThymeleafController.byNameAndWeight(@ModelAttribute("formBean") PetNameAndWeightFormBean formBean, Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        return new ModelAndView("pets/findByNameAndWeight");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param formBean
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "byNameAndWeightDt", value = "/byNameAndWeight/dt", produces = Datatables.MEDIA_TYPE)
    @ResponseBody
    public ResponseEntity<DatatablesData<Pet>> PetsSearchThymeleafController.byNameAndWeightDt(@ModelAttribute("formBean") PetNameAndWeightFormBean formBean, GlobalSearch search, DatatablesPageable pageable, @RequestParam(Datatables.PARAMETER_DRAW) Integer draw) {
        
        Page<Pet> pets = petService.findByNameAndWeight(formBean,search,pageable);
        long totalPetsCount = pets.getTotalElements();
        if (search != null && StringUtils.hasText(search.getText())) {
            totalPetsCount = petService.countByNameAndWeight(formBean);
        }
        DatatablesData<Pet> datatablesData = new DatatablesData<Pet>(pets, totalPetsCount, draw);
        return ResponseEntity.ok(datatablesData);
    }
    
}
