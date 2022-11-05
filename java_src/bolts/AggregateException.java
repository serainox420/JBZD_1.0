package bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class AggregateException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f928a;

    public AggregateException(String str, Throwable[] thArr) {
        this(str, Arrays.asList(thArr));
    }

    public AggregateException(String str, List<? extends Throwable> list) {
        super(str, (list == null || list.size() <= 0) ? null : list.get(0));
        this.f928a = Collections.unmodifiableList(list);
    }

    public AggregateException(List<? extends Throwable> list) {
        this("There were multiple errors.", list);
    }

    public List<Throwable> getInnerThrowables() {
        return this.f928a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i = -1;
        for (Throwable th : this.f928a) {
            printStream.append("\n");
            printStream.append("  Inner throwable #");
            i++;
            printStream.append((CharSequence) Integer.toString(i));
            printStream.append(": ");
            th.printStackTrace(printStream);
            printStream.append("\n");
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i = -1;
        for (Throwable th : this.f928a) {
            printWriter.append("\n");
            printWriter.append("  Inner throwable #");
            i++;
            printWriter.append((CharSequence) Integer.toString(i));
            printWriter.append(": ");
            th.printStackTrace(printWriter);
            printWriter.append("\n");
        }
    }

    @Deprecated
    public List<Exception> getErrors() {
        ArrayList arrayList = new ArrayList();
        if (this.f928a == null) {
            return arrayList;
        }
        for (Throwable th : this.f928a) {
            if (th instanceof Exception) {
                arrayList.add((Exception) th);
            } else {
                arrayList.add(new Exception(th));
            }
        }
        return arrayList;
    }

    @Deprecated
    public Throwable[] getCauses() {
        return (Throwable[]) this.f928a.toArray(new Throwable[this.f928a.size()]);
    }
}
