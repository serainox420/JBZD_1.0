package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.IpAddress;
import commons.validator.routines.InetAddressValidator;
/* loaded from: classes.dex */
public class IpAddressRule extends AnnotationRule<IpAddress, String> {
    protected IpAddressRule(IpAddress ipAddress) {
        super(ipAddress);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        return InetAddressValidator.getInstance().isValid(str);
    }
}
