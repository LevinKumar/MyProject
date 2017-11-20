package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.SupplierDAO;
import com.model.Category;
import com.model.Supplier;

public class SupplierTest {

	static SupplierDAO supplierDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		supplierDAO=(SupplierDAO)configApplnContext.getBean("supplierDAO");
	}
	
	
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(10);
		supplier.setSupplierName("Royal Furnitures");
		supplier.setSupplierAddress("Chennai");
		
		assertTrue(supplierDAO.addSupplier(supplier));
	}
	
	@Ignore
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupplierId(12);
		supplier.setSupplierName("formal");
		supplier.setSupplierAddress("Chennai");
		
		assertTrue(supplierDAO.addSupplier(supplier));
	}	
	
	@Ignore
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.getSupplierId();
		assertTrue(supplierDAO.deleteSupplier(supplier));
	}
	
	
	
	
	

}
