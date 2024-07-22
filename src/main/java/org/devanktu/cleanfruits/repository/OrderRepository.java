package org.devanktu.cleanfruits.repository;

import org.devanktu.cleanfruits.domain.Order;
import org.devanktu.cleanfruits.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByUser(User user);
}


