package com.dao;

import java.util.List;

import com.model.Product;
import com.model.Cart;

public interface CartDAO {

  void cartsave(Cart cart1);
  List<Cart> cartlist();
Product single_object(int pid);
public void deleteRow(int productId);
}
