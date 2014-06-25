package com.immutable.alias.dao.impl;

import org.springframework.stereotype.Repository;

@Repository("helloDao")
public class HelloDao {

	public void insert(){
		System.out.println("hello==========this is insert");
	}
}
