package org.correttouml.uml2zot;

import java.awt.EventQueue;

import javax.swing.JFrame;
import java.awt.Choice;
import javax.swing.JTextField;
import javax.swing.BoxLayout;
import javax.swing.JLayeredPane;

import org.correttouml.uml2zot.semantics.util.bool.And;
import org.correttouml.uml2zot.semantics.util.trio.Futr;
import org.correttouml.uml2zot.semantics.util.trio.Predicate;

import java.awt.Label;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class HCC extends JFrame {
	private JTextField tx1;
	private JTextField tx2;
	private JTextField tx3;
	private JTextField tx4;
	private JTextField tx7;
	private JTextField tx8;
	private JTextField tx6;
	private JTextField tx5;
	private JTextField tx11;
	private JTextField tx12;
	private JTextField tx10;
	private JTextField tx9;
	ArrayList<Choice> ch = new ArrayList<Choice>();
	ArrayList<JTextField> tx = new ArrayList<JTextField>();
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
	
@Override
public void run() {
				try {
					HCC frame = new HCC();
					frame.setVisible(true);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		
	}

	/**
	 * Create the frame.
	 * @throws IOException 
	 */
	public HCC() throws IOException {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 858, 647);
		getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.X_AXIS));
		
		JLayeredPane layeredPane = new JLayeredPane();
		getContentPane().add(layeredPane);
		
		Label label = new Label("Time 2");
		label.setBounds(10, 69, 62, 22);
		layeredPane.add(label);
		
		Label label_1 = new Label("Time 1");
		label_1.setBounds(10, 24, 62, 22);
		layeredPane.add(label_1);
		
		Choice ch1 = new Choice();
		ch1.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent arg0) {
				tx1.setText(tx1.getText() + " " + arg0.getItem().toString());
			}
		});
		
		ch1.setBounds(78, 24, 302, 20);
		layeredPane.add(ch1);
		
		Label label_2 = new Label("Time 3");
		label_2.setBounds(10, 114, 62, 22);
		layeredPane.add(label_2);
		
		Label label_3 = new Label("Time 4");
		label_3.setBounds(10, 159, 62, 22);
		layeredPane.add(label_3);
		
		Label label_4 = new Label("Time 5");
		label_4.setBounds(10, 204, 62, 22);
		layeredPane.add(label_4);
		
		Label label_5 = new Label("Time 6");
		label_5.setBounds(10, 249, 62, 22);
		layeredPane.add(label_5);
		
		Label label_6 = new Label("Time 7");
		label_6.setBounds(10, 294, 62, 22);
		layeredPane.add(label_6);
		
		Label label_7 = new Label("Time 8");
		label_7.setBounds(10, 339, 62, 22);
		layeredPane.add(label_7);
		
		Choice ch2 = new Choice();
		ch2.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx2.setText(tx2.getText() + " " + e.getItem().toString());
			}
		});
		ch2.setBounds(78, 69, 302, 20);
		layeredPane.add(ch2);
		
		Choice ch4 = new Choice();
		ch4.setBounds(78, 159, 302, 20);
		layeredPane.add(ch4);
		
		Choice ch3 = new Choice();
		ch3.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx3.setText(tx3.getText() + " " + e.getItem().toString());
			}
		});
		ch4.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx4.setText(tx4.getText() + " " + e.getItem().toString());
			}
		});

		
		
		ch3.setBounds(78, 114, 302, 20);
		layeredPane.add(ch3);
		
		Choice ch8 = new Choice();
		ch8.setBounds(78, 339, 302, 20);
		layeredPane.add(ch8);
		
		Choice ch7 = new Choice();
		ch7.setBounds(78, 294, 302, 20);
		layeredPane.add(ch7);
		
		Choice ch6 = new Choice();
		ch6.setBounds(78, 249, 302, 20);
		layeredPane.add(ch6);
		
		Choice ch5 = new Choice();
		ch5.setBounds(78, 204, 302, 20);
		layeredPane.add(ch5);
		
		Choice ch12 = new Choice();
		ch12.setBounds(78, 519, 302, 20);
		layeredPane.add(ch12);
		
		Choice ch11 = new Choice();
		ch11.setBounds(78, 474, 302, 20);
		layeredPane.add(ch11);
		
		Choice ch10 = new Choice();
		ch10.setBounds(78, 429, 302, 20);
		layeredPane.add(ch10);
		
		Choice ch9 = new Choice();
		ch9.setBounds(78, 384, 302, 20);
		layeredPane.add(ch9);
		
		Label label_8 = new Label("Time 12");
		label_8.setBounds(10, 519, 62, 22);
		layeredPane.add(label_8);
		
		Label label_9 = new Label("Time 11");
		label_9.setBounds(10, 474, 62, 22);
		layeredPane.add(label_9);
		
		Label label_10 = new Label("Time 10");
		label_10.setBounds(10, 429, 62, 22);
		layeredPane.add(label_10);
		
		Label label_11 = new Label("Time 9");
		label_11.setBounds(10, 384, 62, 22);
		layeredPane.add(label_11);
		
		tx1 = new JTextField();
		tx1.setBounds(393, 24, 288, 20);
		layeredPane.add(tx1);
		tx1.setColumns(10);
		
		tx2 = new JTextField();
		tx2.setColumns(10);
		tx2.setBounds(393, 69, 288, 20);
		layeredPane.add(tx2);
		
		tx3 = new JTextField();
		tx3.setColumns(10);
		tx3.setBounds(393, 114, 288, 20);
		layeredPane.add(tx3);
		
		tx4 = new JTextField();
		tx4.setColumns(10);
		tx4.setBounds(393, 159, 288, 20);
		layeredPane.add(tx4);
		
		tx7 = new JTextField();
		tx7.setColumns(10);
		tx7.setBounds(393, 294, 288, 20);
		layeredPane.add(tx7);
		
		tx8 = new JTextField();
		tx8.setColumns(10);
		tx8.setBounds(393, 339, 288, 20);
		layeredPane.add(tx8);
		
		tx6 = new JTextField();
		tx6.setColumns(10);
		tx6.setBounds(393, 249, 288, 20);
		layeredPane.add(tx6);
		
		tx5 = new JTextField();
		tx5.setColumns(10);
		tx5.setBounds(393, 204, 288, 20);
		layeredPane.add(tx5);
		
		tx11 = new JTextField();
		tx11.setColumns(10);
		tx11.setBounds(393, 474, 288, 20);
		layeredPane.add(tx11);
		
		tx12 = new JTextField();
		tx12.setColumns(10);
		tx12.setBounds(393, 519, 288, 20);
		layeredPane.add(tx12);
		
		tx10 = new JTextField();
		tx10.setColumns(10);
		tx10.setBounds(393, 429, 288, 20);
		layeredPane.add(tx10);
		
		tx9 = new JTextField();
		tx9.setColumns(10);
		tx9.setBounds(393, 384, 288, 20);
		layeredPane.add(tx9);
		ch.add(ch1);
		ch.add(ch2);
		ch.add(ch3);
		ch.add(ch4);
		ch.add(ch5);
		ch.add(ch6);
		ch.add(ch7);
		ch.add(ch8);
		ch.add(ch9);
		ch.add(ch10);
		ch.add(ch11);
		ch.add(ch12);
		
		tx.add(tx1);
		tx.add(tx2);
		tx.add(tx3);
		tx.add(tx4);
		tx.add(tx5);
		tx.add(tx6);
		tx.add(tx7);
		tx.add(tx8);
		tx.add(tx9);
		tx.add(tx10);
		tx.add(tx11);
		tx.add(tx12);
		JButton btnNewButton = new JButton("Generate Spec");
		btnNewButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				try {
					FileWriter msgsfile = new FileWriter(new File("D:/education/project back up/CorrettoUML/CorrettoUML/org.correttouml.uml2zot/tmp/Spec.txt"));
					BufferedWriter msgsfileout = new BufferedWriter(msgsfile);
					msgsfileout.append("(defvar spec\n(&&\n");
					
					
					for (int i = 0; i < 12; i++) {
						String text = tx.get(i).getText(); 
						if (text.length() > 1) {
							ArrayList<String> msgs = new ArrayList<String>();
							String[] temp = new String[10]; 
							temp = text.split(" ");
							ArrayList<Predicate> msgprd = new ArrayList<Predicate>();
							for (String stemp:temp) {
								if (!stemp.contains(" ") && stemp.length()>1)
									msgprd.add(new Predicate(stemp));
							}
							if (msgprd.size()>0) {
							String linee = 	"\t"+new Futr(new And(msgprd), i+1).toString()+"\n";
								msgsfileout.append(linee);
							}
						}
					}
					msgsfileout.append("))");
					msgsfileout.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});
		btnNewButton.setBounds(339, 564, 112, 23);
		layeredPane.add(btnNewButton);
		for(Choice choice : ch) {
			choice.add("");}
		File msgsfile=new File("D:/education/project back up/CorrettoUML/CorrettoUML/org.correttouml.uml2zot/tmp/MessagesNames.txt");
		FileReader file_reader=new FileReader(msgsfile);
		BufferedReader reader=new BufferedReader(file_reader);
		String line = reader.readLine();
		do {
		for(Choice choice : ch) {
			choice.add(line);
		}
		line = reader.readLine();
		}while(line!=null);
		ch5.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx5.setText(tx5.getText() + " " + e.getItem().toString());
			}
		});
		ch6.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx6.setText(tx6.getText() + " " + e.getItem().toString());
			}
		});
		ch7.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx7.setText(tx7.getText() + " " + e.getItem().toString());
			}
		});
		ch8.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx8.setText(tx8.getText() + " " + e.getItem().toString());
			}
		});
		ch9.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx9.setText(tx9.getText() + " " + e.getItem().toString());
			}
		});
		ch10.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx10.setText(tx10.getText() + " " + e.getItem().toString());
			}
		});
		ch11.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx11.setText(tx11.getText() + " " + e.getItem().toString());
			}
		});
		ch12.addItemListener(new ItemListener() {
			@Override
			public void itemStateChanged(ItemEvent e) {
				tx12.setText(tx12.getText() + " " + e.getItem().toString());
			}
		});
	
//	public void events() {
//		int i = 0;
//		for(Choice choice : ch) {
//			final int index = i;
//			final JTextField jtx = tx.get(i);
//		choice.addItemListener(new ItemListener() {
//			public void itemStateChanged(ItemEvent arg0) {
//				jtx.setText(jtx.getText() + " " + arg0.getItem().toString());
//			}
//		});
//		i++;
//		}
//	}

	}
}