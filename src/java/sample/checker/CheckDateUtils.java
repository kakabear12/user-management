/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.checker;

import java.util.Calendar;
import java.util.Scanner;
import java.util.StringTokenizer;

/**
 *
 * @author Xqy
 */
public class CheckDateUtils {
     public static boolean isLeap(int y) {
        boolean result = false;
        if ((y % 400 == 0 || (y % 4 == 0 && y % 100 != 0))) {
            result = true;
        }
        return result;
    }

    //testing whether the y,m,d is a valid date value or not
    public static boolean valid(int y, int m, int d) {
        if (y < 0 || m < 0 || m > 12 || d < 0 || d > 31) {
            return false;
        }
        int maxD = 31;
        if (m == 4 || m == 6 || m == 9 || m == 11) {
            maxD = 30;
        } else if (m == 2) {
            if (isLeap(y)) {
                maxD = 29;
            } else {
                maxD = 28;
            }
        }
        return d <= maxD;
    }

}
