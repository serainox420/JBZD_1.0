package pl.jbzd.app.ui.view.comment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.Toast;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.mobsandgeeks.saripaar.ValidationError;
import com.mobsandgeeks.saripaar.Validator;
import com.mobsandgeeks.saripaar.annotation.Password;
import io.realm.l;
import io.realm.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import pl.jbzd.R;
import pl.jbzd.api.ApiClient;
import pl.jbzd.api.callback.CachedApiCallback;
import pl.jbzd.api.callback.SimpleApiCallback;
import pl.jbzd.api.exception.ApiException;
import pl.jbzd.api.response.CommentListResponse;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.ui.view.comment.CommentsAdapter;
import pl.jbzd.core.ui.layout.PreLoadingLinearLayoutManager;
import pl.jbzd.core.ui.view.EditText;
import pl.jbzd.core.ui.view.TextView;
import retrofit2.Call;
import retrofit2.Response;
/* loaded from: classes.dex */
public class CommentsView extends LinearLayout implements Validator.ValidationListener, CommentsAdapter.a {

    /* renamed from: a  reason: collision with root package name */
    private pl.jbzd.core.ui.b.a f5909a;
    private b b;
    private c c;
    private CommentsAdapter d;
    private Validator e;
    @Password(message = "Komentarz powinno mieć min. 3 znaki długości", min = 3)
    @BindView
    EditText editComment;
    private Media f;
    private Comment g;
    private ArrayList<Comment> h;
    private Map<Integer, Comment> i;
    private Queue<String> j;
    private int k;
    private boolean l;
    @BindView
    TextView latest;
    private boolean m;
    private long n;
    private int o;
    private boolean p;
    @BindView
    TextView popular;
    private boolean q;
    private int r;
    @BindView
    RecyclerView rvList;
    private int s;
    @BindView
    LinearLayout send;
    @BindView
    SwipeRefreshLayout swipeContainer;
    @BindView
    TextView title;

    /* loaded from: classes3.dex */
    public interface b {
        void a();

        void a(View view, android.widget.EditText editText, Media media, boolean z);

        void a(View view, boolean z);

        void a(String str);

        void onLatestClick(View view);

        void onPopularClick(View view);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(Media media, List<Comment> list);
    }

    static /* synthetic */ int k(CommentsView commentsView) {
        int i = commentsView.k;
        commentsView.k = i + 1;
        return i;
    }

    public CommentsView(Context context) {
        this(context, null, 0);
    }

