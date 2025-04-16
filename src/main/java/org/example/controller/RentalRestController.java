package org.example.controller;

import org.example.model.Rental;
import org.example.repository.RentalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/rentals")
public class RentalRestController {

    @Autowired
    private RentalRepository rentalRepository;

    @GetMapping
    public List<Rental> getAllRentals() {
        return rentalRepository.findAll();
    }

    @GetMapping("/{id}")
    public Rental getRentalById(@PathVariable Long id) {
        return rentalRepository.findById(id).orElseThrow();
    }

    @PostMapping
    public Rental createRental(@RequestBody Rental rental) {
        return rentalRepository.save(rental);
    }

    @PutMapping("/{id}")
    public Rental updateRental(@PathVariable Long id, @RequestBody Rental updatedRental) {
        Rental rental = rentalRepository.findById(id).orElseThrow();
        rental.setRentalDate(updatedRental.getRentalDate());
        rental.setReturnDate(updatedRental.getReturnDate());
        rental.setCustomer(updatedRental.getCustomer());
        rental.setDvd(updatedRental.getDvd());
        return rentalRepository.save(rental);
    }

    @DeleteMapping("/{id}")
    public void deleteRental(@PathVariable Long id) {
        rentalRepository.deleteById(id);
    }
}
