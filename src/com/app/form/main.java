/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.form;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

/**
 *
 * @author Diego
 */
public class main {

    public static void main(String[] args) {
        try {
            backup ven = new backup();
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
            ven.setVisible(true);
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException e) {
            System.out.println("Error en LookAndFeel");
        }
    }
}
