package org.gluu.agama.login;

import org.gluu.agama.login.jans.JansPasswordService;

import java.util.HashMap;
import java.util.Map;

public abstract class PasswordService {

    public abstract boolean validate(String username, String password);

    public abstract String lockAccount(String username);

    public static PasswordService getInstance(HashMap config) {
        return new JansPasswordService(config);
    }
}
