.class public Lpl/jbzd/app/view/feed/FeedFragment;
.super Lpl/jbzd/app/view/a;
.source "FeedFragment.java"

# interfaces
.implements Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/feed/FeedFragment$a;,
        Lpl/jbzd/app/view/feed/FeedFragment$b;
    }
.end annotation


# static fields
.field public static final b:I

.field public static final c:I


# instance fields
.field private A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

.field private B:Lpl/jbzd/app/view/feed/FeedAdapter$c;

.field btnAddedNew:Lpl/jbzd/core/ui/view/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field protected d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

.field private i:I

.field private j:Lpl/jbzd/app/view/menu/model/Item;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:I

.field private p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

.field private q:Z

.field private r:Z

.field rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private s:I

.field swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private t:Lpl/jbzd/app/model/User;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Lpl/jbzd/app/view/feed/FeedAdapter;

.field private y:Landroid/support/v7/widget/LinearLayoutManager;

.field private z:Lpl/jbzd/core/ui/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-static {v0}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v0

    sput v0, Lpl/jbzd/app/view/feed/FeedFragment;->b:I

    .line 72
    const/16 v0, 0x8

    invoke-static {v0}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v0

    sput v0, Lpl/jbzd/app/view/feed/FeedFragment;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lpl/jbzd/app/view/a;-><init>()V

    .line 82
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->e:I

    .line 84
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->f:I

    .line 86
    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    .line 103
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->i:I

    .line 106
    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 107
    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    .line 108
    iput-wide v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    iput-wide v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    .line 109
    iput v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    .line 111
    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    .line 112
    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    .line 113
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->s:I

    .line 115
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    .line 117
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->v:Ljava/util/List;

    .line 118
    iput v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    .line 121
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    .line 122
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    .line 123
    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->B:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    return p1
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    return-wide p1
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->v:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Lpl/jbzd/app/model/User;)Lpl/jbzd/app/model/User;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    return-object p1
.end method

.method public static a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;ILpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedFragment;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {v0}, Lpl/jbzd/app/view/feed/FeedFragment;-><init>()V

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v2, "ARG_USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v2, "ARG_MENU_ITEM"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-string v2, "ARG_FRAGMENT_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 160
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v0
.end method

.method public static a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedFragment;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {v0}, Lpl/jbzd/app/view/feed/FeedFragment;-><init>()V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    const-string v2, "ARG_USER_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v2, "ARG_MENU_ITEM"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v2, "ARG_FRAGMENT_TYPE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 147
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    return-object v0
.end method

.method public static a(Lpl/jbzd/app/view/menu/model/Item;I)Lpl/jbzd/app/view/feed/FeedFragment;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-direct {v0}, Lpl/jbzd/app/view/feed/FeedFragment;-><init>()V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "ARG_USER_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v2, "ARG_MENU_ITEM"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    const-string v2, "ARG_FRAGMENT_TYPE"

    sget-object v3, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 133
    const-string v2, "ARG_FRAGMENT_TYPE2"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 136
    return-object v0
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$15;

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lpl/jbzd/app/view/feed/FeedFragment$15;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Landroid/content/Context;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    .line 780
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    return-object v0
.end method

.method private a(Lio/realm/l;Ljava/util/List;ZIZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Media;",
            ">;ZIZZ)V"
        }
    .end annotation

    .prologue
    .line 1043
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1045
    :goto_0
    if-lez v0, :cond_1

    .line 1047
    new-instance v6, Lpl/jbzd/app/view/feed/FeedFragment$16;

    invoke-direct {v6, p0, p2, v0, p4}, Lpl/jbzd/app/view/feed/FeedFragment$16;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;II)V

    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$2;

    move-object v1, p0

    move v2, p3

    move v3, p5

    move-object v4, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedFragment$2;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;ZZLjava/util/List;Z)V

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$3;

    invoke-direct {v1, p0, p2, p3, p6}, Lpl/jbzd/app/view/feed/FeedFragment$3;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    invoke-virtual {p1, v6, v0, v1}, Lio/realm/l;->a(Lio/realm/l$a;Lio/realm/l$a$b;Lio/realm/l$a$a;)Lio/realm/m;

    .line 1102
    :goto_1
    return-void

    .line 1043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1100
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p6}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/util/List;ZZ)V

    goto :goto_1
