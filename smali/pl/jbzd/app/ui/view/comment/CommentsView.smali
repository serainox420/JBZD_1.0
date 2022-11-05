.class public Lpl/jbzd/app/ui/view/comment/CommentsView;
.super Landroid/widget/LinearLayout;
.source "CommentsView.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
.implements Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/ui/view/comment/CommentsView$a;,
        Lpl/jbzd/app/ui/view/comment/CommentsView$b;,
        Lpl/jbzd/app/ui/view/comment/CommentsView$c;
    }
.end annotation


# instance fields
.field private a:Lpl/jbzd/core/ui/b/a;

.field private b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

.field private c:Lpl/jbzd/app/ui/view/comment/CommentsView$c;

.field private d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

.field private e:Lcom/mobsandgeeks/saripaar/Validator;

.field editComment:Lpl/jbzd/core/ui/view/EditText;
    .annotation build Lbutterknife/BindView;
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Password;
        message = "Komentarz powinno mie\u0107 min. 3 znaki d\u0142ugo\u015bci"
        min = 0x3
    .end annotation
.end field

.field private f:Lpl/jbzd/app/model/Media;

.field private g:Lpl/jbzd/app/model/Comment;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Z

.field latest:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private m:Z

.field private n:J

.field private o:I

.field private p:Z

.field popular:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private q:Z

.field private r:I

.field rvList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private s:I

