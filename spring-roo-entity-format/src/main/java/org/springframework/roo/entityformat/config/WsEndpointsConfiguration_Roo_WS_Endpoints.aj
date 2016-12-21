// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.entityformat.config;

import io.tracee.binding.cxf.TraceeCxfFeature;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.ws.Endpoint;
import org.apache.cxf.Bus;
import org.apache.cxf.feature.LoggingFeature;
import org.apache.cxf.jaxws.EndpointImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnWebApplication;
import org.springframework.boot.context.embedded.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.support.OpenEntityManagerInViewFilter;
import org.springframework.roo.entityformat.config.WsEndpointsConfiguration;
import org.springframework.roo.entityformat.service.api.OwnerService;
import org.springframework.roo.entityformat.service.api.PetService;
import org.springframework.roo.entityformat.ws.endpoint.OwnerWebServiceEndpoint;
import org.springframework.roo.entityformat.ws.endpoint.PetWebServiceEndpoint;

privileged aspect WsEndpointsConfiguration_Roo_WS_Endpoints {
    
    declare @type: WsEndpointsConfiguration: @Configuration;
    
    declare @type: WsEndpointsConfiguration: @ConditionalOnWebApplication;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final Logger WsEndpointsConfiguration.LOGGER = LoggerFactory.getLogger(WsEndpointsConfiguration.class);
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Autowired
    private Bus WsEndpointsConfiguration.bus;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Value("${cxf.path}")
    private String WsEndpointsConfiguration.cxfServletPath;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Autowired
    private OwnerService WsEndpointsConfiguration.ownerService;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Autowired
    private PetService WsEndpointsConfiguration.petService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Endpoint
     */
    @Bean
    public Endpoint WsEndpointsConfiguration.ownerWebServiceEndpoint() {
        EndpointImpl endpoint = new EndpointImpl(this.bus, new OwnerWebServiceEndpoint(this.ownerService));
        endpoint.setFeatures(Arrays.asList(new TraceeCxfFeature(), new LoggingFeature()));
        endpoint.publish("/OwnerWebService");
        return endpoint;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Endpoint
     */
    @Bean
    public Endpoint WsEndpointsConfiguration.petWebServiceEndpoint() {
        EndpointImpl endpoint = new EndpointImpl(this.bus, new PetWebServiceEndpoint(this.petService));
        endpoint.setFeatures(Arrays.asList(new TraceeCxfFeature(), new LoggingFeature()));
        endpoint.publish("/PetWebService");
        return endpoint;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return FilterRegistrationBean
     */
    @Bean
    public FilterRegistrationBean WsEndpointsConfiguration.openEntityManagerInViewFilter() {
        FilterRegistrationBean filterRegBean = new FilterRegistrationBean();
        filterRegBean.setFilter(new OpenEntityManagerInViewFilter());
        List<String> urlPatterns = new ArrayList<String>();
        urlPatterns.add(this.cxfServletPath + "/*");
        filterRegBean.setUrlPatterns(urlPatterns);
        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("Registering the 'OpenEntityManagerInViewFilter' filter for the '"
                .concat(this.cxfServletPath + "/*").concat("' URL."));
        }
        return filterRegBean;
    }
    
}
