package org.example.repository;

import org.example.model.Dvd;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DvdRepository extends JpaRepository<Dvd, Long> {

}
