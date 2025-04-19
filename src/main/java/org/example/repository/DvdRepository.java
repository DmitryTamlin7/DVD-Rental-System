package org.example.repository;

import org.example.model.DVD;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DvdRepository extends JpaRepository<DVD, Long> {
    List<DVD> findByTitle(String title);
}
