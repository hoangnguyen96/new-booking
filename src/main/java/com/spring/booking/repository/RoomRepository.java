package com.spring.booking.repository;

import com.spring.booking.entities.RoomEntity;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by PC on 09/20/17.
 */
public interface RoomRepository extends CrudRepository<RoomEntity, Integer> {
}
