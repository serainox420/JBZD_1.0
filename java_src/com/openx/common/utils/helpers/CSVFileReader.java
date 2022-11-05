package com.openx.common.utils.helpers;

import com.openx.common.utils.logger.OXLog;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;
/* loaded from: classes3.dex */
public class CSVFileReader {
    public static final String TAG = "CSVFileReader";
    private InputStream mFileStream;
    private String mSeparator;

    public CSVFileReader(InputStream inputStream, String str) {
        this.mFileStream = inputStream;
        this.mSeparator = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Hashtable<String, String> read() {
        Hashtable<String, String> hashtable = new Hashtable<>();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.mFileStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine, this.mSeparator);
                Vector vector = new Vector();
                while (stringTokenizer.hasMoreTokens()) {
                    vector.add(stringTokenizer.nextToken());
                }
                if (vector.size() >= 2) {
                    hashtable.put(vector.elementAt(0), vector.elementAt(1));
                }
            }
        } catch (Exception e) {
            OXLog.error(TAG, "Error in reading csv file :" + e.getMessage());
        }
        return hashtable;
    }
}
