package controledeentregas.view;

import br.com.agenda.modelo.design.JanelaPrincipal;
import controledeentregas.controller.LanguageResources;
import controledeentregas.controller.Relogio;
import controledeentregas.view.listener.FrameMainListener;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import static javax.swing.JFrame.setDefaultLookAndFeelDecorated;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import org.jvnet.substance.SubstanceLegacyDefaultLookAndFeel;
import org.jvnet.substance.skin.SubstanceEmeraldDuskLookAndFeel;
import org.jvnet.substance.skin.SubstanceMagmaLookAndFeel;
import org.jvnet.substance.skin.SubstanceOfficeBlue2007LookAndFeel;
import org.jvnet.substance.skin.SubstanceOfficeSilver2007LookAndFeel;
import org.jvnet.substance.skin.SubstanceRavenGraphiteLookAndFeel;
import org.jvnet.substance.skin.SubstanceRavenLookAndFeel;

public class FrameMain extends JFrame{

    private static final long serialVersionUID = 1L;
    private JMenuBar bar;
    private JMenu register, deliverys, menuReports;
    private JMenuItem manageDelivery;
    private JMenuItem itemReportDeliveries;
    private JMenuItem itemReportNumberDeliveriesForProducts;
    private FrameMainListener menuListener;
    private JMenu _jMenuSkin;
    private JMenuItem _jMenuItemSkin1;
	private JMenuItem _jMenuItemSkin2;
	private JMenuItem _jMenuItemSkin3;
	private JMenuItem _jMenuItemSkin4;
	private JMenuItem _jMenuItemSkin5;
	private JMenuItem _jMenuItemSkin6;

