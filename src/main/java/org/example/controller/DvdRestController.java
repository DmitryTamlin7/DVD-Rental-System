package org.example.controller;

import org.example.model.DVD;
import org.example.repository.DvdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/dvds")
public class DvdRestController {

    @Autowired
    private DvdRepository dvdRepository;

    @GetMapping
    public List<DVD> getAllDvds() {
        return dvdRepository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<DVD> getDvdById(@PathVariable Long id) {
        return dvdRepository.findById(id);
    }

    @PostMapping
    public DVD addDvd(@RequestBody DVD dvd) {
        return dvdRepository.save(dvd);
    }

    @PutMapping("/{id}")
    public DVD updateDvd(@PathVariable Long id, @RequestBody DVD updatedDvd) {
        return dvdRepository.findById(id)
                .map(dvd -> {
                    dvd.setTitle(updatedDvd.getTitle());
                    dvd.setGenre(updatedDvd.getGenre());
                    dvd.setReleaseYear(updatedDvd.getReleaseYear());
                    return dvdRepository.save(dvd);
                })
                .orElseGet(() -> {
                    updatedDvd.setId(id);
                    return dvdRepository.save(updatedDvd);
                });
    }

    @DeleteMapping("/{id}")
    public void deleteDvd(@PathVariable Long id) {
        dvdRepository.deleteById(id);
    }

    @GetMapping("/search")
    public List<DVD> searchByTitle(@RequestParam String title) {
        return dvdRepository.findByTitle(title);
    }
}
