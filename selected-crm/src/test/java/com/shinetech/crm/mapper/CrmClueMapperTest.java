package com.shinetech.crm.mapper;

import com.shinetech.crm.domain.CrmClue;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@FixMethodOrder
public class CrmClueMapperTest {

    CrmClueMapper crmClueMapper;

    @Before
    public void setUp(){
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream("mybatis-conf.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            SqlSession sqlSession = sqlSessionFactory.openSession();

            crmClueMapper = sqlSession.getMapper(CrmClueMapper.class);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(inputStream !=null){
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Test
    public void testSelectCrmClueList(){
        CrmClue crmClue = null;
        List<CrmClue> crmClueList = crmClueMapper.selectCrmClueList(crmClue);

        assertNotNull(crmClueList);
    }

    @Test
    public void testSelectCrmClueById(){
        CrmClue crmClue = crmClueMapper.selectCrmClueById(1L);
        assertNotNull(crmClue);
        assertEquals(crmClue.getName(),"线索1");
    }

    @Test
    @Ignore
    public void testInsertCrmClue(){
        CrmClue crmClue = new CrmClue();
        crmClue.setName("线索4");
        crmClue.setCompany("线索4");
        crmClue.setAddress("address");
        crmClue.setMobile("18600699578");
        crmClue.setEmail("luck_successful@163.com");

        crmClueMapper.insertCrmClue(crmClue);
        assertNotNull("The ClueId should be greater than zero.",crmClue.getClueId());
    }

    @Test
    @Ignore
    public void testUpdateCrmClue(){
        CrmClue crmClue = crmClueMapper.selectCrmClueById(5L);
        crmClue.setName("线索444");

        crmClueMapper.updateCrmClue(crmClue);

        CrmClue modifyCrmClue =crmClueMapper.selectCrmClueById(5L);

        assertEquals("The CrmClue should be 线索444","线索444",modifyCrmClue.getName());
    }

    @Test
    @Ignore
    public void testDelete(){
        int result = crmClueMapper.deleteCrmClue(5L);
        assertEquals("The result should be greater than 0",1,result);
    }

}
