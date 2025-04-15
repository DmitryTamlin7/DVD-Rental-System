package org.example.controller;

import org.example.model.Rental;
import org.example.repository.RentalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
@RequestMapping("/api/rentals")
public class RentalController {

    @Autowired
    private RentalRepository rentalRepository;

    @GetMapping
    public List<Rental> getAllRentals() {
        return (List<Rental>) rentalRepository.findAll();
    }

    @PostMapping
    public Rental createRental(@RequestBody Rental rental) {
        return rentalRepository.save(rental);
    }

    @PutMapping("/{id}")
    public Rental updateRental(@PathVariable Long id, @RequestBody Rental rental) {
        rental.setId(id);
        return rentalRepository.save(rental);
    }

    @DeleteMapping("/{id}")
    public void deleteRental(@PathVariable Long id) {
        rentalRepository.deleteById(id);
    }
}

