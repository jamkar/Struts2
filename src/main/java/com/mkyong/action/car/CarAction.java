package com.mkyong.action.car;

import com.mkyong.action.BaseAction;
import com.mkyong.dao.Car;
import com.mkyong.dao.CarDao;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Scope("prototype")
public class CarAction extends BaseAction {

    private List<Car> cars;

    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
    }

    @Override
    public String execute() throws Exception {
        cars = CarDao.getCars();
        return SUCCESS;
    }
}
