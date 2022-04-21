package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Ch14Board;
import com.mycompany.webapp.dto.Ch16Account;
import com.mycompany.webapp.dto.Pager;

@Mapper
public interface Ch16AccountDao {
	public List<Ch16Account> selectAll();
	public Ch16Account selectByAno(int ano);
	public int updateBalance(Ch16Account account);
}
