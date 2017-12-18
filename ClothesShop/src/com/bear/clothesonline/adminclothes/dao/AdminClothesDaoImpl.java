package com.bear.clothesonline.adminclothes.dao;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.bear.clothesonline.entity.Clothes;
import com.bear.clothesonline.entity.ClothesDetail;
import com.bear.clothesonline.entity.ClothesType;
@Repository
public class AdminClothesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/*查询clothesDetail表的所有详细信息*/
	@SuppressWarnings("unchecked")
	public List<ClothesDetail> findAll1(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesDetail");
		return q.list();
	}
	
	/*管理员向数据库中添加商品*/
	public void saveClothes(ClothesDetail cd,String clothesType) {
		//获得Session
		Session session = this.sessionFactory.getCurrentSession();
		//通过类型名称查询记录
		ClothesType clothestype = this.findAllType1(clothesType);
		//创建Clothes类的对象，并给其所有属性赋值
		Clothes clothes = new Clothes();
		clothes.setName(cd.getClothesname());
		clothes.setImg1(cd.getImg1());
		clothes.setPrice(cd.getClothesprice());
		clothes.setClothesType(clothestype);
		//将商品和商品详情之间建立联系
		clothes.setClothesDetail(cd);
		cd.setClothes(clothes);
		//保存衣服的对象和衣服详情的对象到数据库中
		session.save(cd);
		session.save(clothes);
	}
	
	/*管理员对数据库中的商品进行删除*/
	public void deleteClothes(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		//根据衣服详情的id值查询出对应的对象
		Query q = session.createQuery("from ClothesDetail where clothesdetailsid=?");
		q.setParameter(0, id);
		ClothesDetail cd = (ClothesDetail) q.uniqueResult();
		//将该对象删除
		session.delete(cd);
	}
	
	/*管理员修改数据库中的商品*/
	public void updateClothes(ClothesDetail cd,int typeid) {
		//获得session
		Session session = this.sessionFactory.getCurrentSession();
		//通过衣服类型的id值查询记录
		ClothesType clothestype = this.findAllType2(typeid);
		//通过ClothesDetail的对象获取Clothes对象，并给clothes对象中的属性重新赋值
		Clothes clothes = cd.getClothes();
		clothes.setName(cd.getClothesname());
		clothes.setImg1(cd.getImg1());
		clothes.setClothesType(clothestype);
		//将衣服和衣服详情之间建立联系
		clothes.setClothesDetail(cd);
		cd.setClothes(clothes);
		//更新衣服的对象和衣服详情的对象
		session.update(cd);
		session.update(clothes);
	}
	
	/*根据类型名称typename查询记录*/
	public ClothesType findAllType1(String typename){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesType where name=?");
		q.setParameter(0, typename);
		return (ClothesType) q.uniqueResult();
	}
	/*根据typeid查询clothestype表的信息*/
	public ClothesType findAllType2(int typeid){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesType where clothestypeid=?");
		q.setParameter(0, typeid);
		return (ClothesType) q.uniqueResult();
	}
	@SuppressWarnings("unchecked")
	public List<ClothesDetail> findAllBookdetail(int clothesid){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesDetail where clothesdetailsid=?");
		q.setParameter(0, clothesid);
		return q.list();
	}
}
