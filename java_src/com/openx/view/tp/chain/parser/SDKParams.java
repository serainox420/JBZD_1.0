package com.openx.view.tp.chain.parser;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.openx.view.tp.chain.network.ChainLoadWrapper;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class SDKParams {
    public HashMap<String, String> dictionary = new HashMap<>();
    public String mediationMethod;
    public String networkUid;
    private String params;

    public SDKParams(String str) {
        this.params = str;
        processParams();
    }

    private void processParams() {
        this.params = this.params.substring(1, this.params.length() - 1);
        this.params = this.params.replaceAll(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR, "");
        String[] split = this.params.split(",");
        if (split.length > 0) {
            for (int i = 0; i < split.length; i++) {
                if (split[i].contains("mediation_method")) {
                    this.mediationMethod = split[i].split("=")[1];
                } else if (split[i].contains("network_uid")) {
                    this.networkUid = split[i].split("=")[1];
                } else {
                    this.dictionary.put(split[i].split("=")[0], split[i].split("=")[1]);
                }
            }
            return;
        }
        ChainLoadWrapper.parseError = true;
    }
}
