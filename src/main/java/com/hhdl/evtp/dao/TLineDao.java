package com.hhdl.evtp.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.hhdl.evtp.model.TLine;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * Mapper 接口
 * </p>
 *
 * @author ${author}
 * @since 2018-11-26
 */
public interface TLineDao extends BaseMapper<TLine> {
    public List<TLine> selectLineByUserId(String userId);
}
