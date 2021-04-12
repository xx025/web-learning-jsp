package com.lddx.javabean;


//javaBean类
public class Student {
    //特征= 属性
    private int id;
    private String name;
    private int age;
//无参构造方法

    public Student() {
    }
    //有参构造方法

    public Student(int id, String name, int age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    //添加私有属性的get、set方法

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}

