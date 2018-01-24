package com.mkyong.dao;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CarDao {

    private static List<Car> cars;

    static {
        cars = new ArrayList<>();
        cars.add(new Car("red", 5, 4));
        cars.add(new Car("green", 3, 2));
        cars.add(new Car("white", 4, 3));
    }

    public static List<Car> getCars() {
        return cars;
    }
}
