package org.devanktu.cleanfruits.repository;

import org.devanktu.cleanfruits.domain.Cart;
import org.devanktu.cleanfruits.domain.CartDetail;
import org.devanktu.cleanfruits.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    boolean existsByCartAndProduct(Cart cart, Product product);

    CartDetail findByCartAndProduct(Cart cart, Product product);
}
