package com.app.config;

import java.awt.Image;
import java.awt.Toolkit;
import java.util.ArrayList;
import javax.swing.Icon;

/**
 * esta Clase se usa para grabar temporalmente valores en variables
 *
 * @author Diego
 */
public class Configuracion {

    private static String COD_USUARIO = "1";
    private static String NOM_USUARIO = "Usuario de Prueba";
    private static String COD_PERFIL = "1";
    private static String NOM_PERFIL = "Perfil de Prueba";
    private static String COD_EMPRESA = "1";
    private static String NOM_EMPRESA = "Empresa de Prueba";
    private static String COD_SUCURSAL = "1";
    private static String NOM_SUCURSAL = "CENTRAL";
    private static String TITULO_MENSAJE = "..:: Mensaje del Sistema ::..";
    private static String TITULO_VENTANA = "SysTema";
    private static int COD_PERIODO;
    
    public static String getCOD_USUARIO() {
        return Configuracion.COD_USUARIO;
    }

    public static void setCOD_USUARIO(String COD_USUARIO) {
        Configuracion.COD_USUARIO = COD_USUARIO;
    }

    public static String getNOM_USUARIO() {
        return Configuracion.NOM_USUARIO.trim();
    }

    public static void setNOM_USUARIO(String NOM_USUARIO) {
        Configuracion.NOM_USUARIO = NOM_USUARIO;
    }

    public static String getCOD_PERFIL() {
        return Configuracion.COD_PERFIL;
    }

    public static void setCOD_PERFIL(String COD_PERFIL) {
        Configuracion.COD_PERFIL = COD_PERFIL;
    }

    public static String getNOM_PERFIL() {
        return Configuracion.NOM_PERFIL.trim();
    }

    public static void setNOM_PERFIL(String NOM_PERFIL) {
        Configuracion.NOM_PERFIL = NOM_PERFIL;
    }

    public static String getCOD_EMPRESA() {
        return Configuracion.COD_EMPRESA;
    }

    public static void setCOD_EMPRESA(String COD_EMPRESA) {
        Configuracion.COD_EMPRESA = COD_EMPRESA;
    }

    public static String getNOM_EMPRESA() {
        return Configuracion.NOM_EMPRESA.trim();
    }

    public static void setNOM_EMPRESA(String NOM_EMPRESA) {
        Configuracion.NOM_EMPRESA = NOM_EMPRESA;
    }

    public static String getCOD_SUCURSAL() {
        return Configuracion.COD_SUCURSAL;
    }

    public static void setCOD_SUCURSAL(String COD_SUCURSAL) {
        Configuracion.COD_SUCURSAL = COD_SUCURSAL;
    }

    public static String getNOM_SUCURSAL() {
        return Configuracion.NOM_SUCURSAL.trim();
    }

    public static void setNOM_SUCURSAL(String NOM_SUCURSAL) {
        Configuracion.NOM_SUCURSAL = NOM_SUCURSAL;
    }

    public static String getTITULO_MENSAJE() {
        return Configuracion.TITULO_MENSAJE;
    }

    public static void setTITULO_MENSAJE(String TITULO_MENSAJE) {
        Configuracion.TITULO_MENSAJE = TITULO_MENSAJE;
    }

    public static String getTITULO_VENTANA() {
        return Configuracion.TITULO_VENTANA;
    }

    public static void setTITULO_VENTANA(String TITULO_VENTANA) {
        Configuracion.TITULO_VENTANA = TITULO_VENTANA;
    }

    public static int getCOD_PERIODO() {
        return COD_PERIODO;
    }

    public static void setCOD_PERIODO(int COD_PERIODO) {
        Configuracion.COD_PERIODO = COD_PERIODO;
    }
}
