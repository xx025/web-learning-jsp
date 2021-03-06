package com.lddx.test;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;

public class TestHashSet {
    public static void main(String[] args) {
        //演示HashSet集合的使用
        HashSet<String> hs = new HashSet<String>();

        System.out.println("********HashSet**********");
        //往集合中添加数据
        hs.add("x");
        hs.add("a");
        hs.add("m");
        hs.add("k");
        System.out.println(hs);//无序的

        hs.add("m");//HashSet不能放重复数据
        System.out.println(hs);

        //删除集合中的数据remove(内容)
        hs.remove("k");
        System.out.println(hs);//[a, x, m]

        //HashSet没有修改数据的方法
        //删除x,添加y
        hs.remove("x");
        hs.add("y");
        System.out.println(hs);


        //将hashSet集合中的所有数据输出
        //方式1：使用for-each循环
        for (String s : hs) {
            System.out.println(s);
        }

        System.out.println("========迭代器========");
        //方式2：使用迭代器的方式
        //先将HashSet集合中的数据放入迭代器中

        Iterator<String> it = hs.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }

        System.out.println("--------------");
        //使用随机数产生四个不重复的验证码
        Random r = new Random();
        HashSet<Integer> hs1 = new HashSet<Integer>();
        //int num = r.nextInt(100);
        //System.out.println(num);

        while (true) {
            int num = r.nextInt(100);//0-100之间的随机数
            hs1.add(num);
            if (hs1.size() >= 4) {
                System.out.println(hs1);
                break;
            }

        }
    }
}
