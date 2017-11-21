package com.zl.Java8;

import java.util.Arrays;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/**
 * Created by Administrator on 2017/11/6.
 */
public class javaStream {
    public static void main(String [] args) {
        List<Integer> numbers = Arrays.asList(3, 2, 2, 3, 7, 3, 5);
// 获取对应的平方数
        List<Integer> squaresList = numbers.stream().map( i -> i*i).distinct().collect(Collectors.toList());
        /*javaStream javaStream = new javaStream();
        List<String> stringlist = Arrays.asList("abc", "", "bc", "efg", "abcd","", "jkl");
        javaStream.StreamString(stringlist);
        javaStream.ParallelStreamString(stringlist);*/
        //List<String> strings = stringlist.stream().filter(string -> !string.isEmpty()).collect(Collectors.toList());

    }
    public void StreamString (List<String> stringllist) {
        Stream<String> strString = stringllist.stream();
        Conlltorstring(strString);
    }
    public void ParallelStreamString (List<String> stringllist) {
        Stream<String> parallelstrString = stringllist.parallelStream();
        Conlltorstring(parallelstrString);
    }
    public void Conlltorstring(Stream<String> strram) {
        List<String> colllist =  strram.filter(string -> !string.isEmpty()).collect(Collectors.toList());;
        Random ints = new Random();
        IntStream intStream =  ints.ints().limit(10);
        intStream.forEach(System.out::println);
    }
}
