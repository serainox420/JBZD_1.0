package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
/* loaded from: classes.dex */
public abstract class ConfigOverride {
    protected JsonFormat.Value _format;
    protected JsonIgnoreProperties.Value _ignorals;
    protected JsonInclude.Value _include;
    protected Boolean _isIgnoredType;

    /* JADX INFO: Access modifiers changed from: protected */
    public ConfigOverride() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ConfigOverride(ConfigOverride configOverride) {
        this._format = configOverride._format;
        this._include = configOverride._include;
        this._ignorals = configOverride._ignorals;
        this._isIgnoredType = configOverride._isIgnoredType;
    }

    public JsonFormat.Value getFormat() {
        return this._format;
    }

    public JsonInclude.Value getInclude() {
        return this._include;
    }

    public JsonIgnoreProperties.Value getIgnorals() {
        return this._ignorals;
    }

    public Boolean getIsIgnoredType() {
        return this._isIgnoredType;
    }
}
