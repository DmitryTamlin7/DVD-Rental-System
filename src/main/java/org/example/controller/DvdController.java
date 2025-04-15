package org.example.controller;

import org.example.model.Dvd;
import org.example.repository.DvdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api/dvds")
public class DvdController {

    @Autowired
    private DvdRepository dvdRepository;

    @GetMapping
    public String listDvds(Model model) {
        model.addAttribute("dvds", dvdRepository.findAll());
        return "dvds/list";
    }

    @GetMapping("/add")
    public String showAddDvdForm() {
        return "dvds/add";
    }

    @PostMapping("/add")
    public String addDvd(@RequestParam String title, @RequestParam String genre, @RequestParam int year) {
        Dvd dvd = new Dvd();
        dvd.setTitle(title);
        dvd.setGenre(genre);
        dvd.setReleaseYear(year);
        dvdRepository.save(dvd);
        return "redirect:/api/dvds";
    }

    @GetMapping("/{id}/edit")
    public String showEditDvdForm(@PathVariable Long id, Model model) {
        Dvd dvd = dvdRepository.findById(id).orElse(null);
        if (dvd == null) {
            return "redirect:/api/dvds";
        }
        model.addAttribute("dvd", dvd);
        return "dvds/edit";
    }

    @PostMapping("/{id}/edit")
    public String updateDvd(@PathVariable Long id, @RequestParam String title, @RequestParam String genre, @RequestParam int year) {
        Dvd dvd = dvdRepository.findById(id).orElse(null);
        if (dvd == null) {
            return "redirect:/api/dvds";
        }
        dvd.setTitle(title);
        dvd.setGenre(genre);
        dvd.setReleaseYear(year);
        dvdRepository.save(dvd);
        return "redirect:/api/dvds";
    }

    @GetMapping("/{id}/delete")
    public String deleteDvd(@PathVariable Long id) {
        dvdRepository.deleteById(id);
        return "redirect:/api/dvds";
    }
}
