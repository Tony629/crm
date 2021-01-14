package com.shinetech.common.core.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shinetech.common.core.page.PageDataInfo;
import com.shinetech.common.core.page.PageDomain;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * WEB层通用数据处理
 **/
public class BaseController {

    protected ServletRequestAttributes getRequestAttributes() {
        RequestAttributes attributes = RequestContextHolder.getRequestAttributes();
        return (ServletRequestAttributes) attributes;
    }

    /**
     * 获取request
     */
    protected HttpServletRequest getRequest() {
        return getRequestAttributes().getRequest();
    }

    /**
     * 获取response
     */
    protected HttpServletResponse getResponse() {
        return getRequestAttributes().getResponse();
    }

    /**
     * 获取session
     */
    protected HttpSession getSession() {
        return getRequest().getSession();
    }

    protected void startPage(int page,int limit) {
        PageHelper.startPage(page,limit);
    }

    protected PageDataInfo getPageDataInfo(List<?> list){
        PageDataInfo pageDataInfo = new PageDataInfo();
        pageDataInfo.setCode(0);
        pageDataInfo.setCount(new PageInfo(list).getTotal());
        pageDataInfo.setMessage("");
        pageDataInfo.setData(list);

        return pageDataInfo;
    }




}
