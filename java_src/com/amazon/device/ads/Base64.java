package com.amazon.device.ads;
/* loaded from: classes.dex */
class Base64 {
    private static final String ENCODE_CHARSET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    Base64() {
    }

    public static byte[] decode(String str) {
        int indexOf;
        int i;
        if (StringUtils.isNullOrWhiteSpace(str)) {
            throw new IllegalArgumentException("Encoded String must not be null or white space");
        }
        int decodedLength = getDecodedLength(str);
        if (decodedLength <= 0) {
            throw new IllegalArgumentException("Encoded String decodes to zero bytes");
        }
        byte[] bArr = new byte[decodedLength];
        int i2 = 0;
        for (int i3 = 0; i3 < str.length() && i2 < decodedLength && ((i3 % 4 != 0 || str.length() >= i3 + 4) && (indexOf = ENCODE_CHARSET.indexOf(str.charAt(i3))) != -1); i3++) {
            switch (i3 % 4) {
                case 0:
                    bArr[i2] = (byte) (indexOf << 2);
                    continue;
                case 1:
                    i = i2 + 1;
                    bArr[i2] = (byte) (bArr[i2] | ((byte) ((indexOf >> 4) & 3)));
                    if (i < decodedLength) {
                        bArr[i] = (byte) (indexOf << 4);
                        i2 = i;
                        continue;
                    }
                    break;
                case 2:
                    i = i2 + 1;
                    bArr[i2] = (byte) (bArr[i2] | ((byte) ((indexOf >> 2) & 15)));
                    if (i < decodedLength) {
                        bArr[i] = (byte) (indexOf << 6);
                        i2 = i;
                        continue;
                    }
                    break;
                case 3:
                    i = i2 + 1;
                    bArr[i2] = (byte) (((byte) (indexOf & 63)) | bArr[i2]);
                    break;
                default:
            }
            i2 = i;
        }
        return bArr;
    }

    private static int getDecodedLength(String str) {
        int indexOf = str.indexOf("=");
        int i = 0;
        if (indexOf > -1) {
            i = str.length() - indexOf;
        }
        return (((str.length() + 3) / 4) * 3) - i;
    }
}
