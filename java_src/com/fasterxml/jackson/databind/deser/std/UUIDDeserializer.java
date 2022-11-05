package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.flurry.android.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;
/* loaded from: classes.dex */
public class UUIDDeserializer extends FromStringDeserializer<UUID> {
    static final int[] HEX_DIGITS = new int[127];
    private static final long serialVersionUID = 1;

    static {
        Arrays.fill(HEX_DIGITS, -1);
        for (int i = 0; i < 10; i++) {
            HEX_DIGITS[i + 48] = i;
        }
        for (int i2 = 0; i2 < 6; i2++) {
            HEX_DIGITS[i2 + 97] = i2 + 10;
            HEX_DIGITS[i2 + 65] = i2 + 10;
        }
    }

    public UUIDDeserializer() {
        super(UUID.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    /* renamed from: _deserialize  reason: avoid collision after fix types in other method */
    public UUID mo324_deserialize(String str, DeserializationContext deserializationContext) throws IOException {
        if (str.length() != 36) {
            if (str.length() == 24) {
                return _fromBytes(Base64Variants.getDefaultVariant().decode(str), deserializationContext);
            }
            return _badFormat(str, deserializationContext);
        }
        if (str.charAt(8) != '-' || str.charAt(13) != '-' || str.charAt(18) != '-' || str.charAt(23) != '-') {
            _badFormat(str, deserializationContext);
        }
        return new UUID(((shortFromChars(str, 9, deserializationContext) << 16) | shortFromChars(str, 14, deserializationContext)) + (intFromChars(str, 0, deserializationContext) << 32), ((intFromChars(str, 28, deserializationContext) << 32) >>> 32) | (((shortFromChars(str, 19, deserializationContext) << 16) | shortFromChars(str, 24, deserializationContext)) << 32));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public UUID _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        if (obj instanceof byte[]) {
            return _fromBytes((byte[]) obj, deserializationContext);
        }
        super._deserializeEmbedded(obj, deserializationContext);
        return null;
    }

    private UUID _badFormat(String str, DeserializationContext deserializationContext) throws IOException {
        return (UUID) deserializationContext.handleWeirdStringValue(handledType(), str, "UUID has to be represented by standard 36-char representation", new Object[0]);
    }

    int intFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        return (byteFromChars(str, i, deserializationContext) << 24) + (byteFromChars(str, i + 2, deserializationContext) << 16) + (byteFromChars(str, i + 4, deserializationContext) << 8) + byteFromChars(str, i + 6, deserializationContext);
    }

    int shortFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        return (byteFromChars(str, i, deserializationContext) << 8) + byteFromChars(str, i + 2, deserializationContext);
    }

    int byteFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        int i2;
        char charAt = str.charAt(i);
        char charAt2 = str.charAt(i + 1);
        if (charAt > 127 || charAt2 > 127 || (i2 = (HEX_DIGITS[charAt] << 4) | HEX_DIGITS[charAt2]) < 0) {
            if (charAt > 127 || HEX_DIGITS[charAt] < 0) {
                return _badChar(str, i, deserializationContext, charAt);
            }
            return _badChar(str, i + 1, deserializationContext, charAt2);
        }
        return i2;
    }

    int _badChar(String str, int i, DeserializationContext deserializationContext, char c) throws JsonMappingException {
        throw deserializationContext.weirdStringException(str, handledType(), String.format("Non-hex character '%c' (value 0x%s), not valid for UUID String", Character.valueOf(c), Integer.toHexString(c)));
    }

    private UUID _fromBytes(byte[] bArr, DeserializationContext deserializationContext) throws JsonMappingException {
        if (bArr.length != 16) {
            throw InvalidFormatException.from(deserializationContext.getParser(), "Can only construct UUIDs from byte[16]; got " + bArr.length + " bytes", bArr, handledType());
        }
        return new UUID(_long(bArr, 0), _long(bArr, 8));
    }

    private static long _long(byte[] bArr, int i) {
        return (_int(bArr, i) << 32) | ((_int(bArr, i + 4) << 32) >>> 32);
    }

    private static int _int(byte[] bArr, int i) {
        return (bArr[i] << 24) | ((bArr[i + 1] & Constants.UNKNOWN) << 16) | ((bArr[i + 2] & Constants.UNKNOWN) << 8) | (bArr[i + 3] & Constants.UNKNOWN);
    }
}
