package com.limn.update.server.dao.impl;

import com.limn.update.server.bean.CoordinateVO;
import com.limn.update.server.dao.BaseDao;
import com.limn.update.server.dao.EleShopDao;
import com.limn.update.server.entity.EleShopEntity;
import org.apache.poi.ss.formula.functions.T;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by limengnan on 2017/11/30.
 */

@Repository
@Transactional
public class EleShopDaoImpl extends BaseDaoImpl<EleShopEntity> implements EleShopDao {

    @Autowired
    public void setDao(BaseDao<EleShopEntity> dao) {
        super.setDao(dao);
    }

    @Override
    public List<EleShopEntity> getNoAnalysisShopJson() {
        Session session = createSession();
        Query query = session.createQuery("from com.limn.update.server.entity.EleShopEntity where isAnalysis = 0" );
        query.setMaxResults(20);
        List<EleShopEntity> eleShopJsonEntities = query.list();
        session.close();
        return eleShopJsonEntities;
    }

    @Override
    public List<EleShopEntity> getShopsByName(String name) {
        Query query = getSession().createQuery("from com.limn.update.server.entity.EleShopEntity where name like ?");
        query.setParameter(0,"%"+name+"%");
        List<EleShopEntity> shops = query.list();
        return shops;
    }

}
