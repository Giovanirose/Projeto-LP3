package mack.controllers.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mack.controllers.AbstractController;
import bancodao.Conta;

public class BuscarContaController extends AbstractController {

    public void execute() {
        try {
            this.getRequest().getParameter("numero");
            this.setReturnPage("/listarContasId.jsp");
            this.getRequest().setAttribute("listar_conta", Long.parseLong("213"));
        } catch (Exception ex) {
            Logger.getLogger(ListaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
