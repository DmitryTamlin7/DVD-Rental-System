package org.example.controller;


import org.example.model.Customer;
import org.example.model.DVD;
import org.example.repository.CustomerRepository;
import org.example.repository.DvdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private DvdRepository dvdRepository;

    @GetMapping
    public String showSearchPage() {
        return "search";
    }

    @GetMapping("/customers")
    public String searchCustomers(@RequestParam("name") String name, Model model) {
        List<Customer> customers = customerRepository.findByName(name);
        model.addAttribute("customers", customers);
        return "search";
    }

    @GetMapping("/dvds")
    public String searchDvds(@RequestParam("title") String title, Model model) {
        List<DVD> dvds = dvdRepository.findByTitle(title);
        model.addAttribute("dvds", dvds);
        return "search";
    }
}