    public FrameMain(FrameMainListener listener) {
        this.menuListener = listener;
        initFrame();
        
        
        JButton jButtonCadastrar = new JButton("Produtos");
        jButtonCadastrar.setBackground(Color.LIGHT_GRAY);
        jButtonCadastrar.setForeground(Color.red);
        jButtonCadastrar.setFont(new Font("",Font.BOLD,12));
        jButtonCadastrar.setSize(350,80);
        jButtonCadastrar.setIcon(new ImageIcon(getClass().getResource("/imagens/iconeproduto.png")));
        jButtonCadastrar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                     menuListener.frameListProduct();
            }
        });

        JButton jButtonPesquisar = new JButton("Situação");
        jButtonPesquisar.setBackground(Color.LIGHT_GRAY);
        jButtonPesquisar.setForeground(Color.red);
        jButtonPesquisar.setSize(350,80);
        jButtonPesquisar.setIcon(new ImageIcon(getClass().getResource("/imagens/situacao.png")));
        jButtonPesquisar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                menuListener.frameListSituations();
            }
        });
        JButton jButtonEntregas = new JButton("Entregas");
	jButtonEntregas.setBackground(Color.LIGHT_GRAY);
	jButtonEntregas.setForeground(Color.red);
        jButtonPesquisar.setSize(350,80);
	jButtonEntregas.setIcon(new ImageIcon(getClass().getResource("/imagens/entrega1.png")));
	jButtonEntregas.addActionListener(new ActionListener(){

			public void actionPerformed(ActionEvent e) {
					 menuListener.frameListDeliverys();		
			}
			
		});
        
        JButton jButtonRelatorios = new JButton("Relatorios");
	jButtonRelatorios.setBackground(Color.LIGHT_GRAY);
	jButtonRelatorios.setForeground(Color.red);
        jButtonRelatorios.setSize(350,80);
	jButtonRelatorios.setIcon(new ImageIcon(getClass().getResource("/imagens/relatorio.png")));
	jButtonRelatorios.addActionListener(new ActionListener(){

			public void actionPerformed(ActionEvent e) {
				 menuListener.frameReportDeliveries();			
			}
			
		});
        JButton jButtonAgenda = new JButton("Agenda");
        jButtonAgenda.setBackground(Color.LIGHT_GRAY);
        jButtonAgenda.setForeground(Color.red);
        jButtonAgenda.setSize(350, 80);
        jButtonAgenda.setIcon(new ImageIcon(getClass().getResource("/imagens/agenda.png")));
        jButtonAgenda.addActionListener(new ActionListener() {

            public void actionPerformed(ActionEvent e) {
                JanelaPrincipal j = new JanelaPrincipal();
                                j.setVisible(true);

               
                
            }

        });
        
          

                // dispose();
             /*   Desktop desktop = null;
                desktop = Desktop.getDesktop();
                URI uri = null;
                try {
                    uri = new URI("https://www.facebook.com/nayrondosanjos");
                    desktop.browse(uri);
                } catch (IOException ioe) {
                    ioe.printStackTrace();
                } catch (URISyntaxException ex) {
                    Logger.getLogger(FrameMain.class.getName()).log(Level.SEVERE, null, ex);
                }
           */
        
        JButton jButtonSair = new JButton("sair");
	jButtonSair.setBackground(Color.LIGHT_GRAY);
	jButtonSair.setForeground(Color.red);
        jButtonSair.setSize(350,80);
	jButtonSair.setIcon(new ImageIcon(getClass().getResource("/imagens/sair.png")));
	jButtonSair.addActionListener(new ActionListener(){

			public void actionPerformed(ActionEvent e) {
                            System.exit(0);
			}
			
		});
        
        add(jButtonCadastrar);
        add(jButtonPesquisar);
        add(jButtonEntregas);
        add(jButtonRelatorios);
        add(jButtonAgenda);
        add(jButtonSair);
       setLayout( new FlowLayout() );
       setLookAndFeel("OfficeBlue2007");
       
       
                

    }
    JLabel imagem;

    public void initFrame() {
        setExtendedState(MAXIMIZED_BOTH);
        setSize(800, 800);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setTitle(LanguageResources.getResource("delivery_control"));
        Container panel = getContentPane();
        ImageIcon icone = new ImageIcon("C:\\Users\\Náyron dos Anjos\\Documents\\NetBeansProjects\\ProjetoTeste\\src\\imagens\\entrega.png");
        imagem = new JLabel(icone);
        panel.add(imagem);
        setSize(1264, 630);
        setVisible(true);
        BorderLayout layout = new BorderLayout();
        panel.setLayout(layout);
        setJMenuBar(getBar());

        addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                if (Messages.getMessageOptionCloseSystem()) {
                    dispose();
                } else {
                    setDefaultCloseOperation(JDialog.DO_NOTHING_ON_CLOSE);
                }
            }
        });

        

    }
    
   
    
    public JMenuBar getBar() {
        if (bar == null) {
            bar = new JMenuBar();
            bar.add(getRegister());
            bar.add(getDelivery());
            bar.add(getMenuReports());
            
        }
        return bar;
    }

    public JMenu getRegister() {
        if (register == null) {
            register = new JMenu(LanguageResources.getResource("registrations"));
            JMenuItem opRegisterSituation = new JMenuItem(LanguageResources.getResource("situations"));
            JMenuItem opRegisterProduct = new JMenuItem(LanguageResources.getResource("products"));
            opRegisterProduct.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    menuListener.frameListProduct();
                }
            });
            opRegisterSituation.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    menuListener.frameListSituations();
                }
            });
            register.add(opRegisterProduct);
            register.add(opRegisterSituation);
        }
        return register;
    }

    public JMenu getDelivery() {
        if (deliverys == null) {
            deliverys = new JMenu(LanguageResources.getResource("deliveries"));
            deliverys.add(getManageDelivery());
        }
        return deliverys;
    }

    public JMenuItem getManageDelivery() {
        if (manageDelivery == null) {
            manageDelivery = new JMenuItem(LanguageResources.getResource("manage_deliveries"));
            manageDelivery.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    menuListener.frameListDeliverys();
                }
            });
        }
        return manageDelivery;
    }
    

    private JMenu getMenuReports() {
        if (menuReports == null) {
            menuReports = new JMenu(LanguageResources.getResource("reports"));
            menuReports.add(getItemReportDeliveries());
            menuReports.add(getItemReportNumberDeliveriesForProducts());
        }
        return menuReports;
    }

    private JMenuItem getItemReportDeliveries() {
        if (itemReportDeliveries == null) {
            itemReportDeliveries = new JMenuItem(LanguageResources.getResource("deliveries_for_situation"));
            itemReportDeliveries.addActionListener(new ActionListener() {

                @Override
                public void actionPerformed(ActionEvent arg0) {
                    menuListener.frameReportDeliveries();
                }
            });
        }
        return itemReportDeliveries;
    }

    public JMenuItem getItemReportNumberDeliveriesForProducts() {
        if (itemReportNumberDeliveriesForProducts == null) {
            itemReportNumberDeliveriesForProducts = new JMenuItem(LanguageResources.getResource("exit"));

            itemReportNumberDeliveriesForProducts.addActionListener(new ActionListener() {

                @Override
                public void actionPerformed(ActionEvent arg0) {
                   // menuListener.frameReportNumberDeliveriesForProducts();
                    System.exit(0);
                }
            });
        }
        return itemReportNumberDeliveriesForProducts;
    }
    private JMenuItem getJMenuItemSkin1(){
		if(_jMenuItemSkin1 == null){
			_jMenuItemSkin1 = new JMenuItem("Esmeralda");
			_jMenuItemSkin1.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin1.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("Esmeralda");					
				}				
			});
		}
		return _jMenuItemSkin1;		
	}
	
	private JMenuItem getJMenuItemSkin2(){
		if(_jMenuItemSkin2 == null){
			_jMenuItemSkin2 = new JMenuItem("OfficeBlue2007");
			_jMenuItemSkin2.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin2.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("OfficeBlue2007");					
				}				
			});
		}
		return _jMenuItemSkin2;		
	}
	
	private JMenuItem getJMenuItemSkin3(){
		if(_jMenuItemSkin3 == null){
			_jMenuItemSkin3 = new JMenuItem("Legacy");
			_jMenuItemSkin3.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin3.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("Legacy");					
				}				
			});
		}
		return _jMenuItemSkin3;		
	}
	
	private JMenuItem getJMenuItemSkin4(){
		if(_jMenuItemSkin4 == null){
			_jMenuItemSkin4 = new JMenuItem("OfficeSilver2007");
			_jMenuItemSkin4.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin4.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("OfficeSilver2007");					
				}				
			});
		}
		return _jMenuItemSkin4;		
	}
	
	private JMenuItem getJMenuItemSkin5(){
		if(_jMenuItemSkin5 == null){
			_jMenuItemSkin5 = new JMenuItem("Magma");
			_jMenuItemSkin5.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin5.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("Magma");					
				}				
			});
		}
		return _jMenuItemSkin5;		
	}
	
	private JMenuItem getJMenuItemSkin6(){
		if(_jMenuItemSkin6 == null){
			_jMenuItemSkin6 = new JMenuItem("Raven");
			_jMenuItemSkin6.setBackground(Color.LIGHT_GRAY);
			_jMenuItemSkin6.addActionListener(new ActionListener(){
				public void actionPerformed(ActionEvent e) {
					defineLookAndFeel("Raven");					
				}				
			});
		}
		return _jMenuItemSkin6;		
	}
        private void defineLookAndFeel(String lf) {
		FrameMain.setLookAndFeel(lf);	
		
	}
    
    public static void setLookAndFeel(String lookAndFeel){				
		setDefaultLookAndFeelDecorated(true);
	    try {
	    	if (lookAndFeel.equals("Esmeralda")){
                        UIManager.setLookAndFeel(new SubstanceEmeraldDuskLookAndFeel());
			}else if (lookAndFeel.equals("OfficeBlue2007")){
                        UIManager.setLookAndFeel(new SubstanceOfficeBlue2007LookAndFeel());
			}else if (lookAndFeel.equals("Legacy")){
		    	UIManager.setLookAndFeel(new SubstanceLegacyDefaultLookAndFeel());				
			}else if (lookAndFeel.equals("OfficeSilver2007")){
	    		UIManager.setLookAndFeel(new SubstanceOfficeSilver2007LookAndFeel());
			}else if (lookAndFeel.equals("Magma")){
				UIManager.setLookAndFeel(new SubstanceMagmaLookAndFeel());
			}else if (lookAndFeel.equals("Raven")){
		    		UIManager.setLookAndFeel(new SubstanceRavenLookAndFeel());
			}else if (lookAndFeel.equals("RavenGraphite")){
                                UIManager.setLookAndFeel(new SubstanceRavenGraphiteLookAndFeel());
                        }
	    } catch (Exception e) {
	    	JOptionPane.showMessageDialog(null, 
					"Substance LookAndFeel failed to initialize!", 
					"Erro!", JOptionPane.WARNING_MESSAGE);
	    }
	}
}