    public CommentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommentsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5909a = null;
        this.g = null;
        this.j = new LinkedList();
        this.k = 0;
        this.l = false;
        this.m = false;
        this.n = 0L;
        this.p = true;
        this.q = false;
        this.r = 0;
        this.s = 0;
        a(context, attributeSet, i);
    }

    public void a(final Context context, AttributeSet attributeSet, int i) {
        LayoutInflater.from(context).inflate(R.layout.view_comments, (ViewGroup) this, true);
        ButterKnife.a(this);
        this.e = new Validator(this);
        this.e.setValidationListener(this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommentsView);
            try {
                boolean z = obtainStyledAttributes.getBoolean(0, false);
                obtainStyledAttributes.recycle();
                this.title.setVisibility(z ? 8 : 0);
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.latest.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommentsView.this.o != CommentsView.this.latest.getId()) {
                    CommentsView.this.latest.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_active_background, context));
                    CommentsView.this.popular.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_inactive_background, context));
                    CommentsView.this.o = CommentsView.this.latest.getId();
                    CommentsView.this.a((List<Comment>) null);
                    if (CommentsView.this.b != null) {
                        CommentsView.this.b.onLatestClick(view);
                    }
                }
            }
        });
        this.popular.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CommentsView.this.o != CommentsView.this.popular.getId()) {
                    CommentsView.this.latest.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_inactive_background, context));
                    CommentsView.this.popular.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_active_background, context));
                    CommentsView.this.o = CommentsView.this.popular.getId();
                    CommentsView.this.a((List<Comment>) null);
                    if (CommentsView.this.b != null) {
                        CommentsView.this.b.onPopularClick(view);
                    }
                }
            }
        });
        this.send.setOnClickListener(new View.OnClickListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (pl.jbzd.core.a.a.c(view.getContext())) {
                    CommentsView.this.e.validate();
                } else {
                    Toast.makeText(view.getContext(), (int) R.string.error_online, 0).show();
                }
            }
        });
        this.editComment.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.8
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z2) {
                if (CommentsView.this.b != null) {
                    CommentsView.this.b.a(view, z2);
                }
            }
        });
        PreLoadingLinearLayoutManager preLoadingLinearLayoutManager = new PreLoadingLinearLayoutManager(context);
        a(preLoadingLinearLayoutManager);
        this.f = null;
        this.h = new ArrayList<>();
        this.o = this.latest.getId();
        this.d = new CommentsAdapter(context, this.rvList, this.f5909a, this, this.h);
        this.rvList.setLayoutManager(preLoadingLinearLayoutManager);
        this.rvList.addOnScrollListener(this.f5909a);
        this.rvList.setAdapter(this.d);
        this.rvList.addItemDecoration(new a(pl.jbzd.core.a.a.a(1)));
        this.q = false;
        this.swipeContainer.setOnRefreshListener(new SwipeRefreshLayout.b() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.9
            @Override // android.support.v4.widget.SwipeRefreshLayout.b
            public void a() {
                if (!CommentsView.this.q) {
                    CommentsView.this.q = true;
                    CommentsView.this.b();
                }
            }
        });
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationSucceeded() {
        boolean z = true;
        a(this.editComment.getText().toString(), true);
        if (this.b != null) {
            b bVar = this.b;
            LinearLayout linearLayout = this.send;
            EditText editText = this.editComment;
            Media media = this.f;
            if (this.o != this.latest.getId()) {
                z = false;
            }
            bVar.a(linearLayout, editText, media, z);
        }
    }

    @Override // com.mobsandgeeks.saripaar.Validator.ValidationListener
    public void onValidationFailed(List<ValidationError> list) {
        if (getContext() != null) {
            for (ValidationError validationError : list) {
                View view = validationError.getView();
                String collatedErrorMessage = validationError.getCollatedErrorMessage(getContext());
                if (view instanceof EditText) {
                    ((EditText) view).setError(collatedErrorMessage);
                } else {
                    Toast.makeText(getContext(), collatedErrorMessage, 0).show();
                }
            }
        }
    }

    @Override // pl.jbzd.app.ui.view.comment.CommentsAdapter.a
    public void a(View view, Comment comment, int i) {
        ((InputMethodManager) getContext().getSystemService("input_method")).toggleSoftInput(1, 0);
        this.editComment.setHint(R.string.comments_reply_placeholder);
        this.editComment.requestFocus();
        this.g = comment;
        int i2 = i + 1;
        this.r = i2;
        this.s = i2;
        this.rvList.smoothScrollToPosition(i);
    }

    public boolean a() {
        this.r = 0;
        if (this.g != null || !this.editComment.getText().toString().isEmpty()) {
            this.g = null;
            this.editComment.setText("");
            this.editComment.setHint(R.string.comments_placeholder);
            return true;
        }
        return false;
    }

    public void a(c cVar, b bVar, CommentsAdapter.b bVar2) {
        this.c = cVar;
        this.b = bVar;
        if (this.d != null) {
            this.d.a(bVar2);
        }
    }

    public void setMedia(Media media) {
        if (!media.equals(this.f)) {
            this.f = media;
            if (media == null) {
                this.d.e();
            } else {
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<Comment> list) {
        ArrayList<Comment> arrayList = list;
        if (list == null) {
            arrayList = this.h;
        }
        if (!this.l) {
            arrayList.removeAll(Collections.singletonList(null));
            if (this.o == this.latest.getId()) {
                Collections.sort(arrayList, new Comparator<Comment>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.10
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(Comment comment, Comment comment2) {
                        return comment2.realmGet$created_at().compareTo(comment.realmGet$created_at());
                    }
                });
            } else {
                Collections.sort(arrayList, new Comparator<Comment>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.11
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public int compare(Comment comment, Comment comment2) {
                        int abs = Math.abs(comment.realmGet$plus());
                        int abs2 = Math.abs(comment.realmGet$minus());
                        int abs3 = Math.abs(comment2.realmGet$plus());
                        int i = abs - abs2;
                        int abs4 = abs3 - Math.abs(comment2.realmGet$minus());
                        if (i != abs4) {
                            return i <= abs4 ? 1 : -1;
                        } else if (abs > abs3) {
                            return -1;
                        } else {
                            return abs < abs3 ? 1 : 0;
                        }
                    }
                });
            }
            ArrayList arrayList2 = new ArrayList();
            for (Comment comment : arrayList) {
                if (comment.realmGet$parent_id() > 0) {
                    arrayList2.add(comment);
                }
            }
            arrayList.removeAll(arrayList2);
            arrayList2.clear();
            if (arrayList.equals(this.h)) {
                if (this.m) {
                    if (arrayList.isEmpty()) {
                        arrayList.add(0, null);
                    } else if (this.r < arrayList.size()) {
                        arrayList.add(this.r, null);
                    } else if (this.r == arrayList.size()) {
                        arrayList.add(null);
                    } else {
                        arrayList.add(0, null);
                    }
                }
                this.d.notifyDataSetChanged();
            }
        }
        this.swipeContainer.setRefreshing(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"UseSparseArrays"})
    public void b() {
        this.l = true;
        this.m = false;
        this.p = true;
        this.latest.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_active_background, getContext()));
        this.popular.setBackground(pl.jbzd.core.a.a.a(R.drawable.btn_sort_comments_inactive_background, getContext()));
        this.o = this.latest.getId();
        if (this.i != null) {
            this.i.clear();
        } else {
            this.i = new HashMap();
        }
        this.k = 0;
        this.n = -1L;
        this.h.clear();
        this.d.notifyDataSetChanged();
        this.d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i) {
        if (this.n > 0) {
            this.n -= 1000;
        } else {
            this.n = new Date().getTime();
        }
        ApiClient.getApiService().comment_listing(this.f.realmGet$id(), DateFormat.format("yyyy-MM-dd HH:mm:ss", new Date(this.n)).toString(), "down").enqueue(new CachedApiCallback<CommentListResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.12
            @Override // pl.jbzd.api.callback.SimpleApiCallback
            /* renamed from: a */
            public void onSuccess(CommentListResponse commentListResponse) {
                if (commentListResponse == null || commentListResponse.response == null) {
                    CommentsView.this.p = false;
                    CommentsView.this.l = false;
                    CommentsView.this.q = false;
                    if (CommentsView.this.swipeContainer != null) {
                        CommentsView.this.swipeContainer.setRefreshing(false);
                    }
                    loadFromCache(null, null);
                } else if (commentListResponse.response.isEmpty()) {
                    CommentsView.this.p = false;
                    List<Comment> b2 = pl.jbzd.app.a.a.b(l.k(), CommentsView.this.f.realmGet$id());
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry entry : CommentsView.this.i.entrySet()) {
                        Comment comment = (Comment) entry.getValue();
                        comment.realmSet$media_id(CommentsView.this.f.realmGet$id());
                        arrayList.add(comment);
                        if (comment.realmGet$parent_id() > 0 && CommentsView.this.i.containsKey(Integer.valueOf(comment.realmGet$parent_id())) && !((Comment) CommentsView.this.i.get(Integer.valueOf(comment.realmGet$parent_id()))).realmGet$replies().contains(comment)) {
                            ((Comment) CommentsView.this.i.get(Integer.valueOf(comment.realmGet$parent_id()))).realmGet$replies().a((q) comment);
                        }
                        if (b2 != null && !b2.isEmpty()) {
                            Iterator<Comment> it = b2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Comment next = it.next();
                                    if (next.realmGet$id() == comment.realmGet$id()) {
                                        if (next.realmGet$voted() > 0 && comment.realmGet$plus() > 0) {
                                            comment.realmSet$voted(1);
                                        } else if (next.realmGet$voted() < 0 && comment.realmGet$minus() > 0) {
                                            comment.realmSet$voted(-1);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    l.k().b();
                    l.k().a(arrayList);
                    l.k().c();
                    CommentsView.this.l = false;
                    CommentsView.this.a(arrayList);
                    CommentsView.this.d.a(arrayList);
                    CommentsView.this.d.f();
                    CommentsView.this.q = false;
                    if (CommentsView.this.swipeContainer != null) {
                        CommentsView.this.swipeContainer.setRefreshing(false);
                    }
                    if (CommentsView.this.c != null) {
                        CommentsView.this.c.a(CommentsView.this.f, arrayList);
                    }
                } else {
                    for (Comment comment2 : commentListResponse.response) {
                        if (comment2.realmGet$created_at().getTime() < CommentsView.this.n) {
                            CommentsView.this.n = comment2.realmGet$created_at().getTime();
                        }
                    }
                    for (Comment comment3 : commentListResponse.response) {
                        CommentsView.this.i.put(Integer.valueOf(comment3.realmGet$id()), comment3);
                    }
                    CommentsView.this.a(i + 1);
                }
            }

            @Override // pl.jbzd.api.callback.SimpleApiCallback
            public void onError(ApiException apiException) {
                CommentsView.this.d.e();
                if (CommentsView.k(CommentsView.this) < 5) {
                    CommentsView.this.a(i);
                    return;
                }
                CommentsView.this.l = false;
                CommentsView.this.q = false;
                if (CommentsView.this.swipeContainer != null) {
                    CommentsView.this.swipeContainer.setRefreshing(false);
                }
            }

            @Override // pl.jbzd.api.callback.CachedApiCallback, pl.jbzd.api.callback.SimpleApiCallback
            public void loadFromCache(Call<CommentListResponse> call, Response<CommentListResponse> response) {
                List<Comment> b2 = pl.jbzd.app.a.a.b(l.k(), CommentsView.this.f.realmGet$id());
                ArrayList arrayList = new ArrayList();
                if (b2 != null && !b2.isEmpty()) {
                    CommentsView.this.i.clear();
                    for (Comment comment : b2) {
                        CommentsView.this.i.put(Integer.valueOf(comment.realmGet$id()), comment);
                    }
                    l.k().b();
                    for (Map.Entry entry : CommentsView.this.i.entrySet()) {
                        Comment comment2 = (Comment) entry.getValue();
                        arrayList.add(comment2);
                        if (comment2.realmGet$parent_id() > 0 && CommentsView.this.i.containsKey(Integer.valueOf(comment2.realmGet$parent_id())) && !((Comment) CommentsView.this.i.get(Integer.valueOf(comment2.realmGet$parent_id()))).realmGet$replies().contains(comment2)) {
                            ((Comment) CommentsView.this.i.get(Integer.valueOf(comment2.realmGet$parent_id()))).realmGet$replies().a((q) comment2);
                        }
                    }
                    l.k().c();
                    CommentsView.this.l = false;
                    CommentsView.this.a(arrayList);
                }
                CommentsView.this.d.a(arrayList);
                CommentsView.this.d.f();
                CommentsView.this.q = false;
                if (CommentsView.this.swipeContainer != null) {
                    CommentsView.this.swipeContainer.setRefreshing(false);
                }
            }
        });
    }

    private void a(String str, boolean z) {
        this.editComment.setText("");
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.editComment.getWindowToken(), 2);
        if (z && (this.m || !this.j.isEmpty())) {
            this.j.add(str);
            return;
        }
        this.m = true;
        if (this.r > 0) {
            if (this.r > this.h.size()) {
                this.r = this.h.size();
            }
            this.h.get(this.r - 1).showReplies = true;
            this.h.add(this.r, null);
        } else {
            this.h.add(null);
        }
        this.d.notifyDataSetChanged();
        this.l = false;
        a(str);
    }

    private void a(String str) {
        if (ApiClient.getToken() == null || ApiClient.getToken().isEmpty()) {
            if (this.g != null) {
                this.s = this.r;
                ApiClient.getApiService().comment_create(this.f.realmGet$id(), this.g.realmGet$id(), str).enqueue(new SimpleApiCallback<CommentListResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.13
                    @Override // pl.jbzd.api.callback.SimpleApiCallback
                    /* renamed from: a */
                    public void onSuccess(CommentListResponse commentListResponse) {
                        CommentsView.this.b(commentListResponse.response);
                    }

                    @Override // pl.jbzd.api.callback.SimpleApiCallback
                    public void onError(ApiException apiException) {
                        CommentsView.this.b(apiException.code() == 200 ? apiException.message() : null);
                    }
                });
                a();
                return;
            }
            ApiClient.getApiService().comment_create(this.f.realmGet$id(), str).enqueue(new SimpleApiCallback<CommentListResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.2
                @Override // pl.jbzd.api.callback.SimpleApiCallback
                /* renamed from: a */
                public void onSuccess(CommentListResponse commentListResponse) {
                    CommentsView.this.b(commentListResponse.response);
                }

                @Override // pl.jbzd.api.callback.SimpleApiCallback
                public void onError(ApiException apiException) {
                    CommentsView.this.b(apiException.code() == 200 ? apiException.message() : null);
                }
            });
        } else if (this.g != null) {
            this.s = this.r;
            ApiClient.getApiService().comment_create(this.f.realmGet$id(), this.g.realmGet$id(), str, ApiClient.getToken()).enqueue(new SimpleApiCallback<CommentListResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.3
                @Override // pl.jbzd.api.callback.SimpleApiCallback
                /* renamed from: a */
                public void onSuccess(CommentListResponse commentListResponse) {
                    CommentsView.this.b(commentListResponse.response);
                }

                @Override // pl.jbzd.api.callback.SimpleApiCallback
                public void onError(ApiException apiException) {
                    CommentsView.this.b(apiException.code() == 200 ? apiException.message() : null);
                }
            });
            a();
        } else {
            ApiClient.getApiService().comment_create(this.f.realmGet$id(), str, ApiClient.getToken()).enqueue(new SimpleApiCallback<CommentListResponse>() { // from class: pl.jbzd.app.ui.view.comment.CommentsView.4
                @Override // pl.jbzd.api.callback.SimpleApiCallback
                /* renamed from: a */
                public void onSuccess(CommentListResponse commentListResponse) {
                    CommentsView.this.b(commentListResponse.response);
                }

                @Override // pl.jbzd.api.callback.SimpleApiCallback
                public void onError(ApiException apiException) {
                    CommentsView.this.b(apiException.code() == 200 ? apiException.message() : null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<Comment> list) {
        this.i.clear();
        for (Comment comment : list) {
            this.i.put(Integer.valueOf(comment.realmGet$id()), comment);
        }
        List<Comment> b2 = pl.jbzd.app.a.a.b(l.k(), this.f.realmGet$id());
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Comment> entry : this.i.entrySet()) {
            Comment value = entry.getValue();
            arrayList.add(value);
            value.realmSet$media_id(this.f.realmGet$id());
            if (value.realmGet$parent_id() > 0 && this.i.containsKey(Integer.valueOf(value.realmGet$parent_id())) && !this.i.get(Integer.valueOf(value.realmGet$parent_id())).realmGet$replies().contains(value)) {
                this.i.get(Integer.valueOf(value.realmGet$parent_id())).realmGet$replies().a((q) value);
            }
            if (b2 != null && !b2.isEmpty()) {
                Iterator<Comment> it = b2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        Comment next = it.next();
                        if (next.realmGet$id() == value.realmGet$id()) {
                            value.realmSet$voted(next.realmGet$voted());
                            break;
                        }
                    }
                }
            }
        }
        l.k().b();
        l.k().a(arrayList);
        l.k().c();
        a(arrayList);
        this.h.clear();
        this.h.addAll(arrayList);
        if (this.s > 0 && this.s <= this.h.size()) {
            this.h.addAll(this.s, this.h.get(this.s - 1).getReplies());
        }
        this.d.notifyDataSetChanged();
        this.s = 0;
        if (!this.j.isEmpty()) {
            a(this.j.poll(), false);
        } else {
            this.m = false;
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.h.removeAll(Collections.singletonList(null));
        this.d.notifyDataSetChanged();
        if (this.b != null) {
            this.b.a(str);
        }
    }

    private pl.jbzd.core.ui.b.a a(LinearLayoutManager linearLayoutManager) {
        if (this.f5909a == null) {
            this.f5909a = new pl.jbzd.core.ui.b.a(getContext(), linearLayoutManager) { // from class: pl.jbzd.app.ui.view.comment.CommentsView.5
                @Override // pl.jbzd.core.ui.b.a
                public void a(int i, int i2) {
                    if (CommentsView.this.f == null) {
                        CommentsView.this.d.e();
                    } else {
                        CommentsView.this.a(i);
                    }
                }

                @Override // pl.jbzd.core.ui.b.a
                public boolean b(int i, int i2) {
                    return CommentsView.this.p;
                }

                @Override // pl.jbzd.core.ui.b.a
                public int a() {
                    return 0;
                }
            };
        }
        return this.f5909a;
    }

    /* loaded from: classes3.dex */
    public static class a extends RecyclerView.g {

        /* renamed from: a  reason: collision with root package name */
        private final int f5923a;

        public a(int i) {
            this.f5923a = i;
        }

        @Override // android.support.v7.widget.RecyclerView.g
        public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.r rVar) {
            rect.top = this.f5923a;
        }
    }
}
