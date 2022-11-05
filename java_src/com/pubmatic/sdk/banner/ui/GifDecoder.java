package com.pubmatic.sdk.banner.ui;

import com.flurry.android.Constants;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.InputStream;
import java.util.Vector;
/* loaded from: classes3.dex */
public class GifDecoder {
    protected static final int MAX_STACK_SIZE = 4096;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    protected int[] act;
    protected int bgColor;
    protected int bgIndex;
    protected int frameCount;
    protected Vector<GifFrame> frames;
    protected int[] gct;
    protected boolean gctFlag;
    protected int gctSize;
    protected int height;
    protected int ih;
    protected int[] image;
    protected InputStream in;
    protected boolean interlace;
    protected int iw;
    protected int ix;
    protected int iy;
    protected int lastBgColor;
    protected int[] lastBitmap;
    protected int[] lct;
    protected boolean lctFlag;
    protected int lctSize;
    protected int lrh;
    protected int lrw;
    protected int lrx;
    protected int lry;
    protected int pixelAspect;
    protected byte[] pixelStack;
    protected byte[] pixels;
    protected short[] prefix;
    protected int status;
    protected byte[] suffix;
    protected int transIndex;
    protected int width;
    protected int loopCount = 1;
    protected byte[] block = new byte[256];
    protected int blockSize = 0;
    protected int dispose = 0;
    protected int lastDispose = 0;
    protected boolean transparency = false;
    protected int delay = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class GifFrame {
        public int delay;
        public int[] image;

        public GifFrame(int[] iArr, int i) {
            this.image = iArr;
            this.delay = i;
        }
    }

    public int getDelay(int i) {
        this.delay = -1;
        if (i >= 0 && i < this.frameCount) {
            this.delay = this.frames.elementAt(i).delay;
        }
        return this.delay;
    }

    public int getFrameCount() {
        return this.frameCount;
    }

    public int[] getBitmap() {
        return getFrame(0);
    }

    public int getLoopCount() {
        return this.loopCount;
    }