.end method

.method private a(Lio/realm/l;Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/l;",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1106
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1108
    :goto_0
    if-lez v0, :cond_1

    .line 1110
    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$4;

    invoke-direct {v1, p0, p2, v0}, Lpl/jbzd/app/view/feed/FeedFragment$4;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;I)V

    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lpl/jbzd/app/view/feed/FeedFragment$5;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    new-instance v2, Lpl/jbzd/app/view/feed/FeedFragment$6;

    invoke-direct {v2, p0, p2, p3, p4}, Lpl/jbzd/app/view/feed/FeedFragment$6;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V

    invoke-virtual {p1, v1, v0, v2}, Lio/realm/l;->a(Lio/realm/l$a;Lio/realm/l$a$b;Lio/realm/l$a$a;)Lio/realm/m;

    .line 1160
    :goto_1
    return-void

    .line 1106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1158
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/util/List;ZZ)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1333
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1335
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1338
    iput-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 1340
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/feed/a/a;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1164
    const/4 v0, 0x0

    .line 1165
    iput-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    .line 1168
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1170
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    .line 1172
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1174
    :cond_0
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 1180
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v1, v1, Lpl/jbzd/app/model/Media;

    if-eqz v1, :cond_1

    .line 1182
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v1, Lpl/jbzd/app/model/Media;

    .line 1184
    sget-object v6, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v6, v6, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v1

    if-eq v6, v1, :cond_1

    .line 1185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v2

    .line 1282
    :cond_3
    :goto_1
    if-eqz p2, :cond_14

    .line 1284
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1286
    if-eqz p3, :cond_13

    .line 1288
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->y:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1289
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a(Ljava/util/List;)V

    .line 1291
    if-nez v0, :cond_4

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    if-eqz v0, :cond_4

    .line 1292
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 1293
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->smoothScrollToPosition(I)V

    .line 1321
    :cond_4
    :goto_2
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_5

    .line 1323
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1324
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 1327
    :cond_5
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    .line 1328
    :goto_3
    return-void

    .line 1196
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_7

    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b()Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1199
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Comment;

    if-eqz v0, :cond_a

    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b()Lpl/jbzd/app/view/feed/FeedAdapter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1201
    :cond_8
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_9

    .line 1203
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1204
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 1207
    :cond_9
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    .line 1208
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->m()V

    .line 1209
    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Z)V

    goto :goto_3

    .line 1213
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 1217
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v1, v1, Lpl/jbzd/app/model/Media;

    if-eqz v1, :cond_11

    .line 1219
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v1, Lpl/jbzd/app/model/Media;

    .line 1221
    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v2

    if-lez v2, :cond_d

    .line 1223
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/jbzd/app/view/feed/a/a;

    .line 1225
    iget-object v8, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v8, v8, Lpl/jbzd/app/model/Media;

    if-eqz v8, :cond_c

    iget-object v2, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v2, Lpl/jbzd/app/model/Media;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v2

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$id()I

    move-result v8

    if-ne v2, v8, :cond_c

    move v1, v3

    .line 1275
    :goto_5
    if-eqz v1, :cond_b

    .line 1276
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1231
    :cond_d
    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v7, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2, v7}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_e

    move v1, v3

    .line 1232
    goto :goto_5

    .line 1236
    :cond_e
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget-object v7, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v7}, Lpl/jbzd/app/view/feed/FeedAdapter;->d()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(I)Lpl/jbzd/app/view/feed/a/a;

    move-result-object v2

    .line 1237
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 1239
    if-ltz v7, :cond_f

    .line 1241
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/jbzd/app/view/feed/a/a;

    iget-object v1, v1, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    .line 1244
    if-eqz v1, :cond_18

    instance-of v2, v1, Lpl/jbzd/app/model/Media;

    if-eqz v2, :cond_18

    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    check-cast v1, Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    .line 1245
    goto :goto_5

    .line 1249
    :cond_f
    if-eqz p2, :cond_10

    .line 1251
    sget-object v2, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v2, v2, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_18

    move v1, v3

    .line 1252
    goto :goto_5

    .line 1255
    :cond_10
    sget-object v7, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v7, v7, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v1

    if-ne v7, v1, :cond_18

    if-eqz v2, :cond_18

    iget-object v1, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v1, v1, Lpl/jbzd/app/model/Media;

    if-eqz v1, :cond_18

    sget-object v1, Lpl/jbzd/app/view/feed/FeedViewType;->AD:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v7, v1, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    iget-object v1, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v1, Lpl/jbzd/app/model/Media;

    invoke-virtual {v1}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    .line 1256
    goto/16 :goto_5

    .line 1262
    :cond_11
    iget-object v1, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v1, Lpl/jbzd/app/model/Comment;

    .line 1264
    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/jbzd/app/view/feed/a/a;

    .line 1266
    iget-object v8, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v8, v8, Lpl/jbzd/app/model/Comment;

    if-eqz v8, :cond_12

    iget-object v2, v2, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v2, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v2}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v2

    invoke-virtual {v1}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v8

    if-ne v2, v8, :cond_12

    .line 1268
    iput-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    move v1, v3

    .line 1270
    goto/16 :goto_5

    .line 1297
    :cond_13
    iput-object p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->v:Ljava/util/List;

    .line 1299
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    if-eqz v0, :cond_4

    .line 1300
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0, v3}, Lpl/jbzd/core/ui/view/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1307
    :cond_14
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    if-nez v0, :cond_16

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->s:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_16

    :goto_6
    iput-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    .line 1308
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/feed/FeedAdapter;->b(Ljava/util/List;)V

    .line 1311
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    if-eqz v0, :cond_17

    .line 1313
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->s:I

    .line 1314
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto/16 :goto_2

    :cond_16
    move v4, v3

    .line 1307
    goto :goto_6

    .line 1317
    :cond_17
    iput v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->s:I

    goto/16 :goto_2

    :cond_18
    move v1, v4

    goto/16 :goto_5

    :cond_19
    move-object p1, v5

    goto/16 :goto_1

    :cond_1a
    move-object p1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZIZZ)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lio/realm/l;Ljava/util/List;ZIZZ)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Lio/realm/l;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lio/realm/l;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    return p1
