package io.realm;

import io.realm.internal.Table;
import java.util.Arrays;
/* compiled from: DynamicRealmObject.java */
/* loaded from: classes3.dex */
public class e extends u implements io.realm.internal.l {

    /* renamed from: a  reason: collision with root package name */
    private final k f5759a = new k(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar, io.realm.internal.n nVar) {
        this.f5759a.a(bVar);
        this.f5759a.a(nVar);
        this.f5759a.h();
    }

    public String[] b() {
        this.f5759a.a().e();
        String[] strArr = new String[(int) this.f5759a.b().getColumnCount()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = this.f5759a.b().getColumnName(i);
        }
        return strArr;
    }

    public String d() {
        this.f5759a.a().e();
        return RealmSchema.a(this.f5759a.b().getTable());
    }

    public int hashCode() {
        int i = 0;
        this.f5759a.a().e();
        String f = this.f5759a.a().f();
        String h = this.f5759a.b().getTable().h();
        long index = this.f5759a.b().getIndex();
        int hashCode = ((f != null ? f.hashCode() : 0) + 527) * 31;
        if (h != null) {
            i = h.hashCode();
        }
        return ((i + hashCode) * 31) + ((int) ((index >>> 32) ^ index));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        this.f5759a.a().e();
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        String f = this.f5759a.a().f();
        String f2 = eVar.f5759a.a().f();
        if (f != null) {
            if (!f.equals(f2)) {
                return false;
            }
        } else if (f2 != null) {
            return false;
        }
        String h = this.f5759a.b().getTable().h();
        String h2 = eVar.f5759a.b().getTable().h();
        if (h != null) {
            if (!h.equals(h2)) {
                return false;
            }
        } else if (h2 != null) {
            return false;
        }
        if (this.f5759a.b().getIndex() != eVar.f5759a.b().getIndex()) {
            z = false;
        }
        return z;
    }

    public String toString() {
        String[] b;
        this.f5759a.a().e();
        if (!this.f5759a.b().isAttached()) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder(Table.d(this.f5759a.b().getTable().h()) + " = [");
        for (String str : b()) {
            long columnIndex = this.f5759a.b().getColumnIndex(str);
            RealmFieldType columnType = this.f5759a.b().getColumnType(columnIndex);
            sb.append("{");
            sb.append(str).append(":");
            switch (columnType) {
                case BOOLEAN:
                    sb.append(this.f5759a.b().isNull(columnIndex) ? "null" : Boolean.valueOf(this.f5759a.b().getBoolean(columnIndex)));
                    break;
                case INTEGER:
                    sb.append(this.f5759a.b().isNull(columnIndex) ? "null" : Long.valueOf(this.f5759a.b().getLong(columnIndex)));
                    break;
                case FLOAT:
                    sb.append(this.f5759a.b().isNull(columnIndex) ? "null" : Float.valueOf(this.f5759a.b().getFloat(columnIndex)));
                    break;
                case DOUBLE:
                    sb.append(this.f5759a.b().isNull(columnIndex) ? "null" : Double.valueOf(this.f5759a.b().getDouble(columnIndex)));
                    break;
                case STRING:
                    sb.append(this.f5759a.b().getString(columnIndex));
                    break;
                case BINARY:
                    sb.append(Arrays.toString(this.f5759a.b().getBinaryByteArray(columnIndex)));
                    break;
                case DATE:
                    sb.append(this.f5759a.b().isNull(columnIndex) ? "null" : this.f5759a.b().getDate(columnIndex));
                    break;
                case OBJECT:
                    sb.append(this.f5759a.b().isNullLink(columnIndex) ? "null" : Table.d(this.f5759a.b().getTable().e(columnIndex).h()));
                    break;
                case LIST:
                    sb.append(String.format("RealmList<%s>[%s]", Table.d(this.f5759a.b().getTable().e(columnIndex).h()), Long.valueOf(this.f5759a.b().getLinkList(columnIndex).b())));
                    break;
                default:
                    sb.append("?");
                    break;
            }
            sb.append("}, ");
        }
        sb.replace(sb.length() - 2, sb.length(), "");
        sb.append("]");
        return sb.toString();
    }

    @Override // io.realm.internal.l
    public void a() {
    }

    @Override // io.realm.internal.l
    public k c() {
        return this.f5759a;
    }
}
