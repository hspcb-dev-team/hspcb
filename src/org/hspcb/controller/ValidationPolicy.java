package org.hspcb.controller;

import java.awt.Toolkit;

import javax.swing.JDialog;
import javax.swing.JOptionPane;

public class ValidationPolicy {

	public static void setInfoMsg(String text){
	    Toolkit.getDefaultToolkit().beep();
	    JOptionPane optionPane = new JOptionPane(text,JOptionPane.INFORMATION_MESSAGE);
	    JDialog dialog = optionPane.createDialog("Information!");
	    dialog.setAlwaysOnTop(true);
	    dialog.setVisible(true);
	}
	
	public static void setErrorMsg(String text){
	    Toolkit.getDefaultToolkit().beep();
	    JOptionPane optionPane = new JOptionPane(text,JOptionPane.ERROR_MESSAGE);
	    JDialog dialog = optionPane.createDialog("Error!");
	    dialog.setAlwaysOnTop(true);
	    dialog.setVisible(true);
	}
	
}
