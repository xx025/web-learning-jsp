package com.lddx.test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class TestHashMap {
    public static void main(String[] args) {
        /*演示HashMap集合的使用
         * ArrayList，HashSet集合都是存储单个数据
         * */

        HashMap<Integer, String> map = new HashMap<Integer, String>();
        //往map中放数据
        map.put(1, "张三");
        map.put(2, "李四");
        map.put(3, "王五");
        map.put(4, "小红");
        System.out.println(map);
        //{1=张三, 2=李四, 3=王五, 4=小红}

        //删除mao中的数据（根据key，删除value）
        map.remove(3);
        System.out.println(map);//{1=张三, 2=李四, 4=小红}

        //根据key来修改value的值，key修改不了
        //将2=李四修改为2=小李
        map.put(2, "小李");
        System.out.println(map);

        //将2=小李修改 22=小李
        map.remove(2);
        map.put(22, "小李");

        //从map集合中获取数据，根据key来获取vaule的值
        System.out.println(map.get(4));


        /*
         * 遍历map集合中所有的数据
         * 先将mao集合中所有的key值放入迭代器当中
         * 使用迭代器可以迭代所有的key值，根据key获得value
         * */
        Set<Integer> set = map.keySet();
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            Integer key = it.next();
            String s = map.get(key);
            System.out.println(s);
        }

    }
}
