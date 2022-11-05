package android.support.v7.widget;

import android.support.v7.widget.e;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OpReorderer.java */
/* loaded from: classes.dex */
public class af {

    /* renamed from: a  reason: collision with root package name */
    final a f864a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OpReorderer.java */
    /* loaded from: classes.dex */
    public interface a {
        e.b a(int i, int i2, int i3, Object obj);

        void a(e.b bVar);
    }

    public af(a aVar) {
        this.f864a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<e.b> list) {
        while (true) {
            int b = b(list);
            if (b != -1) {
                a(list, b, b + 1);
            } else {
                return;
            }
        }
    }

    private void a(List<e.b> list, int i, int i2) {
        e.b bVar = list.get(i);
        e.b bVar2 = list.get(i2);
        switch (bVar2.f898a) {
            case 1:
                c(list, i, bVar, i2, bVar2);
                return;
            case 2:
                a(list, i, bVar, i2, bVar2);
                return;
            case 3:
            default:
                return;
            case 4:
                b(list, i, bVar, i2, bVar2);
                return;
        }
    }

    void a(List<e.b> list, int i, e.b bVar, int i2, e.b bVar2) {
        boolean z;
        e.b bVar3;
        boolean z2 = false;
        if (bVar.b < bVar.d) {
            z = bVar2.b == bVar.b && bVar2.d == bVar.d - bVar.b;
        } else if (bVar2.b == bVar.d + 1 && bVar2.d == bVar.b - bVar.d) {
            z2 = true;
            z = true;
        } else {
            z = false;
            z2 = true;
        }
        if (bVar.d < bVar2.b) {
            bVar2.b--;
        } else if (bVar.d < bVar2.b + bVar2.d) {
            bVar2.d--;
            bVar.f898a = 2;
            bVar.d = 1;
            if (bVar2.d == 0) {
                list.remove(i2);
                this.f864a.a(bVar2);
                return;
            }
            return;
        }
        if (bVar.b <= bVar2.b) {
            bVar2.b++;
            bVar3 = null;
        } else if (bVar.b < bVar2.b + bVar2.d) {
            bVar3 = this.f864a.a(2, bVar.b + 1, (bVar2.b + bVar2.d) - bVar.b, null);
            bVar2.d = bVar.b - bVar2.b;
        } else {
            bVar3 = null;
        }
        if (z) {
            list.set(i, bVar2);
            list.remove(i2);
            this.f864a.a(bVar);
            return;
        }
        if (z2) {
            if (bVar3 != null) {
                if (bVar.b > bVar3.b) {
                    bVar.b -= bVar3.d;
                }
                if (bVar.d > bVar3.b) {
                    bVar.d -= bVar3.d;
                }
            }
            if (bVar.b > bVar2.b) {
                bVar.b -= bVar2.d;
            }
            if (bVar.d > bVar2.b) {
                bVar.d -= bVar2.d;
            }
        } else {
            if (bVar3 != null) {
                if (bVar.b >= bVar3.b) {
                    bVar.b -= bVar3.d;
                }
                if (bVar.d >= bVar3.b) {
                    bVar.d -= bVar3.d;
                }
            }
            if (bVar.b >= bVar2.b) {
                bVar.b -= bVar2.d;
            }
            if (bVar.d >= bVar2.b) {
                bVar.d -= bVar2.d;
            }
        }
        list.set(i, bVar2);
        if (bVar.b != bVar.d) {
            list.set(i2, bVar);
        } else {
            list.remove(i2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
    }

    private void c(List<e.b> list, int i, e.b bVar, int i2, e.b bVar2) {
        int i3 = 0;
        if (bVar.d < bVar2.b) {
            i3 = -1;
        }
        if (bVar.b < bVar2.b) {
            i3++;
        }
        if (bVar2.b <= bVar.b) {
            bVar.b += bVar2.d;
        }
        if (bVar2.b <= bVar.d) {
            bVar.d += bVar2.d;
        }
        bVar2.b = i3 + bVar2.b;
        list.set(i, bVar2);
        list.set(i2, bVar);
    }

    void b(List<e.b> list, int i, e.b bVar, int i2, e.b bVar2) {
        e.b bVar3;
        e.b bVar4 = null;
        if (bVar.d < bVar2.b) {
            bVar2.b--;
            bVar3 = null;
        } else if (bVar.d < bVar2.b + bVar2.d) {
            bVar2.d--;
            bVar3 = this.f864a.a(4, bVar.b, 1, bVar2.c);
        } else {
            bVar3 = null;
        }
        if (bVar.b <= bVar2.b) {
            bVar2.b++;
        } else if (bVar.b < bVar2.b + bVar2.d) {
            int i3 = (bVar2.b + bVar2.d) - bVar.b;
            bVar4 = this.f864a.a(4, bVar.b + 1, i3, bVar2.c);
            bVar2.d -= i3;
        }
        list.set(i2, bVar);
        if (bVar2.d > 0) {
            list.set(i, bVar2);
        } else {
            list.remove(i);
            this.f864a.a(bVar2);
        }
        if (bVar3 != null) {
            list.add(i, bVar3);
        }
        if (bVar4 != null) {
            list.add(i, bVar4);
        }
    }

    private int b(List<e.b> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).f898a == 8) {
                if (z2) {
                    return size;
                }
                z = z2;
            } else {
                z = true;
            }
            size--;
            z2 = z;
        }
        return -1;
    }
}
