package com.openx.model;
/* loaded from: classes3.dex */
public class OXMAdModelFactory {
    private OXMAdModelFactory() {
    }

    /* loaded from: classes3.dex */
    private static class OXMAdModelFactoryHolder {
        public static final OXMAdModelFactory instance = new OXMAdModelFactory();

        private OXMAdModelFactoryHolder() {
        }
    }

    public static OXMAdModelFactory getInstance() {
        return OXMAdModelFactoryHolder.instance;
    }

    public AdModel createNewModel() {
        return new AdModel();
    }
}
