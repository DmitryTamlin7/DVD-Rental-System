package org.example.controller;

import org.example.model.DVD;
import org.example.repository.DvdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/dvds")
public class DvdWebController {

    @Autowired
    private DvdRepository dvdRepository;

    @GetMapping
    public String getAllDvds(Model model) {
        model.addAttribute("dvds", dvdRepository.findAll());
        return "dvds";
    }

    @GetMapping("/add")
    public String addDvdForm(Model model) {
        model.addAttribute("dvd", new DVD());
        return "addDvd";
    }

    @PostMapping("/save")
    public String saveDvd(@ModelAttribute DVD dvd) {
        dvdRepository.save(dvd);
        return "redirect:/dvds";
    }

    @PostMapping("/delete/{id}")
    public String deleteDvd(@PathVariable Long id) {
        dvdRepository.deleteById(id);
        return "redirect:/dvds";
    }

    @GetMapping("/search")
    public List<DVD> searchByTitle(@RequestParam String title) {
        return dvdRepository.findByTitle(title);
    }
}
