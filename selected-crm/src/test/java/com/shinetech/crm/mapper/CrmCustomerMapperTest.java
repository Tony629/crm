package com.shinetech.crm.mapper;

import com.shinetech.crm.domain.CrmCustomer;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.List;

import static org.junit.Assert.*;

@FixMethodOrder(MethodSorters.JVM)
@Ignore
public class CrmCustomerMapperTest {

    CrmCustomerMapper crmCustomerMapper;

    SqlSession sqlSession;

    @Before
    public void setUp() throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream("mybatis-conf.xml");
            SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            sqlSession = sqlSessionFactory.openSession();

            crmCustomerMapper = sqlSession.getMapper(CrmCustomerMapper.class);
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
    public void testInsertCrmCustomer(){
        truncateTable();

        CrmCustomer crmCustomer = new CrmCustomer();
        crmCustomer.setCustomerName("每年大健康体检");
        crmCustomer.setNameShort("每年大");
        crmCustomer.setTelephone("09132194683");
        crmCustomer.setMobile("18600699578");
        crmCustomer.setEmail("luck_successful@163.com");
        crmCustomer.setSourceBelongTo("administrator");
        crmCustomer.setDelFlag("0");
        crmCustomer.setCreateBy("administrator");
        crmCustomer.setRemark("==TEST==");

        crmCustomerMapper.insertCrmCustomer(crmCustomer);

        assertNotNull("The customerId should not be null.",crmCustomer.getCustomerId());
    }

    @Test
    public void testSelectCrmCustomerById(){
        CrmCustomer crmCustomer = crmCustomerMapper.selectCrmCustomerById(1L);

        assertNotNull("The CrmCustomer should not be null");
        assertEquals("The customer name should be 每年大健康体检","每年大健康体检",crmCustomer.getCustomerName());
        assertEquals("The short name should be 每年大","每年大",crmCustomer.getNameShort());
    }

    @Test
    public void testUpdateCrmCustomer(){
        CrmCustomer crmCustomer = crmCustomerMapper.selectCrmCustomerById(1L);
        crmCustomer.setMobile("13717851632");

        crmCustomer.setIsShare("1"); //设置成共享客户
        crmCustomer.setShareDate(LocalDateTime.now());

        crmCustomerMapper.updateCrmCustomer(crmCustomer);

        CrmCustomer modifiedCustomer = crmCustomerMapper.selectCrmCustomerById(1L);
        assertNotNull(modifiedCustomer);
        assertEquals("The mobile should be 13717851632","13717851632",modifiedCustomer.getMobile());
        assertEquals("This customer should be shared customer","1",crmCustomer.getIsShare());

    }

    @Test
    public void testselectCrmCustomerList(){
        CrmCustomer crmCustomer = new CrmCustomer();
        List<CrmCustomer> crmCustomerList = crmCustomerMapper.selectCrmCustomerList(crmCustomer);

        assertNotNull(crmCustomerList);
        assertEquals("The count of customerList is 1",1,crmCustomerList.size());
    }

    @Test
    public void testselectCrmCustomerListShare(){
        List<CrmCustomer> crmCustomers =crmCustomerMapper.selectCrmCustomerListShare(null);

        assertNotNull(crmCustomers);
        assertEquals("The count of customerList is 1",1,crmCustomers.size());
    }

    private void truncateTable(){
        sqlSession.update("com.shinetech.crm.mapper.CrmCustomerMapper.truncateTable");
    }
}