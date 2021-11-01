package com.gio.shop.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity //can dinh nghia de spring jpa biet
@Table(name = "tbl_category")
public class Categories extends BaseEntity {
	@Column(name = "name", length=100, nullable = false)
	private String name;
	
	@Column(name = "description", length=100, nullable = false)
	private String description;
	
	@Column(name = "seo", length=1000, nullable = true)
	private String seo;
	
	@Column(name = "avatar", length = 500, nullable = true)
	private String avatar;

	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY, mappedBy = "categories")
	private Set<Product> products = new HashSet<Product>();
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER, mappedBy = "parent")
	private Set<Categories> childs = new HashSet<Categories>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	private Categories parent;
	
//	them moi 1 san pham vao @OneToMany
//	this tro toi dung doi tg cua no
	public void addProduct(Product product) {
		products.add(product);
		product.setCategories(this);
	}
	
//	xoa  san pham ra  @OneToMany
	public void deleteProduct(Product product) {
		products.remove(product);
		product.setCategories(null);
	}
public void addProduct(Categories child) {
		
		this.childs.add(child);
		child.setParent(this);
	}
	//xoa moi 1 san pham vao @OneToMany
	//@param product
	public void deleteProduct(Categories child) {
		
		this.childs.remove(child);
		child.setParent(null);
	}
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

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Set<Categories> getChilds() {
		return childs;
	}

	public void setChilds(Set<Categories> childs) {
		this.childs = childs;
	}

	public Categories getParent() {
		return parent;
	}

	public void setParent(Categories parent) {
		this.parent = parent;
	}	
	
}
