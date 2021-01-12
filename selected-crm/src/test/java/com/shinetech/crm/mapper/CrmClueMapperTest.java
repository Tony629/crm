package com.shinetech.crm.mapper;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shinetech.crm.domain.CrmClue;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.*;
import org.junit.runners.MethodSorters;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@FixMethodOrder(MethodSorters.JVM)
@Ignore
public class CrmClueMapperTest {

    CrmClueMapper crmClueMapper;

    SqlSession sqlSession;

    @Before
    public void setUp() {
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream("mybatis-conf.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            sqlSession = sqlSessionFactory.openSession();

            crmClueMapper = sqlSession.getMapper(CrmClueMapper.class);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    @Test
    public void testInsertCrmClue() {
        trunateTable();

        CrmClue crmClue = new CrmClue();
        crmClue.setName("线索1");
        crmClue.setCompany("线索1");
        crmClue.setAddress("address");
        crmClue.setMobile("18600699578");
        crmClue.setQq("1304874346");
        crmClue.setWechat("18600699578");
        crmClue.setEmail("luck_successful@163.com");
        crmClue.setCreateBy("==test==");
        crmClue.setClueStatus("0");
        crmClue.setBelongTo("administrator");
        crmClue.setDelFlag("0");

        crmClueMapper.insertCrmClue(crmClue);
        assertNotNull("The ClueId should be greater than zero.", crmClue.getClueId());
    }

    @Test
    public void testSelectCrmClueList() {

        CrmClue crmClue = new CrmClue();
        crmClue.setName("新东方教育");

        PageHelper.startPage(1, 10);
        List<CrmClue> crmClueList = crmClueMapper.selectCrmClueList(crmClue);

        PageInfo<CrmClue> pageInfo = new PageInfo<>(crmClueList);

        assertNotNull(crmClueList);
        assertEquals(1, crmClueList.size());
        assertEquals(1, pageInfo.getTotal());
    }

    @Test
    public void testSelectCrmClueById() {
        CrmClue crmClue = crmClueMapper.selectCrmClueById(1L);
        assertNotNull(crmClue);
        assertEquals(crmClue.getName(), "线索1");
        assertEquals(crmClue.getEmail(), "luck_successful@163.com");
    }

    @Test
    public void testUpdateCrmClue() {
        CrmClue crmClue = crmClueMapper.selectCrmClueById(1L);
        crmClue.setWechat("13717851632");

        crmClueMapper.updateCrmClue(crmClue);

        CrmClue modifyCrmClue = crmClueMapper.selectCrmClueById(1L);

        assertEquals("13717851632", modifyCrmClue.getWechat());
    }

    @Test
    public void testDelete() {
        int result = crmClueMapper.deleteCrmClue(1L);
        assertEquals("The result should be greater than 0", 1, result);
    }

    private void trunateTable() {
        sqlSession.update("com.shinetech.crm.mapper.CrmClueMapper.truncateTable");
    }

}
