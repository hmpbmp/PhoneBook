package com.springapp.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Locale;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory
            .getLogger(HomeController.class);

    @Autowired
    AddressService addressService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.debug("in home method");
        model.addAttribute("address", new Address());
        model.addAttribute("addresses", addressService.getAllAddresses());
        return "home";
    }




    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addAddress(@ModelAttribute("address") Address address, BindingResult result) {
        logger.debug("in create method");
        addressService.createAddress(address);
        return "redirect:/";
    }



    @RequestMapping(value = "/delete/{addId}")
    public String deleteAddress(@PathVariable("addId") Long addId) {
        logger.debug("in delete method");

        addressService.deleteAddress(addressService.getAddressById(addId));
        return "redirect:/";
    }

    @RequestMapping(value = "/addresses", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public
    @ResponseBody
    List<Address> list() {
        logger.debug("in create method");

        return addressService.getAllAddresses();
    }

}
