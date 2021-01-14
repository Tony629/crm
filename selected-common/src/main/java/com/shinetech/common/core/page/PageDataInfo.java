package com.shinetech.common.core.page;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class PageDataInfo {
    private Integer code;
    private Long count;
    private String message;
    private List<?> data; //列表数据
}
