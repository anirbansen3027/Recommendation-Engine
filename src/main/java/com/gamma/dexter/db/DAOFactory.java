/*
 * Copyright (C) 2016 Gamma Analytics, Inc. All rights reserved.
 * http://www.gammanalytics.com/
 * --------------------------------------------------------------------------------------------
 * The software in this package is published under the terms of the EUL (End User license)
 * agreement a copy of which has been included with this distribution in the license.txt file.
 */

package com.gamma.dexter.db;

import com.gamma.dexter.db.mysql.MySqlDAO;
import com.gamma.dexter.db.mysql.MySqlDAOFactory;
import com.gamma.dexter.db.wrapper.BaseDAO;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating DAO objects.
 *
 * @param <DAO> the generic type
 */
public abstract class DAOFactory<DAO extends BaseDAO> {

	/**
	 * Gets the dao.
	 *
	 * @return the dao
	 */
	public abstract BaseDAO getDAO();

	/**
	 * Gets the single instance of DAOFactory.
	 *
	 * @param <DAO> the generic type
	 * @param token the token
	 * @return single instance of DAOFactory
	 */
	@SuppressWarnings("unchecked")
	public static <DAO extends BaseDAO> DAOFactory<DAO> getInstance(Class<DAO> token) {
		DAOFactory<BaseDAO> factory = null;
		if (token.getName().equalsIgnoreCase(MySqlDAO.class.getName())) {
			factory = new MySqlDAOFactory();
		}
		return (DAOFactory<DAO>) factory;
	}
}
