package com.mopub.network;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes3.dex */
public class InetAddressUtils {
    public static InetAddress getInetAddressByName(String str) throws UnknownHostException {
        return InetAddress.getByName(str);
    }

    private InetAddressUtils() {
    }
}
