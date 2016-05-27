package com.zyy.ssm.service;

import java.util.List;

import com.zyy.ssm.po.Item;

public interface ItemService {
	public List<Item> searchItems(String itemName);
	public List<Item> searchItemsByTab(String itemtab);
	public Item findItemsByEname(String itemename);
}
