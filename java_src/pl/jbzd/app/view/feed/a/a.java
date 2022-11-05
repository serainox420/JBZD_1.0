package pl.jbzd.app.view.feed.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.view.feed.FeedAdapter;
import pl.jbzd.app.view.feed.FeedViewType;
import pl.jbzd.app.view.feed.holders.StandardViewHolder;
import pl.jbzd.app.view.feed.model.BaseFeedModel;
import pl.jbzd.b.b;
/* compiled from: BaseFeedItem.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public BaseFeedModel f6023a;
    boolean b;
    public StandardViewHolder<? extends a> c;

    public static List<a> a(FeedAdapter.c cVar, List<? extends BaseFeedModel> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            for (BaseFeedModel baseFeedModel : list) {
                if (baseFeedModel instanceof Media) {
                    int idByName = FeedViewType.getIdByName(((Media) baseFeedModel).realmGet$type());
                    if (idByName == FeedViewType.GIF.id || idByName == FeedViewType.VIDEO.id) {
                        arrayList.add(new c(cVar, baseFeedModel));
                    } else {
                        arrayList.add(new b(baseFeedModel));
                    }
                } else {
                    arrayList.add(new a(baseFeedModel));
                }
            }
            return arrayList;
        }
        return null;
    }

    public a(BaseFeedModel baseFeedModel) {
        this.f6023a = baseFeedModel;
    }

    public void a(ViewGroup viewGroup, b.a aVar, View.OnClickListener onClickListener) {
    }

    public void a(Context context) {
    }

    public void a() {
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b() {
    }

    public void c() {
    }
}
