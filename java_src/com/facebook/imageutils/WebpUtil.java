package com.facebook.imageutils;

import android.util.Pair;
import com.flurry.android.Constants;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class WebpUtil {
    private static final String VP8L_HEADER = "VP8L";
    private static final String VP8X_HEADER = "VP8X";
    private static final String VP8_HEADER = "VP8 ";

    private WebpUtil() {
    }

    @Nullable
    public static Pair<Integer, Integer> getSize(InputStream inputStream) {
        Pair<Integer, Integer> pair = null;
        byte[] bArr = new byte[4];
        try {
            try {
                inputStream.read(bArr);
                if (compare(bArr, "RIFF")) {
                    getInt(inputStream);
                    inputStream.read(bArr);
                    if (compare(bArr, "WEBP")) {
                        inputStream.read(bArr);
                        String header = getHeader(bArr);
                        if (VP8_HEADER.equals(header)) {
                            pair = getVP8Dimension(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        } else if (VP8L_HEADER.equals(header)) {
                            pair = getVP8LDimension(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        } else if (VP8X_HEADER.equals(header)) {
                            pair = getVP8XDimension(inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                        } else if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                    } else if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                } else if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
            } catch (IOException e7) {
                e7.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
            }
            return pair;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
            }
            throw th;
        }
    }

    private static Pair<Integer, Integer> getVP8Dimension(InputStream inputStream) throws IOException {
        inputStream.skip(7L);
        short s = getShort(inputStream);
        short s2 = getShort(inputStream);
        short s3 = getShort(inputStream);
        if (s == 157 && s2 == 1 && s3 == 42) {
            return new Pair<>(Integer.valueOf(get2BytesAsInt(inputStream)), Integer.valueOf(get2BytesAsInt(inputStream)));
        }
        return null;
    }

    private static Pair<Integer, Integer> getVP8LDimension(InputStream inputStream) throws IOException {
        getInt(inputStream);
        if (getByte(inputStream) != 47) {
            return null;
        }
        int read = ((byte) inputStream.read()) & Constants.UNKNOWN;
        int read2 = ((byte) inputStream.read()) & Constants.UNKNOWN;
        return new Pair<>(Integer.valueOf((read | ((read2 & 63) << 8)) + 1), Integer.valueOf(((((((byte) inputStream.read()) & Constants.UNKNOWN) & 15) << 10) | ((((byte) inputStream.read()) & Constants.UNKNOWN) << 2) | ((read2 & JfifUtil.MARKER_SOFn) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> getVP8XDimension(InputStream inputStream) throws IOException {
        inputStream.skip(8L);
        return new Pair<>(Integer.valueOf(read3Bytes(inputStream) + 1), Integer.valueOf(read3Bytes(inputStream) + 1));
    }

    private static boolean compare(byte[] bArr, String str) {
        if (bArr.length != str.length()) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (str.charAt(i) != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    private static String getHeader(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append((char) b);
        }
        return sb.toString();
    }

    private static int getInt(InputStream inputStream) throws IOException {
        int read = (((byte) inputStream.read()) << 16) & 16711680;
        int read2 = (((byte) inputStream.read()) << 8) & 65280;
        return (((byte) inputStream.read()) & Constants.UNKNOWN) | read2 | read | ((((byte) inputStream.read()) << 24) & DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    public static int get2BytesAsInt(InputStream inputStream) throws IOException {
        return (((byte) inputStream.read()) & Constants.UNKNOWN) | ((((byte) inputStream.read()) << 8) & 65280);
    }

    private static int read3Bytes(InputStream inputStream) throws IOException {
        byte b = getByte(inputStream);
        int i = (getByte(inputStream) << 8) & 65280;
        return (b & Constants.UNKNOWN) | i | ((getByte(inputStream) << 16) & 16711680);
    }

    private static short getShort(InputStream inputStream) throws IOException {
        return (short) (inputStream.read() & 255);
    }

    private static byte getByte(InputStream inputStream) throws IOException {
        return (byte) (inputStream.read() & 255);
    }

    private static boolean isBitOne(byte b, int i) {
        return ((b >> (i % 8)) & 1) == 1;
    }
}
