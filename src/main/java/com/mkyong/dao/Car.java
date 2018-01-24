package com.mkyong.dao;

public class Car {

    private String color;
    private int length;
    private int doors;

    public Car(String color, int length, int doors) {
        this.color = color;
        this.length = length;
        this.doors = doors;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getDoors() {
        return doors;
    }

    public void setDoors(int doors) {
        this.doors = doors;
    }
}
