package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
/* loaded from: classes.dex */
public class PropertyName implements Serializable {
    private static final String _NO_NAME = "";
    private static final String _USE_DEFAULT = "";
    private static final long serialVersionUID = 1;
    protected SerializableString _encodedSimple;
    protected final String _namespace;
    protected final String _simpleName;
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    public static final PropertyName NO_NAME = new PropertyName(new String(""), null);

    public PropertyName(String str) {
        this(str, null);
    }

    public PropertyName(String str, String str2) {
        this._simpleName = str == null ? "" : str;
        this._namespace = str2;
    }

    protected Object readResolve() {
        if (this._simpleName == null || "".equals(this._simpleName)) {
            return USE_DEFAULT;
        }
        if (this._simpleName.equals("") && this._namespace == null) {
            return NO_NAME;
        }
        return this;
    }

    public static PropertyName construct(String str) {
        return (str == null || str.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), null);
    }

    public static PropertyName construct(String str, String str2) {
        if (str == null) {
            str = "";
        }
        return (str2 == null && str.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), str2);
    }

    public PropertyName internSimpleName() {
        String intern;
        return (this._simpleName.length() == 0 || (intern = InternCache.instance.intern(this._simpleName)) == this._simpleName) ? this : new PropertyName(intern, this._namespace);
    }

    public PropertyName withSimpleName(String str) {
        if (str == null) {
            str = "";
        }
        return str.equals(this._simpleName) ? this : new PropertyName(str, this._namespace);
    }

    public PropertyName withNamespace(String str) {
        if (str == null) {
            if (this._namespace == null) {
                return this;
            }
        } else if (str.equals(this._namespace)) {
            return this;
        }
        return new PropertyName(this._simpleName, str);
    }

    public String getSimpleName() {
        return this._simpleName;
    }

    public SerializableString simpleAsEncoded(MapperConfig<?> mapperConfig) {
        SerializableString serializableString = this._encodedSimple;
        if (serializableString == null) {
            if (mapperConfig == null) {
                serializableString = new SerializedString(this._simpleName);
            } else {
                serializableString = mapperConfig.compileString(this._simpleName);
            }
            this._encodedSimple = serializableString;
        }
        return serializableString;
    }

    public String getNamespace() {
        return this._namespace;
    }

    public boolean hasSimpleName() {
        return this._simpleName.length() > 0;
    }

    public boolean hasSimpleName(String str) {
        if (str == null) {
            return this._simpleName == null;
        }
        return str.equals(this._simpleName);
    }

    public boolean hasNamespace() {
        return this._namespace != null;
    }

    public boolean isEmpty() {
        return this._namespace == null && this._simpleName.isEmpty();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        PropertyName propertyName = (PropertyName) obj;
        if (this._simpleName == null) {
            if (propertyName._simpleName != null) {
                return false;
            }
        } else if (!this._simpleName.equals(propertyName._simpleName)) {
            return false;
        }
        if (this._namespace == null) {
            if (propertyName._namespace != null) {
                z = false;
            }
            return z;
        }
        return this._namespace.equals(propertyName._namespace);
    }

    public int hashCode() {
        return this._namespace == null ? this._simpleName.hashCode() : this._namespace.hashCode() ^ this._simpleName.hashCode();
    }

    public String toString() {
        return this._namespace == null ? this._simpleName : "{" + this._namespace + "}" + this._simpleName;
    }
}
