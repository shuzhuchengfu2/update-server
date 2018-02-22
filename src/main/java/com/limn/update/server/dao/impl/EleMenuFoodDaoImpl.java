package com.limn.update.server.dao.impl;

import com.limn.update.server.dao.BaseDao;
import com.limn.update.server.dao.EleMenuFoodDao;
import com.limn.update.server.entity.EleMenuFoodEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class EleMenuFoodDaoImpl extends BaseDaoImpl<EleMenuFoodEntity> implements EleMenuFoodDao {
    @Autowired
    public void setDao(BaseDao<EleMenuFoodEntity> dao) {
        super.setDao(dao);
    }
}
