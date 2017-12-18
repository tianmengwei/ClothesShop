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
	/*��ѯclothesDetail���������ϸ��Ϣ*/
	@SuppressWarnings("unchecked")
	public List<ClothesDetail> findAll1(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesDetail");
		return q.list();
	}
	
	/*����Ա�����ݿ��������Ʒ*/
	public void saveClothes(ClothesDetail cd,String clothesType) {
		//���Session
		Session session = this.sessionFactory.getCurrentSession();
		//ͨ���������Ʋ�ѯ��¼
		ClothesType clothestype = this.findAllType1(clothesType);
		//����Clothes��Ķ��󣬲������������Ը�ֵ
		Clothes clothes = new Clothes();
		clothes.setName(cd.getClothesname());
		clothes.setImg1(cd.getImg1());
		clothes.setPrice(cd.getClothesprice());
		clothes.setClothesType(clothestype);
		//����Ʒ����Ʒ����֮�佨����ϵ
		clothes.setClothesDetail(cd);
		cd.setClothes(clothes);
		//�����·��Ķ�����·�����Ķ������ݿ���
		session.save(cd);
		session.save(clothes);
	}
	
	/*����Ա�����ݿ��е���Ʒ����ɾ��*/
	public void deleteClothes(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		//�����·������idֵ��ѯ����Ӧ�Ķ���
		Query q = session.createQuery("from ClothesDetail where clothesdetailsid=?");
		q.setParameter(0, id);
		ClothesDetail cd = (ClothesDetail) q.uniqueResult();
		//���ö���ɾ��
		session.delete(cd);
	}
	
	/*����Ա�޸����ݿ��е���Ʒ*/
	public void updateClothes(ClothesDetail cd,int typeid) {
		//���session
		Session session = this.sessionFactory.getCurrentSession();
		//ͨ���·����͵�idֵ��ѯ��¼
		ClothesType clothestype = this.findAllType2(typeid);
		//ͨ��ClothesDetail�Ķ����ȡClothes���󣬲���clothes�����е��������¸�ֵ
		Clothes clothes = cd.getClothes();
		clothes.setName(cd.getClothesname());
		clothes.setImg1(cd.getImg1());
		clothes.setClothesType(clothestype);
		//���·����·�����֮�佨����ϵ
		clothes.setClothesDetail(cd);
		cd.setClothes(clothes);
		//�����·��Ķ�����·�����Ķ���
		session.update(cd);
		session.update(clothes);
	}
	
	/*������������typename��ѯ��¼*/
	public ClothesType findAllType1(String typename){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from ClothesType where name=?");
		q.setParameter(0, typename);
		return (ClothesType) q.uniqueResult();
	}
	/*����typeid��ѯclothestype�����Ϣ*/
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
