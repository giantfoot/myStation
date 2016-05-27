package com.zyy.ssm.mapper;

import java.util.List;

import com.zyy.ssm.po.Item;

public interface ItemMapperCustom {
	public List<Item> findItemsByLikeName(String itemName);
	public List<Item> findItemsByTab(String itemtab);
	public Item findItemsByEname(String itemename);
}
