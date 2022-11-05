package pl.jbzd.app.view.menu.model;

import android.os.Parcel;
import android.os.Parcelable;
import pl.jbzd.app.view.menu.MenuAdapter;
/* loaded from: classes3.dex */
public class Item extends a implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: pl.jbzd.app.view.menu.model.Item.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Item createFromParcel(Parcel parcel) {
            return new Item(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Item[] newArray(int i) {
            return new Item[i];
        }
    };
    public int b;
    public int c;
    public String d;
    public boolean e;

    public Item(int i, int i2, String str) {
        this(i, i2, str, false);
    }

    public Item(int i, int i2, String str, boolean z) {
        super(MenuAdapter.MenuItemType.ITEM);
        this.b = i;
        this.c = i2;
        this.d = str;
        this.e = z;
    }

    public Item() {
        super(MenuAdapter.MenuItemType.ITEM);
    }

    public Item(Parcel parcel) {
        super(MenuAdapter.MenuItemType.ITEM);
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt() > 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e ? 1 : 0);
    }
}
