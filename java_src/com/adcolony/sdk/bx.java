package com.adcolony.sdk;
/* loaded from: classes.dex */
class bx extends Exception {
    public bx() {
        super("We could not load your default GCM_senderId. Have you added your google-service.json file to the project?");
    }
}
