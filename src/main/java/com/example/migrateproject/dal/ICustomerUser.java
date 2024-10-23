package com.example.migrateproject.dal;

import dto.CustomerUser;

public interface ICustomerUser {
    CustomerUser getCustomerInformation(int user_id);
}
