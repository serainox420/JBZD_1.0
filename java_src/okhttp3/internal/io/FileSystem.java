package okhttp3.internal.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import okio.k;
import okio.q;
import okio.r;
/* loaded from: classes3.dex */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.io.FileSystem
        public r source(File file) throws FileNotFoundException {
            return k.a(file);
        }

        @Override // okhttp3.internal.io.FileSystem
        public q sink(File file) throws FileNotFoundException {
            try {
                return k.b(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return k.b(file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public q appendingSink(File file) throws FileNotFoundException {
            try {
                return k.c(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return k.c(file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public void delete(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public void deleteContents(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }
    };

    q appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    q sink(File file) throws FileNotFoundException;

    long size(File file);

    r source(File file) throws FileNotFoundException;
}
