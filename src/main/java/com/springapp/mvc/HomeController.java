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

    private Boolean signin = false;

    @Autowired
    AddressService addressService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.debug("in home method");
        model.addAttribute("address", new Address());
        model.addAttribute("addresses", addressService.getAllAddresses());
        return "home";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String logPage(Locale locale, Model model) {
        model.addAttribute("user", new User());
       if (signin) {
           return "redirect:/index";
       }
        else {
           return "login";
       }
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(User user) {
        if ((user.getLogin().equals("test")) && (user.getPassword().equals("testpass"))) {
            signin = true;
        }
        return "redirect:/";
    }


    @RequestMapping(value = "/out")
    public String out(Locale locale, Model model) {
        signin = false;
        return "redirect:/";
    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addAddress(@ModelAttribute("address") Address address, BindingResult result) {
        logger.debug("in create method");
        addressService.createAddress(address);
        return "redirect:/";
    }

    @RequestMapping(value = "/addition")
    public String addPage(Locale locale, Model model) {
        model.addAttribute("address", new Address());
        return "add";
    }

    @RequestMapping(value = "/deletion")
    public String delPage(Locale locale, Model model) {
        model.addAttribute("address", new Address());
        model.addAttribute("addresses", addressService.getAllAddresses());
        return "delete";
    }



    @RequestMapping(value = "/delete/{addId}")
    public String deleteAddress(@PathVariable("addId") Long addId) {
        logger.debug("in delete method");

        addressService.deleteAddress(addressService.getAddressById(addId));
        return "redirect:/deletion";
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
