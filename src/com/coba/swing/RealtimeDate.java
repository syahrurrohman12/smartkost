/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.coba.swing;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.swing.JLabel;

public class RealtimeDate extends JLabel implements Runnable {

    private SimpleDateFormat dateFormat;

    public RealtimeDate() {
        super();
        dateFormat = new SimpleDateFormat("  MMM, dd      HH:mm", Locale.ENGLISH);
        setText(getFormattedDate());
        Thread updaterThread = new Thread(this);
        updaterThread.start();
    }

    private String getFormattedDate() {
        return dateFormat.format(new Date());
    }

    @Override
    public void run() {
        while (true) {
            setText(getFormattedDate());
            try {
                // Update every second (1000 milliseconds)
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
