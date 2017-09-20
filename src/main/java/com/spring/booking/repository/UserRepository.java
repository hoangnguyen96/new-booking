package com.spring.booking.repository;

import com.spring.booking.entities.UserEntity;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by PC on 09/20/17.
 */
public interface UserRepository extends CrudRepository<UserEntity, Integer> {
    public UserEntity findByEmailAndPassword(String email,String password);
    public UserEntity findByEmail(String email);
}
