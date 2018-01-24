package com.mkyong.action.iterator;

import com.mkyong.action.BaseAction;

import java.util.ArrayList;
import java.util.List;

public class IteratorKFCAction extends BaseAction {

    private List<String> comboMeals;

    public List<String> getComboMeals() {
        return comboMeals;
    }

    public void setComboMeals(List<String> comboMeals) {
        this.comboMeals = comboMeals;
    }

    @Override
    public String execute() throws Exception {
        comboMeals = new ArrayList<>();
        comboMeals.add("Snack Plate");
        comboMeals.add("Dinner Plate");
        comboMeals.add("Colonel Chicken Rice Combo");
        comboMeals.add("Colonel Burger");
        comboMeals.add("O.R. Fillet Burger");
        comboMeals.add("Zinger Burger");

        return SUCCESS;
    }
}
