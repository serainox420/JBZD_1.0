package com.amazon.device.ads;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
abstract class FileHandler implements Closeable {
    private static final String LOGTAG = FileHandler.class.getSimpleName();
    File file;
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    protected abstract Closeable getCloseableReaderWriter();

    protected abstract Closeable getCloseableStream();

    public abstract boolean isOpen();

    public boolean setFile(File file, String str) {
        return setFile(new File(file, str));
    }

    public boolean setFile(String str) {
        return setFile(new File(str));
    }

    public boolean setFile(File file) {
        if (isFileSet()) {
            if (file.getAbsolutePath().equals(this.file.getAbsolutePath())) {
                return true;
            }
            this.logger.e("Another file is already set in this FileOutputHandler. Close the other file before opening a new one.");
            return false;
        }
        this.file = file;
        return true;
    }

    public boolean isFileSet() {
        return this.file != null;
    }

    public long getFileLength() {
        if (!isFileSet()) {
            throw new IllegalStateException("A file has not been set, yet.");
        }
        return this.file.length();
    }

    public boolean doesFileExist() {
        if (!isFileSet()) {
            throw new IllegalStateException("A file has not been set, yet.");
        }
        return this.file.exists();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeCloseables() {
        Closeable closeableReaderWriter = getCloseableReaderWriter();
        if (closeableReaderWriter != null) {
            try {
                closeableReaderWriter.close();
                return;
            } catch (IOException e) {
                this.logger.e("Could not close the %s. %s", closeableReaderWriter.getClass().getSimpleName(), e.getMessage());
                closeStream();
                return;
            }
        }
        closeStream();
    }

    private void closeStream() {
        Closeable closeableStream = getCloseableStream();
        if (closeableStream != null) {
            try {
                closeableStream.close();
            } catch (IOException e) {
                this.logger.e("Could not close the stream. %s", e.getMessage());
            }
        }
    }
}
