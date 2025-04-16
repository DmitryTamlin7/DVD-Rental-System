package org.example.repository;

import org.example.model.DVD;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DvdRepository extends JpaRepository<DVD, Long> {
}
