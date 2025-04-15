package org.example.controller;

import org.example.model.Customer;
import org.example.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api/customers")
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepository;

    @GetMapping
    public String getAllCustomers(Model model) {
        List<Customer> customers = customerRepository.findAll();
        model.addAttribute("customers", customers);
        return "customers"; // имя HTML шаблона
    }

    @GetMapping("/add-customer")
    public String addCustomerForm() {
        return "addCustomer";
    }

    @PostMapping
    public String createCustomer(@RequestParam String name, @RequestParam String email, @RequestParam String phone) {
        Customer customer = new Customer();
        customer.setName(name);
        customer.setEmail(email);
        customer.setPhone(phone);
        customerRepository.save(customer);
        return "redirect:/api/customers";
    }


}
