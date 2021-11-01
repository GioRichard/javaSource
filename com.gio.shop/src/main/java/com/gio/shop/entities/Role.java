package com.gio.shop.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_roles")
public class Role extends BaseEntity{
	@Column(name = "name", nullable = false)
	private String name ;
	
	@Column(name = "description", nullable = false)
	private String description ;
	
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	@ManyToMany(cascade =  CascadeType.ALL, fetch =  FetchType.EAGER )
	@JoinTable(name = "tbl_users_roles", 
	joinColumns = @JoinColumn(name = "role_id"),
	inverseJoinColumns =  @JoinColumn(name = "user_id"))
	private List<User> users = new ArrayList<User>();
	
	public void addUsers(User user) {
		user.getRoles().add(this);
		users.add(user);
	}
	
	public void deleteUsers(User user) {
		user.getRoles().remove(this);
		users.remove(user);
	}
}
