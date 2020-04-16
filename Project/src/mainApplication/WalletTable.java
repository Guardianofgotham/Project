package mainApplication;

import controllers.userLoginController;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WalletTable {
    String card_num;
    int total_bill;
    String ordered_at;
    String book_name;
    int no_of_copies;

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }



    public int getNo_of_copies() {
        return no_of_copies;
    }

    public void setNo_of_copies(int no_of_copies) {
        this.no_of_copies = no_of_copies;
    }



    public String getCard_num() {
        return card_num;
    }

    public void setCard_num(String card_num) {
        this.card_num = card_num;
    }

    public int getTotal_bill() {
        return total_bill;
    }

    public void setTotal_bill(int total_bill) {
        this.total_bill = total_bill;
    }

    public String getOrdered_at() {
        return ordered_at;
    }

    public void setOrdered_at(String ordered_at) {
        this.ordered_at = ordered_at;
    }

    public static ResultSet runQueryForWalletTable() throws SQLException {
        String Query = "select * from all_order  where u_id = " +
                userLoginController.currUser.u_id +
                ";";
        ResultSet rs = userLoginController.executer.executeQuery(Query);
        return rs;
    }


    public static WalletTable getNewWalletTable(ResultSet rs) throws SQLException {
        WalletTable h = new WalletTable();
        h.card_num = rs.getString("card_num");
        h.ordered_at = rs.getString("ordered_at");
        h.total_bill = rs.getInt("total_bill");
        h.no_of_copies = rs.getInt("num_copies");
        return h;
    }

    public static ObservableList<WalletTable> getConditionedObservableListForWalletTable(ResultSet rs) throws SQLException {
        ArrayList<WalletTable> tb = new ArrayList<WalletTable>();
        while (rs.next()) {
            tb.add(WalletTable.getNewWalletTable(rs));
        }
        return FXCollections.observableArrayList(tb);
    }

    public static ObservableList<WalletTable> getObservableListForWalletTable() throws SQLException {
        ResultSet rs = WalletTable.runQueryForWalletTable();
        ArrayList<WalletTable> tb = new ArrayList<WalletTable>();
        while (rs.next()) {
            tb.add(WalletTable.getNewWalletTable(rs));
        }
        return FXCollections.observableArrayList(tb);
    }

    @Override
    public String toString() {
        return "WalletTable{" +
                " card_no = " + card_num + '\'' +
                ", total_bill = " + total_bill +
                ", ordered_at = '" + ordered_at + '\'' +
                '}';
    }


}
