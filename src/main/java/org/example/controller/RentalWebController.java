package org.example.controller;

import org.example.model.Rental;
import org.example.model.Customer;
import org.example.model.DVD;
import org.example.repository.RentalRepository;
import org.example.repository.CustomerRepository;
import org.example.repository.DvdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/rentals")
public class RentalWebController {

    @Autowired
    private RentalRepository rentalRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private DvdRepository dvdRepository;

    @GetMapping
    public String listRentals(Model model) {
        model.addAttribute("rentals", rentalRepository.findAll());
        return "rentals"; // rentals.html
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("rental", new Rental());
        model.addAttribute("customers", customerRepository.findAll());
        model.addAttribute("dvds", dvdRepository.findAll());
        return "add-rental"; // add-rental.html
    }

    @PostMapping("/add")
    public String addRental(@ModelAttribute Rental rental) {
        rentalRepository.save(rental);
        return "redirect:/rentals";
    }

    @GetMapping("/delete/{id}")
    public String deleteRental(@PathVariable Long id) {
        rentalRepository.deleteById(id);
        return "redirect:/rentals";
    }
}
