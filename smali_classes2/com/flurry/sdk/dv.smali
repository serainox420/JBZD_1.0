.class public Lcom/flurry/sdk/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dv$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/flurry/sdk/dw;

.field private final d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/dv$a;

.field private g:Lcom/flurry/sdk/r;

.field private h:Lcom/flurry/sdk/dw;

.field private i:Lcom/flurry/sdk/y;

.field private j:Lcom/flurry/sdk/au;

.field private k:Lcom/flurry/sdk/au;

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private volatile r:Z

.field private final s:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/dx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/dv;->r:Z

    .line 91
    new-instance v0, Lcom/flurry/sdk/dv$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dv$1;-><init>(Lcom/flurry/sdk/dv;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->s:Lcom/flurry/sdk/kh;

    .line 126
    new-instance v0, Lcom/flurry/sdk/dv$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dv$5;-><init>(Lcom/flurry/sdk/dv;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->t:Lcom/flurry/sdk/kh;

    .line 138
    new-instance v0, Lcom/flurry/sdk/dv$6;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dv$6;-><init>(Lcom/flurry/sdk/dv;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->u:Lcom/flurry/sdk/kh;

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/flurry/sdk/dw;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/dw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dw;

    .line 168
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    .line 169
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dv;->e:Ljava/util/TreeSet;

    .line 171
    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    iput-object v0, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    .line 172
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dv$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;ILcom/flurry/sdk/fr;)V
    .locals 7

    .prologue
    .line 662
    monitor-enter p0

    .line 44180
    :try_start_0
    iget-object v0, p3, Lcom/flurry/sdk/fr;->b:Ljava/util/List;

    .line 43232
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43233
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    .line 45029
    iget-object v0, v0, Lcom/flurry/sdk/fz;->c:Lcom/flurry/sdk/gb;

    .line 43235
    if-eqz v0, :cond_0

    .line 45050
    iget-object v0, v0, Lcom/flurry/sdk/gb;->d:Ljava/util/List;

    .line 43237
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 664
    :goto_0
    new-instance v6, Lcom/flurry/sdk/ks;

    invoke-direct {v6}, Lcom/flurry/sdk/ks;-><init>()V

    .line 45136
    iput-object v2, v6, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 46027
    const/16 v0, 0x4e20

    iput v0, v6, Lcom/flurry/sdk/mb;->w:I

    .line 667
    new-instance v0, Lcom/flurry/sdk/lh;

    invoke-direct {v0}, Lcom/flurry/sdk/lh;-><init>()V

    .line 46045
    iput-object v0, v6, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 668
    new-instance v0, Lcom/flurry/sdk/dv$2;

    move-object v1, p0

    move-object v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/dv$2;-><init>(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/fr;ILcom/flurry/sdk/au;)V

    .line 46049
    iput-object v0, v6, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 703
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0, v6}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    .line 43243
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V
    .locals 6

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 923
    const-string v0, "preRender"

    const-string v2, "true"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string v0, "errorCode"

    if-nez p2, :cond_0

    sget-object p2, Lcom/flurry/sdk/bb;->y:Lcom/flurry/sdk/bb;

    .line 50083
    :cond_0
    iget v2, p2, Lcom/flurry/sdk/bb;->z:I

    .line 924
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    monitor-exit p0

    return-void

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/au;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 892
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pre-render: HTTP get for url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 50075
    iput-object p2, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 50077
    const/16 v1, 0x4e20

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 896
    new-instance v1, Lcom/flurry/sdk/lh;

    invoke-direct {v1}, Lcom/flurry/sdk/lh;-><init>()V

    .line 50079
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 897
    new-instance v1, Lcom/flurry/sdk/dv$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/flurry/sdk/dv$4;-><init>(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/au;)V

    .line 50081
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 917
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit p0

    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/dv$a;)V
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    if-nez p1, :cond_0

    .line 288
    :try_start_0
    sget-object p1, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    .line 291
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting state from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for adspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding fetch listeners for adspace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dv;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 297
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AssetStatusEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dv;->t:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 298
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.AdResponseEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dv;->u:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 306
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 299
    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing fetch listeners for adspace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dv;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 302
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dv;->t:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 303
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/dv;->u:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/dv;Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dv;Ljava/lang/String;Lcom/flurry/sdk/al;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dv;->a(Ljava/lang/String;Lcom/flurry/sdk/al;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/dv;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/flurry/sdk/dv;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/al;)V
    .locals 4

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 30251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 450
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detected asset status change for asset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/al;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$11;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_1
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 339
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    .line 5078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 340
    iget-boolean v1, v1, Lcom/flurry/sdk/cs;->w:Z

    if-nez v1, :cond_3

    .line 342
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->o()V

    goto :goto_0

    .line 7078
    :cond_3
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 8058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 346
    iget-object v1, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 347
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/cn;

    iget v1, v1, Lcom/flurry/sdk/cn;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->o()V

    goto :goto_0

    .line 354
    :cond_5
    const/4 v1, 0x0

    .line 9078
    iget-object v2, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 10058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 356
    if-eqz v2, :cond_6

    .line 11078
    iget-object v2, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 357
    iget-object v2, v2, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    .line 358
    if-eqz v2, :cond_6

    .line 359
    const-string v3, "GROUP_ID"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    const-string v1, "GROUP_ID"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    :cond_6
    if-nez v1, :cond_8

    .line 13078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 14058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 368
    iget-object v1, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 369
    iget-object v2, p0, Lcom/flurry/sdk/dv;->k:Lcom/flurry/sdk/au;

    .line 15078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 16058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 369
    iget-object v2, v2, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 370
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 372
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 18058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 373
    iput-object v2, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 19078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 20058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 374
    iget-object v2, p0, Lcom/flurry/sdk/dv;->k:Lcom/flurry/sdk/au;

    .line 21078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 22058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 374
    iget-object v2, v2, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    .line 23078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 24058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 375
    iget-object v1, v1, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 25078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 26058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 375
    iget-object v1, v1, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27078
    iget-object v1, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 28058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 376
    iget-object v2, p0, Lcom/flurry/sdk/dv;->k:Lcom/flurry/sdk/au;

    .line 29078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 30058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 376
    iget-object v2, v2, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    iput-object v2, v1, Lcom/flurry/sdk/cs;->x:Ljava/util/Map;

    .line 379
    :cond_7
    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 386
    :goto_1
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 387
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$9;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 382
    :cond_8
    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->h()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->i()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->j()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->k()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dw;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 2

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->b:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 313
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 317
    :cond_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 319
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$8;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_1
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->g()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/dw;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dw;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dv;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dv;->m:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 399
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dv;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dv;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    monitor-exit p0

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic i(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->m()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 411
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dv;->p:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dv;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->l:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 414
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 418
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/sdk/dv;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dv;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 419
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    sget-object v0, Lcom/flurry/sdk/dv$a;->f:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 423
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$10;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 434
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->n()V

    .line 435
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->p()V

    return-void
.end method

.method private declared-synchronized k()V
    .locals 4

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/flurry/sdk/dv;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/dv;->q:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 442
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->n:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 444
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_0
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/flurry/sdk/dv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->q()V

    return-void
.end method

.method static synthetic l(Lcom/flurry/sdk/dv;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 6

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->c:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 488
    :goto_0
    monitor-exit p0

    return-void

    .line 471
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    if-nez v0, :cond_1

    .line 472
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "An auction is required, but there is no ad unit!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->c:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 474
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 476
    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 479
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 32078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 33058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 479
    iget-wide v0, v0, Lcom/flurry/sdk/cs;->r:J

    .line 480
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 481
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting CSRTB auction timeout for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->n:J

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dv;->k:Lcom/flurry/sdk/au;

    .line 486
    iget-object v0, p0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dw;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 492
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 659
    :goto_0
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 499
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/lw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->w:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 506
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto :goto_0

    .line 510
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 33251
    iget-object v2, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 512
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_c

    .line 514
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 35078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 36058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 514
    iget-object v3, v0, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 515
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 517
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto :goto_0

    .line 522
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 523
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 524
    iget v0, v0, Lcom/flurry/sdk/cn;->a:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    .line 526
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 37078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 38058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/cs;->w:Z

    .line 527
    sget-object v0, Lcom/flurry/sdk/dv$a;->c:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 528
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->l()V

    goto :goto_0

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(I)Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_8

    .line 38223
    iget-boolean v4, v0, Lcom/flurry/sdk/fr;->c:Z

    .line 534
    if-nez v4, :cond_8

    .line 38227
    iget-boolean v3, v0, Lcom/flurry/sdk/fr;->d:Z

    .line 536
    if-nez v3, :cond_9

    .line 542
    iget-object v2, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 40078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 41058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 542
    iget-wide v2, v2, Lcom/flurry/sdk/cs;->r:J

    .line 543
    cmp-long v4, v2, v8

    if-lez v4, :cond_7

    iget-wide v4, p0, Lcom/flurry/sdk/dv;->p:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 545
    const/4 v4, 0x3

    sget-object v5, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting VAST resolve timeout for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/dv;->p:J

    .line 550
    :cond_7
    iget-object v2, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-direct {p0, v2, v1, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;ILcom/flurry/sdk/fr;)V

    goto/16 :goto_0

    .line 522
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 556
    :cond_9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->p:J

    .line 559
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 563
    :cond_a
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;)Lcom/flurry/sdk/ag;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 42078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 43058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 564
    iget v1, v1, Lcom/flurry/sdk/cs;->s:I

    int-to-long v4, v1

    .line 565
    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Pre-caching required for ad, AdUnitCachedStatus: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skip time limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 569
    cmp-long v1, v4, v8

    if-lez v1, :cond_b

    iget-wide v6, p0, Lcom/flurry/sdk/dv;->o:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_b

    .line 570
    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Setting skip timer for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/flurry/sdk/dv;->o:J

    .line 576
    :cond_b
    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 578
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Pre-caching completed, ad may proceed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    if-nez v0, :cond_17

    .line 646
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    const/4 v0, 0x0

    sget-object v1, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/i;->a(Ljava/lang/String;Lcom/flurry/sdk/bc;ZLjava/util/Map;)V

    .line 647
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 648
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto/16 :goto_0

    .line 580
    :cond_d
    sget-object v1, Lcom/flurry/sdk/ag;->b:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 581
    cmp-long v0, v4, v8

    if-nez v0, :cond_e

    .line 583
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->n()V

    goto/16 :goto_1

    .line 586
    :cond_e
    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/flurry/sdk/dv;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_f

    .line 589
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "Skip timer expired"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->n()V

    goto/16 :goto_1

    .line 594
    :cond_f
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Waiting for skip timer"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_10
    cmp-long v0, v4, v8

    if-nez v0, :cond_11

    .line 602
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "No skip timer"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/flurry/sdk/dv;->n()V

    goto/16 :goto_1

    .line 607
    :cond_11
    iget v0, p0, Lcom/flurry/sdk/dv;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/dv;->l:I

    if-le v0, v10, :cond_14

    .line 608
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 610
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Too many precaching attempts, precaching failed"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 612
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto/16 :goto_0

    .line 616
    :cond_12
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 618
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Too many precaching attempts, precaching failed. Trying streaming now."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 621
    :cond_13
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Do nothing. State change request tick must have started prepare."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 627
    :cond_14
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/au;)I

    move-result v0

    .line 628
    if-lez v0, :cond_15

    .line 629
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " asset(s), attempt #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/flurry/sdk/dv;->l:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_15
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "No assets to cache"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 640
    :cond_16
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Pre-caching not required for ad"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 651
    :cond_17
    sget-object v0, Lcom/flurry/sdk/dv$a;->f:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 652
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$12;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized n()V
    .locals 5

    .prologue
    .line 708
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 734
    :goto_0
    monitor-exit p0

    return-void

    .line 712
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 47078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 48058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 712
    iget-object v0, v0, Lcom/flurry/sdk/cs;->i:Ljava/lang/String;

    .line 714
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Precaching required for incomplete ad unit, skipping ad group -- adspace: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 720
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 721
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 724
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 725
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 729
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdGroupSkipped"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/dv;->l:I

    .line 733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 738
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dv$a;->c:Lcom/flurry/sdk/dv$a;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/dv$a;->d:Lcom/flurry/sdk/dv$a;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 763
    :goto_0
    monitor-exit p0

    return-void

    .line 744
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 49078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50058
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 744
    iget-object v1, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/cn;

    move-object v7, v0

    .line 748
    new-instance v1, Lcom/flurry/sdk/b;

    sget-object v2, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V

    invoke-static {v7, v1}, Lcom/flurry/sdk/fi;->a(Lcom/flurry/sdk/cn;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v1

    .line 749
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 750
    sget-object v3, Lcom/flurry/sdk/ba;->f:Lcom/flurry/sdk/ba;

    .line 50059
    iget-object v1, v1, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 750
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v7, v8

    .line 756
    :goto_1
    sget-object v1, Lcom/flurry/sdk/bc;->e:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v3}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v5, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 757
    if-ne v7, v9, :cond_2

    .line 759
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/bb;->m:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 762
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    move v7, v9

    goto :goto_1