    protected void setPixels() {
        int i;
        int[] iArr = new int[this.width * this.height];
        if (this.lastDispose > 0) {
            if (this.lastDispose == 3) {
                int i2 = this.frameCount - 2;
                if (i2 > 0) {
                    this.lastBitmap = getFrame(i2 - 1);
                } else {
                    this.lastBitmap = null;
                }
            }
            if (this.lastBitmap != null) {
                iArr = (int[]) this.lastBitmap.clone();
                if (this.lastDispose == 2) {
                    int i3 = !this.transparency ? this.lastBgColor : 0;
                    for (int i4 = 0; i4 < this.lrh; i4++) {
                        int i5 = ((this.lry + i4) * this.width) + this.lrx;
                        int i6 = this.lrw + i5;
                        while (i5 < i6) {
                            iArr[i5] = i3;
                            i5++;
                        }
                    }
                }
            }
        }
        int i7 = 8;
        int i8 = 1;
        int i9 = 0;
        for (int i10 = 0; i10 < this.ih; i10++) {
            if (this.interlace) {
                if (i9 >= this.ih) {
                    i8++;
                    switch (i8) {
                        case 2:
                            i9 = 4;
                            break;
                        case 3:
                            i9 = 2;
                            i7 = 4;
                            break;
                        case 4:
                            i9 = 1;
                            i7 = 2;
                            break;
                    }
                }
                int i11 = i9;
                i9 += i7;
                i = i11;
            } else {
                i = i10;
            }
            int i12 = i + this.iy;
            if (i12 < this.height) {
                int i13 = this.width * i12;
                int i14 = i13 + this.ix;
                int i15 = this.iw + i14;
                if (this.width + i13 < i15) {
                    i15 = this.width + i13;
                }
                int i16 = this.iw * i10;
                int i17 = i14;
                while (i17 < i15) {
                    int i18 = i16 + 1;
                    int i19 = this.act[this.pixels[i16] & Constants.UNKNOWN];
                    if (i19 != 0) {
                        iArr[i17] = i19;
                    }
                    i17++;
                    i16 = i18;
                }
            }
        }
        this.image = iArr;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int[] getFrame(int i) {
        if (this.frameCount <= 0) {
            return null;
        }
        return this.frames.elementAt(i % this.frameCount).image;
    }

    public int read(InputStream inputStream) {
        init();
        if (inputStream != null) {
            this.in = inputStream;
            readHeader();
            if (!err()) {
                readContents();
                if (this.frameCount < 0) {
                    this.status = 1;
                }
            }
        } else {
            this.status = 2;
        }
        try {
            inputStream.close();
        } catch (Exception e) {
        }
        return this.status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void decodeBitmapData() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        short s;
        int i10 = this.iw * this.ih;
        if (this.pixels == null || this.pixels.length < i10) {
            this.pixels = new byte[i10];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[4097];
        }
        int read = read();
        int i11 = 1 << read;
        int i12 = i11 + 1;
        int i13 = i11 + 2;
        int i14 = read + 1;
        int i15 = (1 << i14) - 1;
        for (int i16 = 0; i16 < i11; i16++) {
            this.prefix[i16] = 0;
            this.suffix[i16] = (byte) i16;
        }
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = 0;
        while (i21 < i10) {
            if (i18 != 0) {
                i = i15;
                i2 = i19;
                i3 = i23;
                i4 = i14;
                i5 = i18;
                i6 = i20;
                i7 = i24;
                i8 = i13;
            } else if (i23 < i14) {
                if (i22 == 0) {
                    i22 = readBlock();
                    if (i22 <= 0) {
                        break;
                    }
                    i25 = 0;
                }
                i20 += (this.block[i25] & Constants.UNKNOWN) << i23;
                i23 += 8;
                i25++;
                i22--;
            } else {
                int i26 = i20 & i15;
                i20 >>= i14;
                i23 -= i14;
                if (i26 > i13 || i26 == i12) {
                    break;
                } else if (i26 == i11) {
                    i14 = read + 1;
                    i15 = (1 << i14) - 1;
                    i13 = i11 + 2;
                    i24 = -1;
                } else if (i24 == -1) {
                    this.pixelStack[i18] = this.suffix[i26];
                    i18++;
                    i24 = i26;
                    i19 = i26;
                } else {
                    if (i26 == i13) {
                        i9 = i18 + 1;
                        this.pixelStack[i18] = (byte) i19;
                        s = i24;
                    } else {
                        i9 = i18;
                        s = i26;
                    }
                    while (s > i11) {
                        this.pixelStack[i9] = this.suffix[s];
                        s = this.prefix[s];
                        i9++;
                    }
                    int i27 = this.suffix[s] & Constants.UNKNOWN;
                    if (i13 >= 4096) {
                        break;
                    }
                    int i28 = i9 + 1;
                    this.pixelStack[i9] = (byte) i27;
                    this.prefix[i13] = (short) i24;
                    this.suffix[i13] = (byte) i27;
                    i8 = i13 + 1;
                    if ((i8 & i15) == 0 && i8 < 4096) {
                        i14++;
                        i15 += i8;
                    }
                    i6 = i20;
                    i7 = i26;
                    i = i15;
                    i2 = i27;
                    i3 = i23;
                    i4 = i14;
                    i5 = i28;
                }
            }
            int i29 = i5 - 1;
            this.pixels[i17] = this.pixelStack[i29];
            i21++;
            i17++;
            i14 = i4;
            i23 = i3;
            i19 = i2;
            i15 = i;
            int i30 = i7;
            i20 = i6;
            i18 = i29;
            i13 = i8;
            i24 = i30;
        }
        for (int i31 = i17; i31 < i10; i31++) {
            this.pixels[i31] = 0;
        }
    }

    protected boolean err() {
        return this.status != 0;
    }

    protected void init() {
        this.status = 0;
        this.frameCount = 0;
        this.frames = new Vector<>();
        this.gct = null;
        this.lct = null;
    }

    protected int read() {
        try {
            return this.in.read();
        } catch (Exception e) {
            this.status = 1;
            return 0;
        }
    }

    protected int readBlock() {
        this.blockSize = read();
        int i = 0;
        if (this.blockSize > 0) {
            while (i < this.blockSize) {
                try {
                    int read = this.in.read(this.block, i, this.blockSize - i);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (i < this.blockSize) {
                this.status = 1;
            }
        }
        return i;
    }

    protected int[] readColorTable(int i) {
        int i2;
        int i3 = i * 3;
        int[] iArr = null;
        byte[] bArr = new byte[i3];
        try {
            i2 = this.in.read(bArr);
        } catch (Exception e) {
            e.printStackTrace();
            i2 = 0;
        }
        if (i2 < i3) {
            this.status = 1;
        } else {
            iArr = new int[256];
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i4 + 1;
                int i7 = i6 + 1;
                i4 = i7 + 1;
                iArr[i5] = ((bArr[i4] & Constants.UNKNOWN) << 16) | DrawableConstants.CtaButton.BACKGROUND_COLOR | ((bArr[i6] & Constants.UNKNOWN) << 8) | (bArr[i7] & Constants.UNKNOWN);
            }
        }
        return iArr;
    }

    protected void readContents() {
        boolean z = false;
        while (!z && !err()) {
            switch (read()) {
                case 33:
                    switch (read()) {
                        case 1:
                            skip();
                            continue;
                        case 249:
                            readGraphicControlExt();
                            continue;
                        case 254:
                            skip();
                            continue;
                        case 255:
                            readBlock();
                            String str = "";
                            for (int i = 0; i < 11; i++) {
                                str = str + ((char) this.block[i]);
                            }
                            if (str.equals("NETSCAPE2.0")) {
                                readNetscapeExt();
                                break;
                            } else {
                                skip();
                                continue;
                            }
                        default:
                            skip();
                            continue;
                    }
                case 44:
                    readBitmap();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.status = 1;
                    break;
            }
        }
    }

    protected void readGraphicControlExt() {
        boolean z = true;
        read();
        int read = read();
        this.dispose = (read & 28) >> 2;
        if (this.dispose == 0) {
            this.dispose = 1;
        }
        if ((read & 1) == 0) {
            z = false;
        }
        this.transparency = z;
        this.delay = readShort() * 10;
        this.transIndex = read();
        read();
    }

    protected void readHeader() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) read());
        }
        if (!str.startsWith("GIF")) {
            this.status = 1;
            return;
        }
        readLSD();
        if (this.gctFlag && !err()) {
            this.gct = readColorTable(this.gctSize);
            this.bgColor = this.gct[this.bgIndex];
        }
    }

    protected void readBitmap() {
        int i = 0;
        this.ix = readShort();
        this.iy = readShort();
        this.iw = readShort();
        this.ih = readShort();
        int read = read();
        this.lctFlag = (read & 128) != 0;
        this.lctSize = (int) Math.pow(2.0d, (read & 7) + 1);
        this.interlace = (read & 64) != 0;
        if (this.lctFlag) {
            this.lct = readColorTable(this.lctSize);
            this.act = this.lct;
        } else {
            this.act = this.gct;
            if (this.bgIndex == this.transIndex) {
                this.bgColor = 0;
            }
        }
        if (this.transparency) {
            int i2 = this.act[this.transIndex];
            this.act[this.transIndex] = 0;
            i = i2;
        }
        if (this.act == null) {
            this.status = 1;
        }
        if (!err()) {
            decodeBitmapData();
            skip();
            if (!err()) {
                this.frameCount++;
                this.image = new int[this.width * this.height];
                setPixels();
                this.frames.addElement(new GifFrame(this.image, this.delay));
                if (this.transparency) {
                    this.act[this.transIndex] = i;
                }
                resetFrame();
            }
        }
    }

    protected void readLSD() {
        this.width = readShort();
        this.height = readShort();
        int read = read();
        this.gctFlag = (read & 128) != 0;
        this.gctSize = 2 << (read & 7);
        this.bgIndex = read();
        this.pixelAspect = read();
    }

    protected void readNetscapeExt() {
        do {
            readBlock();
            if (this.block[0] == 1) {
                this.loopCount = (this.block[1] & Constants.UNKNOWN) | ((this.block[2] & Constants.UNKNOWN) << 8);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    protected int readShort() {
        return read() | (read() << 8);
    }

    protected void resetFrame() {
        this.lastDispose = this.dispose;
        this.lrx = this.ix;
        this.lry = this.iy;
        this.lrw = this.iw;
        this.lrh = this.ih;
        this.lastBitmap = this.image;
        this.lastBgColor = this.bgColor;
        this.dispose = 0;
        this.transparency = false;
        this.delay = 0;
        this.lct = null;
    }

    protected void skip() {
        do {
            readBlock();
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }
}
