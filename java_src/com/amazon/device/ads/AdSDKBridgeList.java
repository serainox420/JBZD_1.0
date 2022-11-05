package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
class AdSDKBridgeList implements Iterable<AdSDKBridge> {
    private final HashMap<String, AdSDKBridge> bridgesByName = new HashMap<>();

    public void clear() {
        this.bridgesByName.clear();
    }

    public void addBridge(AdSDKBridge adSDKBridge) {
        this.bridgesByName.put(adSDKBridge.getName(), adSDKBridge);
    }

    public boolean contains(AdSDKBridge adSDKBridge) {
        return this.bridgesByName.containsKey(adSDKBridge.getName());
    }

    @Override // java.lang.Iterable
    public Iterator<AdSDKBridge> iterator() {
        return this.bridgesByName.values().iterator();
    }
}
