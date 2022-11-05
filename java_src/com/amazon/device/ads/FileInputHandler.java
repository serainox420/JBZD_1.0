package com.amazon.device.ads;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
/* loaded from: classes.dex */
class FileInputHandler extends FileHandler {
    private static final String LOGTAG = FileInputHandler.class.getSimpleName();
    private BufferedReader bufferedReader;
    private InputStream inputStream;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    @Override // com.amazon.device.ads.FileHandler
    public boolean isOpen() {
        return this.inputStream != null;
    }

    public boolean open() {
        if (this.file == null) {
            this.logger.e("A file must be set before it can be opened.");
            return false;
        } else if (this.inputStream != null) {
            this.logger.e("The file is already open.");
            return false;
        } else {
            try {
                this.inputStream = new BufferedInputStream(new FileInputStream(this.file));
                this.bufferedReader = new BufferedReader(new InputStreamReader(this.inputStream));
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    @Override // com.amazon.device.ads.FileHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        closeCloseables();
        this.bufferedReader = null;
        this.inputStream = null;
    }

    @Override // com.amazon.device.ads.FileHandler
    protected Closeable getCloseableStream() {
        return this.inputStream;
    }

    @Override // com.amazon.device.ads.FileHandler
    protected Closeable getCloseableReaderWriter() {
        return this.bufferedReader;
    }

    private void checkReadable() {
        if (this.bufferedReader == null) {
            throw new IllegalStateException("Could not read from the file because no file has been opened yet. Please set the file, then call open() before attempting to read.");
        }
    }

    public byte[] readBytes() {
        checkReadable();
        try {
            byte[] bArr = new byte[(int) this.file.length()];
            int i = 0;
            while (i < bArr.length) {
                int read = this.inputStream.read(bArr, i, bArr.length - i);
                if (read > 0) {
                    i += read;
                }
            }
            return bArr;
        } catch (IOException e) {
            this.logger.e("Error reading bytes from input file: %s", e.getMessage());
            return null;
        }
    }

    public byte[] readAllBytesFromFileAndClose() {
        if (!isOpen() && !open()) {
            this.logger.e("Could not open the file for reading");
            return null;
        }
        byte[] readBytes = readBytes();
        close();
        return readBytes;
    }

    public String readLine() {
        checkReadable();
        try {
            return this.bufferedReader.readLine();
        } catch (IOException e) {
            this.logger.e("Error reading line from file.");
            return null;
        }
    }
}
