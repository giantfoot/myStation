package com.zyy.ssm.service.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;

import com.zyy.ssm.mapper.ItemMapperCustom;
import com.zyy.ssm.po.Item;
import com.zyy.ssm.service.ItemService;

public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemMapperCustom itemMapperCustom;
	@Override
	public List<Item> searchItems(String itemName) {
		
		return itemMapperCustom.findItemsByLikeName(itemName);
	}
	@Override
	public List<Item> searchItemsByTab(String itemtab) {
		
		return itemMapperCustom.findItemsByTab(itemtab);
	}
	@Override
	public Item findItemsByEname(String itemename) {
		
		return itemMapperCustom.findItemsByEname(itemename);
	}

}
