package com.mobsandgeeks.saripaar.rule;

import com.mobsandgeeks.saripaar.AnnotationRule;
import com.mobsandgeeks.saripaar.annotation.CreditCard;
import commons.validator.routines.CreditCardValidator;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class CreditCardRule extends AnnotationRule<CreditCard, String> {
    private static final Map<CreditCard.Type, Long> CARD_TYPE_REGISTRY = new HashMap<CreditCard.Type, Long>() { // from class: com.mobsandgeeks.saripaar.rule.CreditCardRule.1
        {
            put(CreditCard.Type.AMEX, 1L);
            put(CreditCard.Type.DINERS, 16L);
            put(CreditCard.Type.DISCOVER, 8L);
            put(CreditCard.Type.MASTERCARD, 4L);
            put(CreditCard.Type.VISA, 2L);
        }
    };

    protected CreditCardRule(CreditCard creditCard) {
        super(creditCard);
    }

    @Override // com.mobsandgeeks.saripaar.Rule
    public boolean isValid(String str) {
        long j = 0;
        HashSet hashSet = new HashSet(Arrays.asList(((CreditCard) this.mRuleAnnotation).cardTypes()));
        if (!hashSet.contains(CreditCard.Type.NONE)) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                j = CARD_TYPE_REGISTRY.get((CreditCard.Type) it.next()).longValue() + j;
            }
        }
        return new CreditCardValidator(j).isValid(str.replaceAll("\\s", ""));
    }
}