.end method

.method static synthetic b(Lpl/jbzd/app/view/feed/FeedFragment;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    return p1
.end method

.method static synthetic b(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    return-object v0
.end method

.method static synthetic b(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lpl/jbzd/app/view/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    return p1
.end method

.method static synthetic c(Lpl/jbzd/app/view/feed/FeedFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/view/feed/FeedFragment;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    return v0
.end method

.method static synthetic e(Lpl/jbzd/app/view/feed/FeedFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->y:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic f(Lpl/jbzd/app/view/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    return v0
.end method

.method static synthetic g(Lpl/jbzd/app/view/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    return v0
.end method

.method static synthetic h(Lpl/jbzd/app/view/feed/FeedFragment;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    return-wide v0
.end method

.method static synthetic i(Lpl/jbzd/app/view/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    return v0
.end method

.method static synthetic j(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/model/User;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    return-object v0
.end method

.method private j()Lpl/jbzd/app/view/feed/FeedAdapter$b;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$14;

    invoke-direct {v0, p0}, Lpl/jbzd/app/view/feed/FeedFragment$14;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    .line 703
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1584
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    const-string v0, "Glowna"

    .line 1615
    :goto_0
    return-object v0

    .line 1587
    :cond_0
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    const-string v0, "Losowe"

    goto :goto_0

    .line 1590
    :cond_1
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    const-string v0, "Oczekujace"

    goto :goto_0

    .line 1593
    :cond_2
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1594
    const-string v0, "Ulubione"

    goto :goto_0

    .line 1596
    :cond_3
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1597
    const-string v0, ""

    goto :goto_0

    .line 1599
    :cond_4
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->CAMERA:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1600
    const-string v0, "Aparat"

    goto :goto_0

    .line 1602
    :cond_5
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->GALLERY:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1603
    const-string v0, "Galeria"

    goto :goto_0

    .line 1605
    :cond_6
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1606
    const-string v0, "Ustawienia"

    goto :goto_0

    .line 1608
    :cond_7
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SIGN_IN:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1609
    const-string v0, "Logowanie"

    goto :goto_0

    .line 1611
    :cond_8
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1612
    const-string v0, "Profil uzytkownika"

    goto :goto_0

    .line 1615
    :cond_9
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic k(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    return-object v0
.end method

.method static synthetic l(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/main/MainActivity$FragmentType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    return-object v0
.end method

.method static synthetic m(Lpl/jbzd/app/view/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    return v0
.end method

.method static synthetic n(Lpl/jbzd/app/view/feed/FeedFragment;)Lpl/jbzd/app/view/feed/FeedAdapter$c;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->B:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Lpl/jbzd/api/callback/CachedApiCallback",
            "<",
            "Lpl/jbzd/api/response/MediaListResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1344
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedFragment$7;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public a()Lpl/jbzd/app/view/main/MainActivity$FragmentType;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    return-object v0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$13;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/feed/FeedFragment$13;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    return-void
.end method

.method protected a(Ljava/lang/String;JIZ)V
    .locals 8

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 934
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 936
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "main"

    invoke-interface {v0, v1, p1, v4, v5}, Lpl/jbzd/api/ApiService;->media_listing(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "queue"

    invoke-interface {v0, v1, p1, v4, v5}, Lpl/jbzd/api/ApiService;->media_listing(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "queue"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 942
    :cond_2
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 943
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, v4, v5}, Lpl/jbzd/api/ApiService;->media_favorites(Ljava/lang/String;Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "favorite"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 945
    :cond_3
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 947
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->i:I

    if-ne v0, v6, :cond_4

    .line 948
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "week"

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->media_top(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 950
    :cond_4
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 951
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "month"

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->media_top(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 954
    :cond_5
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "day"

    invoke-interface {v0, v1, v2}, Lpl/jbzd/api/ApiService;->media_top(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 957
    :cond_6
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 958
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-interface {v0}, Lpl/jbzd/api/ApiService;->media_random()Lretrofit2/Call;

    move-result-object v0

    const-string v1, "random"

    invoke-virtual {p0, p1, v1, p4, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 960
    :cond_7
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 964
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 966
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 967
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    const-string v1, "user"

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lpl/jbzd/api/ApiService;->media_listing_user(Ljava/lang/String;ILjava/lang/String;J)Lretrofit2/Call;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p0, p1, v1, v6, p5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 971
    :cond_8
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 972
    :cond_9
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lpl/jbzd/api/ApiService;->user_profile(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 975
    :cond_a
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p4}, Lpl/jbzd/api/ApiService;->user_profile_with_token(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 979
    :cond_b
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 980
    :cond_c
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lpl/jbzd/api/ApiService;->user_profile(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 983
    :cond_d
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p4}, Lpl/jbzd/api/ApiService;->user_profile_with_token(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 988
    :cond_e
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 990
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 992
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    if-le v0, v6, :cond_f

    .line 996
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 997
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1, v6, v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyItemRangeRemoved(II)V

    .line 1012
    :cond_f
    :goto_1
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->a()V

    .line 1014
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1015
    :cond_10
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Lpl/jbzd/api/ApiService;->user_profile(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lpl/jbzd/app/view/feed/FeedFragment;->b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto/16 :goto_0

    .line 1002
    :cond_11
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1003
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1017
    :cond_12
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->f()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    invoke-virtual {v1}, Lpl/jbzd/app/model/User;->realmGet$media_count()I

    move-result v1

    if-lt v0, v1, :cond_14

    :cond_13
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->b:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->g()I

    move-result v0

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    invoke-virtual {v1}, Lpl/jbzd/app/model/User;->realmGet$comments_count()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1018
    :cond_14
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    goto/16 :goto_0

    .line 1022
    :cond_15
    new-instance v1, Lpl/jbzd/app/model/Media;

    invoke-direct {v1}, Lpl/jbzd/app/model/Media;-><init>()V

    .line 1023
    sget-object v0, Lpl/jbzd/app/view/feed/FeedViewType;->EMPTY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/FeedViewType;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$type(Ljava/lang/String;)V

    .line 1024
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v0, v2}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Brak dzidek :("

    :goto_2
    invoke-virtual {v1, v0}, Lpl/jbzd/app/model/Media;->realmSet$title(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    new-instance v2, Lpl/jbzd/app/view/feed/a/a;

    invoke-direct {v2, v1}, Lpl/jbzd/app/view/feed/a/a;-><init>(Lpl/jbzd/app/view/feed/model/BaseFeedModel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->l()V

    .line 1027
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 1029
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_16

    .line 1031
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1032
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 1035
    :cond_16
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->l:Z

    goto/16 :goto_0

    .line 1024
    :cond_17
    const-string v0, "Brak komentarzy :("

    goto :goto_2
.end method

.method public a(Z)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    .line 893
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move v1, v4

    .line 895
    :goto_0
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 897
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 901
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 903
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v8

    .line 905
    iget-wide v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 906
    iget-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    add-long/2addr v0, v8

    .line 909
    :cond_0
    iput-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    move-wide v2, v0

    .line 916
    :cond_1
    iput-boolean v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    .line 917
    const-string v1, "up"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;JIZ)V

    .line 918
    return-void

    .line 895
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lpl/jbzd/core/ui/view/lce/LceRecyclerView;II)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 788
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 790
    sget-object v1, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/feed/FeedAdapter$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 791
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->f()I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$media_count()I

    move-result v2

    if-ge v1, v2, :cond_0

    move v0, v5

    :cond_0
    move v6, v0

    .line 801
    :goto_0
    if-eqz v6, :cond_3

    .line 803
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 805
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 807
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_b

    .line 809
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    .line 811
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 813
    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$date()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v10

    .line 815
    iget-wide v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 817
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->r:Z

    if-eqz v0, :cond_a

    .line 819
    iget-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    sub-long/2addr v0, v10

    .line 833
    :cond_1
    :goto_2
    iput-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    move-wide v2, v0

    .line 840
    :cond_2
    const-string v1, "down"

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Ljava/lang/String;JIZ)V

    .line 843
    :cond_3
    return v6

    .line 794
    :cond_4
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->g()I

    move-result v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->t:Lpl/jbzd/app/model/User;

    invoke-virtual {v2}, Lpl/jbzd/app/model/User;->realmGet$comments_count()I

    move-result v2

    if-ge v1, v2, :cond_5

    move v0, v5

    :cond_5
    move v6, v0

    goto :goto_0

    .line 798
    :cond_6
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-gt p2, v5, :cond_9

    :cond_7
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    if-nez v1, :cond_9

    :cond_8
    move v0, v5

    :cond_9
    move v6, v0

    goto/16 :goto_0

    .line 829
    :cond_a
    iget-wide v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    sub-long/2addr v0, v10

    goto :goto_2

    .line 805
    :cond_b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method protected b(Ljava/lang/String;JIZ)Lpl/jbzd/api/callback/CachedApiCallback;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIZ)",
            "Lpl/jbzd/api/callback/CachedApiCallback",
            "<",
            "Lpl/jbzd/api/response/UserMediaResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    new-instance v0, Lpl/jbzd/app/view/feed/FeedFragment$8;

    move-object v1, p0

    move-wide v2, p2

    move v4, p5

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lpl/jbzd/app/view/feed/FeedFragment$8;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;JZLjava/lang/String;I)V

    return-object v0
.end method

.method public b()Lpl/jbzd/app/view/menu/model/Item;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->j:Lpl/jbzd/app/view/menu/model/Item;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->scrollToPosition(I)V

    .line 446
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 448
    iget-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 451
    iput-boolean v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 452
    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Z)V

    .line 455
    :cond_0
    return-void
.end method

.method public f()I
    .locals 4

    .prologue
    .line 848
    const/4 v0, 0x0

    .line 850
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 852
    iget-object v3, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v3, v3, Lpl/jbzd/app/model/Media;

    if-eqz v3, :cond_2

    .line 854
    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/view/feed/FeedViewType;->getIdByName(Ljava/lang/String;)I

    move-result v0

    .line 856
    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->PICTURE:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v3, v3, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-eq v0, v3, :cond_0

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->GIF:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v3, v3, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-eq v0, v3, :cond_0

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->VIDEO:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v3, v3, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-eq v0, v3, :cond_0

    sget-object v3, Lpl/jbzd/app/view/feed/FeedViewType;->GALLERY:Lpl/jbzd/app/view/feed/FeedViewType;

    iget v3, v3, Lpl/jbzd/app/view/feed/FeedViewType;->id:I

    if-ne v0, v3, :cond_2

    .line 857
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 860
    goto :goto_0

    .line 862
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public g()I
    .locals 4

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 869
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 871
    iget-object v3, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Comment;

    if-eqz v0, :cond_1

    .line 872
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 874
    goto :goto_0

    .line 876
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public h()V
    .locals 2

    .prologue
    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    .line 882
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/jbzd/b/b;->a()V

    .line 884
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    if-ltz v0, :cond_0

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 886
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->c()V

    .line 887
    const/4 v0, -0x1

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    .line 889
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    .line 924
    invoke-direct {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->k()Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 930
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 178
    const/16 v0, 0x141

    if-ne p1, v0, :cond_1

    .line 180
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    if-ltz v0, :cond_1

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    instance-of v0, v0, Lpl/jbzd/app/model/Media;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0}, Lpl/jbzd/app/model/Media;->realmGet$comments_counter()I

    move-result v0

    .line 183
    const-string v1, "ARG_COMMENTS_COUNTER"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 185
    if-eq v0, v1, :cond_0

    .line 187
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->b()V

    .line 188
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    check-cast v0, Lpl/jbzd/app/model/Media;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/model/Media;->realmSet$comments_counter(I)V

    .line 189
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->c()V

    .line 190
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->notifyItemChanged(I)V

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    .line 196
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 201
    invoke-super {p0, p1}, Lpl/jbzd/app/view/a;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_USER_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->d:I

    .line 204
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FRAGMENT_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 205
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_FRAGMENT_TYPE2"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->i:I

    .line 206
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MENU_ITEM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->j:Lpl/jbzd/app/view/menu/model/Item;

    .line 207
    iput-wide v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->m:J

    .line 208
    iput-wide v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->n:J

    .line 209
    iput v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->o:I

    .line 210
    sget-object v0, Lpl/jbzd/app/view/feed/FeedAdapter$a;->a:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->p:Lpl/jbzd/app/view/feed/FeedAdapter$a;

    .line 211
    iput-boolean v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->g:Z

    .line 212
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 216
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onDestroy()V

    .line 286
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onPause()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    .line 273
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onResume()V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->q:Z

    .line 254
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    if-ltz v0, :cond_0

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/feed/a/a;->a(Z)V

    .line 256
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->a()V

    .line 259
    :cond_0
    invoke-direct {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->k()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->d()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 265
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0, p1}, Lpl/jbzd/app/view/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "ARG_SHOWN_POSITIONS"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "ARG_SHOWN_ITEMS"

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v1}, Lpl/jbzd/app/view/feed/FeedAdapter;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p1}, Lpl/jbzd/core/ui/b/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 235
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    .line 238
    iget-object v0, v0, Lpl/jbzd/app/view/feed/a/a;->a:Lpl/jbzd/app/view/feed/model/BaseFeedModel;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    :cond_1
    :goto_1
    return-void

    .line 241
    :cond_2
    const-string v0, "ARG_ITEMS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    const-string v0, "ARG_LAST_ACTIVE_POSITION"

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 278
    invoke-super {p0}, Lpl/jbzd/app/view/a;->onStop()V

    .line 279
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 291
    invoke-super {p0, p1, p2}, Lpl/jbzd/app/view/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 293
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->btnAddedNew:Lpl/jbzd/core/ui/view/TextView;

    new-instance v2, Lpl/jbzd/app/view/feed/FeedFragment$1;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/feed/FeedFragment$1;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    new-instance v1, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lpl/jbzd/core/ui/layout/PreLoadingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->y:Landroid/support/v7/widget/LinearLayoutManager;

    .line 322
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->y:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Landroid/support/v7/widget/LinearLayoutManager;)Lpl/jbzd/core/ui/b/a;

    .line 323
    invoke-direct {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->j()Lpl/jbzd/app/view/feed/FeedAdapter$b;

    .line 325
    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$9;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$9;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->B:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    .line 337
    if-eqz p2, :cond_0

    .line 340
    const-string v1, "ARG_LAST_ACTIVE_POSITION"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    .line 344
    :try_start_0
    const-string v1, "ARG_ITEMS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 346
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_6

    .line 352
    :goto_0
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->B:Lpl/jbzd/app/view/feed/FeedAdapter$c;

    invoke-static {v1, v0}, Lpl/jbzd/app/view/feed/a/a;->a(Lpl/jbzd/app/view/feed/FeedAdapter$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    .line 355
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    invoke-virtual {v0, p2}, Lpl/jbzd/core/ui/b/a;->b(Landroid/os/Bundle;)V

    .line 359
    :cond_0
    if-eqz p2, :cond_4

    const-string v0, "ARG_SHOWN_POSITIONS"

    invoke-virtual {p2, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->e:I

    .line 360
    if-eqz p2, :cond_5

    const-string v0, "ARG_SHOWN_ITEMS"

    invoke-virtual {p2, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->f:I

    .line 362
    new-instance v0, Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->c()Lpl/jbzd/app/view/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    iget-object v3, p0, Lpl/jbzd/app/view/feed/FeedFragment;->z:Lpl/jbzd/core/ui/b/a;

    iget-object v4, p0, Lpl/jbzd/app/view/feed/FeedFragment;->A:Lpl/jbzd/app/view/feed/FeedAdapter$b;

    iget-object v5, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v6, p0, Lpl/jbzd/app/view/feed/FeedFragment;->e:I

    iget v7, p0, Lpl/jbzd/app/view/feed/FeedFragment;->f:I

    invoke-direct/range {v0 .. v7}, Lpl/jbzd/app/view/feed/FeedAdapter;-><init>(Lpl/jbzd/app/view/BaseActivity;Landroid/support/v7/widget/RecyclerView;Lpl/jbzd/core/ui/b/a;Lpl/jbzd/app/view/feed/FeedAdapter$b;Ljava/util/ArrayList;II)V

    iput-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    .line 363
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->y:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 364
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 365
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {v0, p0}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->setOnLoadMoreListener(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V

    .line 367
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$10;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$10;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 389
    new-instance v0, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;-><init>(Landroid/content/Context;)V

    .line 390
    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$11;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$11;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->setOnLoadMoreListener(Lpl/jbzd/core/ui/view/lce/LceRecyclerView$a;)V

    .line 397
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->rvFeed:Lpl/jbzd/core/ui/view/lce/LceRecyclerView;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$a;

    sget v2, Lpl/jbzd/app/view/feed/FeedFragment;->b:I

    sget v3, Lpl/jbzd/app/view/feed/FeedFragment;->c:I

    const/4 v4, 0x1

    invoke-static {v4}, Lpl/jbzd/core/a/a;->a(I)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lpl/jbzd/app/view/feed/FeedFragment$a;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;III)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/lce/LceRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 398
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/jbzd/app/view/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->x:Lpl/jbzd/app/view/feed/FeedAdapter;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedAdapter;->k()Z

    .line 400
    :cond_1
    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    if-ltz v0, :cond_2

    iget v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 401
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->u:Ljava/util/ArrayList;

    iget v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/feed/a/a;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/a/a;->a()V

    .line 404
    :cond_2
    iput-boolean v8, p0, Lpl/jbzd/app/view/feed/FeedFragment;->k:Z

    .line 406
    iget-object v0, p0, Lpl/jbzd/app/view/feed/FeedFragment;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lpl/jbzd/app/view/feed/FeedFragment$12;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/feed/FeedFragment$12;-><init>(Lpl/jbzd/app/view/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 419
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/feed/FeedFragment;->h:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 420
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/feed/FeedFragment;->a(I)V

    .line 422
    :cond_3
    return-void

    :cond_4
    move v0, v8

    .line 359
    goto/16 :goto_1

    :cond_5
    move v0, v8

    .line 360
    goto/16 :goto_2

    .line 350
    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method
