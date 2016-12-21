// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.web;

import io.springlets.web.mvc.util.MethodLinkFactory;
import java.util.Map;
import org.springframework.roo.entityformat.web.OwnersItemPetsThymeleafController;
import org.springframework.roo.entityformat.web.OwnersItemPetsThymeleafLinkFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect OwnersItemPetsThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: OwnersItemPetsThymeleafLinkFactory implements MethodLinkFactory<OwnersItemPetsThymeleafController>;
    
    declare @type: OwnersItemPetsThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String OwnersItemPetsThymeleafLinkFactory.CREATE_FORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String OwnersItemPetsThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String OwnersItemPetsThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents OwnersItemPetsThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        Assert.notEmpty(pathVariables, "OwnersItemPetsThymeleafController links need at least "
            + "the Owner id Path Variable with the 'owner' key");
            
        Assert.notNull(pathVariables.get("owner"),
            "OwnersItemPetsThymeleafController links need at least "
            + "the Owner id Path Variable with the 'owner' key");
            
        if (methodName.equals(CREATE_FORM)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).createForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DATATABLES)) {
            return MvcUriComponentsBuilder.fromMethodCall(MvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null)).buildAndExpand(pathVariables);
        }
        
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<OwnersItemPetsThymeleafController> OwnersItemPetsThymeleafLinkFactory.getControllerClass() {
        return OwnersItemPetsThymeleafController.class;
    }
    
}
