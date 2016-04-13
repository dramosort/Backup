package com.app.paleta;

import com.app.clases.ClaseHora;
import java.awt.Dimension;
import javax.swing.JLabel;

/**
 *
 * @author Diego
 */
public class JLabelHoraHMS extends javax.swing.JLabel implements Runnable {

    public RelojHMS mostrasHora;

    public JLabelHoraHMS() {
        this.setPreferredSize(new Dimension(50, 20));
        this.setToolTipText("Hora actual del sistema");
        this.setText("Hora");
        mostrasHora = new RelojHMS(this);
    }

    public void stop() {
        this.mostrasHora.stop();
    }

    @Override
    public void run() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private class RelojHMS extends Thread {

        private final JLabel lbHora;

        /**
         * metodo que arranca el Thread Reloj, recibe un parametro: el jLabel
         * donde va a mostrar la hora en formato HH:MM:SS
         *
         * @param lbHora
         */
        public RelojHMS(JLabel lbHora) {
            this.lbHora = lbHora;
            this.start();
        }

        @Override
        public void run() {
            while (true) {
                lbHora.setText(ClaseHora.getHoraActualHMS());
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                }
            }
        }
    }
}
