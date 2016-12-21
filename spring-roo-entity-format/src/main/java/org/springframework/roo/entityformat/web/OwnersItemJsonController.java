package org.springframework.roo.entityformat.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.roo.entityformat.domain.Owner;

/**
 * = OwnersItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Owner.class, type = ControllerType.ITEM)
@RooJSON
public class OwnersItemJsonController {
}
