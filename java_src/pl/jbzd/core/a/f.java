package pl.jbzd.core.a;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.Date;
/* compiled from: TimeUtils.java */
/* loaded from: classes3.dex */
public class f {
    public static String a(Date date) {
        long currentTimeMillis = System.currentTimeMillis() - date.getTime();
        if (currentTimeMillis < 15000) {
            return "Przed chwilą";
        }
        if (currentTimeMillis < 60000) {
            return ((int) (currentTimeMillis / 1000)) + " sek. temu";
        }
        if (currentTimeMillis < 3600000) {
            return ((int) (currentTimeMillis / 60000)) + " min. temu";
        }
        if (currentTimeMillis < 86400000) {
            return ((int) (currentTimeMillis / 3600000)) + " godz. temu";
        }
        return currentTimeMillis < 31536000000L ? ((int) (currentTimeMillis / 86400000)) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + e.a((int) (currentTimeMillis / 86400000), new String[]{"dzień", "dni", "dni"}) + " temu" : "Ponad rok temu";
    }
}