.field send:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field title:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpl/jbzd/app/ui/view/comment/CommentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    .line 91
    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->j:Ljava/util/Queue;

    .line 95
    iput v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->k:I

    .line 96
    iput-boolean v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->l:Z

    .line 97
    iput-boolean v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->p:Z

    .line 101
    iput-boolean v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->q:Z

    .line 102
    iput v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    .line 103
    iput v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    return v0
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    return p1
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;J)J
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    return-wide p1
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsView$5;

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$5;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    .line 792
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 424
    iget-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 425
    iget-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    .line 431
    :goto_0
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v2

    const-string v3, "down"

    invoke-interface {v1, v2, v0, v3}, Lpl/jbzd/api/ApiService;->comment_listing(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$12;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$12;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 585
    return-void

    .line 428
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 617
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    if-eqz v0, :cond_1

    .line 621
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    .line 623
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lpl/jbzd/api/ApiService;->comment_create(IILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$13;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$13;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 635
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a()Z

    .line 687
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lpl/jbzd/api/ApiService;->comment_create(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$2;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    if-eqz v0, :cond_3

    .line 656
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    .line 658
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v2

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lpl/jbzd/api/ApiService;->comment_create(IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$3;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 670
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a()Z

    goto :goto_0

    .line 674
    :cond_3
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lpl/jbzd/api/ApiService;->comment_create(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$4;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 589
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 591
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 593
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 613
    :goto_0
    return-void

    .line 598
    :cond_1
    iput-boolean v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    .line 600
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    if-lez v0, :cond_3

    .line 601
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    .line 602
    :cond_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    iput-boolean v3, v0, Lpl/jbzd/app/model/Comment;->showReplies:Z

    .line 603
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 609
    :goto_1
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->l:Z

    .line 612
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 315
    if-nez p1, :cond_0

    iget-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    .line 317
    :cond_0
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->l:Z

    if-nez v0, :cond_5

    .line 320
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 322
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 324
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsView$10;

    invoke-direct {v0, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$10;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 363
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v3

    if-lez v3, :cond_1

    .line 364
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_2
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsView$11;

    invoke-direct {v0, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$11;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 369
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 371
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 373
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    if-eqz v0, :cond_4

    .line 375
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 376
    invoke-interface {p1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 389
    :cond_4
    :goto_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    .line 393
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 394
    return-void

    .line 378
    :cond_6
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 379
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    invoke-interface {p1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 381
    :cond_7
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 382
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 385
    :cond_8
    invoke-interface {p1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->q:Z

    return p1
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$b;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    return-object v0
.end method

.method private b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 399
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->l:Z

    .line 400
    iput-boolean v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    .line 401
    iput-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->p:Z

    .line 403
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f02006e

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->popular:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f02006f

    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    .line 407
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 414
    :goto_0
    iput v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->k:I

    .line 415
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    .line 417
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    .line 419
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->c()V

    .line 420
    return-void

    .line 411
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 759
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    .line 761
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    invoke-interface {v0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$b;->a(Ljava/lang/String;)V

    .line 764
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 691
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 694
    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 697
    :cond_0
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v1

    invoke-static {v0, v1}, Lpl/jbzd/app/a/a;->b(Lio/realm/l;I)Ljava/util/List;

    move-result-object v2

    .line 698
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 703
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Comment;->realmSet$media_id(I)V

    .line 707
    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    if-lez v0, :cond_2

    .line 709
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 714
    :cond_2
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 718
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v6

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 719
    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    goto/16 :goto_1

    .line 726
    :cond_4
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->b()V

    .line 727
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/realm/l;->a(Ljava/lang/Iterable;)Ljava/util/List;

    .line 728
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 730
    invoke-direct {p0, v3}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/util/List;)V

    .line 731
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 734
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    if-lez v0, :cond_5

    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 735
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    iget v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    iget v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Comment;->getReplies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 738
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->notifyDataSetChanged()V

    .line 739
    iput v8, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    .line 741
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 743
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    invoke-direct {p0, v0, v8}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/lang/String;Z)V

    .line 750
    :goto_2
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    if-eqz v0, :cond_6

    .line 751
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    invoke-interface {v0}, Lpl/jbzd/app/ui/view/comment/CommentsView$b;->a()V

    .line 753
    :cond_6
    return-void

    .line 747
    :cond_7
    iput-boolean v8, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->m:Z

    goto :goto_2
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/comment/CommentsView;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(I)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/comment/CommentsView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->p:Z

    return p1
.end method

.method static synthetic c(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lcom/mobsandgeeks/saripaar/Validator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->e:Lcom/mobsandgeeks/saripaar/Validator;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/ui/view/comment/CommentsView;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->l:Z

    return p1
.end method

.method static synthetic d(Lpl/jbzd/app/ui/view/comment/CommentsView;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->q:Z

    return v0
.end method

.method static synthetic e(Lpl/jbzd/app/ui/view/comment/CommentsView;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b()V

    return-void
.end method

.method static synthetic f(Lpl/jbzd/app/ui/view/comment/CommentsView;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->n:J

    return-wide v0
.end method

.method static synthetic g(Lpl/jbzd/app/ui/view/comment/CommentsView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/model/Media;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    return-object v0
.end method

.method static synthetic i(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    return-object v0
.end method

.method static synthetic j(Lpl/jbzd/app/ui/view/comment/CommentsView;)Lpl/jbzd/app/ui/view/comment/CommentsView$c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->c:Lpl/jbzd/app/ui/view/comment/CommentsView$c;

    return-object v0
.end method

.method static synthetic k(Lpl/jbzd/app/ui/view/comment/CommentsView;)I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->k:I

    return v0
.end method

.method static synthetic l(Lpl/jbzd/app/ui/view/comment/CommentsView;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->p:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040097

    invoke-virtual {v0, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 125
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->e:Lcom/mobsandgeeks/saripaar/Validator;

    .line 126
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->e:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 128
    if-eqz p2, :cond_0

    .line 132
    sget-object v0, Lpl/jbzd/R$styleable;->CommentsView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->title:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$1;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$1;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->popular:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$6;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/ui/view/comment/CommentsView$6;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->send:Landroid/widget/LinearLayout;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$7;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$7;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$8;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$8;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    new-instance v7, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;

    invoke-direct {v7, p1}, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0, v7}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    .line 206
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    .line 208
    new-instance v0, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    iget-object v5, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->h:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$a;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    .line 209
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 210
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->a:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 211
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 212
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$a;

    invoke-static {v8}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Lpl/jbzd/app/ui/view/comment/CommentsView$a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 214
    iput-boolean v6, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->q:Z

    .line 215
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lpl/jbzd/app/ui/view/comment/CommentsView$9;

    invoke-direct {v1, p0}, Lpl/jbzd/app/ui/view/comment/CommentsView$9;-><init>(Lpl/jbzd/app/ui/view/comment/CommentsView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 225
    return-void

    .line 138
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    :cond_1
    move v0, v6

    .line 141
    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/model/Comment;I)V
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 265
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->setHint(I)V

    .line 266
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/EditText;->requestFocus()Z

    .line 267
    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    .line 268
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->s:I

    .line 269
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->rvList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 270
    return-void
.end method

.method public a(Lpl/jbzd/app/ui/view/comment/CommentsView$c;Lpl/jbzd/app/ui/view/comment/CommentsView$b;Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;)V
    .locals 1

    .prologue
    .line 289
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->c:Lpl/jbzd/app/ui/view/comment/CommentsView$c;

    .line 290
    iput-object p2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    .line 292
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0, p3}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->a(Lpl/jbzd/app/ui/view/comment/CommentsAdapter$b;)V

    .line 295
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->r:I

    .line 276
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->g:Lpl/jbzd/app/model/Comment;

    .line 279
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/EditText;->setHint(I)V

    .line 281
    const/4 v0, 0x1

    .line 284
    :cond_1
    return v0
.end method

.method public onValidationFailed(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/ValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/ValidationError;

    .line 245
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationError;->getView()Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mobsandgeeks/saripaar/ValidationError;->getCollatedErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 249
    instance-of v0, v1, Lpl/jbzd/core/ui/view/EditText;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 250
    check-cast v0, Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method

.method public onValidationSucceeded()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 230
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    invoke-virtual {v1}, Lpl/jbzd/core/ui/view/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-direct {p0, v1, v0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->a(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->b:Lpl/jbzd/app/ui/view/comment/CommentsView$b;

    iget-object v2, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->send:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->editComment:Lpl/jbzd/core/ui/view/EditText;

    iget-object v4, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    iget v5, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->o:I

    iget-object v6, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->latest:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v6}, Lpl/jbzd/core/ui/view/TextView;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lpl/jbzd/app/ui/view/comment/CommentsView$b;->a(Landroid/view/View;Landroid/widget/EditText;Lpl/jbzd/app/model/Media;Z)V

    .line 236
    :cond_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMedia(Lpl/jbzd/app/model/Media;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->f:Lpl/jbzd/app/model/Media;

    .line 305
    if-nez p1, :cond_1

    .line 306
    iget-object v0, p0, Lpl/jbzd/app/ui/view/comment/CommentsView;->d:Lpl/jbzd/app/ui/view/comment/CommentsAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/comment/CommentsAdapter;->e()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0}, Lpl/jbzd/app/ui/view/comment/CommentsView;->b()V

    goto :goto_0
.end method