.end method

.method private declared-synchronized p()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 766
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ly;->a()V

    .line 769
    sget-object v1, Lcom/flurry/sdk/dv$a;->f:Lcom/flurry/sdk/dv$a;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 802
    :goto_0
    monitor-exit p0

    return-void

    .line 774
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "Preparing ad"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v2, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 779
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 784
    :cond_1
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v3}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v5, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 785
    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-interface {v1, v2}, Lcom/flurry/sdk/r;->a(Lcom/flurry/sdk/au;)V

    .line 788
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 50061
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50062
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 788
    iget-object v1, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/flurry/sdk/cn;

    move-object v7, v0

    .line 789
    new-instance v1, Lcom/flurry/sdk/b;

    sget-object v2, Lcom/flurry/sdk/bc;->d:Lcom/flurry/sdk/bc;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/b;-><init>(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V

    invoke-static {v7, v1}, Lcom/flurry/sdk/fi;->a(Lcom/flurry/sdk/cn;Lcom/flurry/sdk/b;)Ljava/util/List;

    move-result-object v1

    .line 790
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v9

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/a;

    .line 791
    sget-object v4, Lcom/flurry/sdk/ba;->i:Lcom/flurry/sdk/ba;

    .line 50063
    iget-object v1, v1, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/ba;

    .line 791
    invoke-virtual {v4, v1}, Lcom/flurry/sdk/ba;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    :goto_2
    move v2, v1

    .line 794
    goto :goto_1

    .line 796
    :cond_2
    if-eqz v2, :cond_3

    .line 797
    sget-object v1, Lcom/flurry/sdk/dv$a;->g:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    goto :goto_0

    .line 800
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private declared-synchronized q()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 816
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dv$a;->h:Lcom/flurry/sdk/dv$a;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 889
    :goto_0
    monitor-exit p0

    return-void

    .line 820
    :cond_0
    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "Pre-rendering ad"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 50065
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50066
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 823
    iget-object v6, v1, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 824
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 825
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->b(I)Lcom/flurry/sdk/fr;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_2

    .line 50067
    iget-boolean v2, v1, Lcom/flurry/sdk/fr;->c:Z

    .line 827
    if-eqz v2, :cond_1

    .line 50068
    iget-boolean v1, v1, Lcom/flurry/sdk/fr;->d:Z

    .line 827
    if-eqz v1, :cond_2

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 830
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 824
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50069
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 838
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 839
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "Precaching required for ad, copying assets"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/au;)Lcom/flurry/sdk/ag;

    move-result-object v0

    .line 843
    sget-object v1, Lcom/flurry/sdk/ag;->d:Lcom/flurry/sdk/ag;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 844
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsAvailable"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50070
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 847
    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 848
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Could not copy required ad assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetCopyFailed"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 851
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto/16 :goto_0

    .line 855
    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Ad assets incomplete"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "precachingAdAssetsIncomplete"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    sget-object v1, Lcom/flurry/sdk/bb;->i:Lcom/flurry/sdk/bb;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Lcom/flurry/sdk/bb;)V

    .line 858
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    goto/16 :goto_0

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 862
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 50071
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 865
    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)Z

    .line 869
    :cond_6
    sget-object v0, Lcom/flurry/sdk/bc;->P:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v4, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 872
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 873
    iget v1, v0, Lcom/flurry/sdk/cn;->a:I

    .line 874
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 875
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v3, "Binding is HTML_URL, pre-render required"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 50073
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 50074
    iget-object v1, v1, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 877
    iget-wide v2, v1, Lcom/flurry/sdk/cs;->r:J

    .line 878
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 879
    const/4 v1, 0x3

    sget-object v4, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting pre-render timeout for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/dv;->q:J

    .line 883
    :cond_7
    iget-object v1, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/au;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-static {v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;)V

    .line 887
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V

    .line 178
    iget-object v0, p0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dw;

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->a()V

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3a98

    .line 187
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchAd: adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/dv$a;->g:Lcom/flurry/sdk/dv$a;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->f:Lcom/flurry/sdk/dv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :cond_2
    iput-object p1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    .line 200
    iput-object p3, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    .line 201
    iput-object p2, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    .line 204
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1079
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 204
    if-nez v0, :cond_3

    .line 205
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "There is no network connectivity (ad will not fetch)"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    sget-object v1, Lcom/flurry/sdk/bb;->b:Lcom/flurry/sdk/bb;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 207
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 212
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    .line 215
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 222
    sget-object v0, Lcom/flurry/sdk/dv$a;->b:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    .line 225
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "Setting ad request timeout for 15000 ms"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->m:J

    .line 228
    :cond_5
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    const-string v2, "AdCacheState: Cache empty. Fetching new ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    iget-object v2, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    goto/16 :goto_0

    .line 231
    :cond_6
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdCacheState: Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    invoke-virtual {v3}, Lcom/flurry/sdk/y;->a()I

    move-result v3

    iget-object v4, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ads in cache. Using 1 now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 236
    sget-object v0, Lcom/flurry/sdk/dv$a;->e:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 237
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$7;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dv;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    .line 2178
    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->b()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dv;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    .prologue
    .line 259
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetch finished for adObject:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adSpace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dv;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dw;

    .line 3178
    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->b()V

    .line 262
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/flurry/sdk/dv$a;->a:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 267
    iget-object v0, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    iget-object v1, p0, Lcom/flurry/sdk/dv;->e:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/y;->a(Ljava/util/Collection;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dv;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->g:Lcom/flurry/sdk/r;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->h:Lcom/flurry/sdk/dw;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->i:Lcom/flurry/sdk/y;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->j:Lcom/flurry/sdk/au;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/dv;->k:Lcom/flurry/sdk/au;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/dv;->l:I

    .line 279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->m:J

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->n:J

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->o:J

    .line 282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->p:J

    .line 283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/dv;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dv$a;->h:Lcom/flurry/sdk/dv$a;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/dv$a;)V

    .line 806
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dv$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dv$3;-><init>(Lcom/flurry/sdk/dv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    monitor-exit p0

    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
