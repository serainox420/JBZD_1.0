.class public Lcom/flurry/sdk/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lq$a;


# static fields
.field static final a:Ljava/lang/String;

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I


# instance fields
.field private final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/jc;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:I

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ja;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private final G:Lcom/flurry/sdk/hs;

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/lk;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/io/File;

.field i:Lcom/flurry/sdk/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/jf;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:B

.field n:Ljava/lang/Long;

.field o:Z

.field final p:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/jm;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ll;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:Ljava/lang/String;

.field private v:I

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/flurry/sdk/jh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    .line 77
    const/16 v0, 0x64

    sput v0, Lcom/flurry/sdk/jh;->b:I

    .line 78
    const/16 v0, 0xa

    sput v0, Lcom/flurry/sdk/jh;->c:I

    .line 79
    const/16 v0, 0x3e8

    sput v0, Lcom/flurry/sdk/jh;->d:I

    .line 80
    const v0, 0x27100

    sput v0, Lcom/flurry/sdk/jh;->e:I

    .line 81
    const/16 v0, 0x32

    sput v0, Lcom/flurry/sdk/jh;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    new-instance v0, Lcom/flurry/sdk/jh$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jh$1;-><init>(Lcom/flurry/sdk/jh;)V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->s:Lcom/flurry/sdk/kh;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/jh;->v:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->x:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->z:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    .line 163
    iput-boolean v2, p0, Lcom/flurry/sdk/jh;->B:Z

    .line 164
    iput v1, p0, Lcom/flurry/sdk/jh;->C:I

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    .line 166
    iput v1, p0, Lcom/flurry/sdk/jh;->E:I

    .line 167
    iput v1, p0, Lcom/flurry/sdk/jh;->F:I

    .line 169
    iput-boolean v2, p0, Lcom/flurry/sdk/jh;->o:Z

    .line 171
    new-instance v0, Lcom/flurry/sdk/hs;

    invoke-direct {v0}, Lcom/flurry/sdk/hs;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->G:Lcom/flurry/sdk/hs;

    .line 173
    new-instance v0, Lcom/flurry/sdk/jh$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jh$9;-><init>(Lcom/flurry/sdk/jh;)V

    iput-object v0, p0, Lcom/flurry/sdk/jh;->p:Lcom/flurry/sdk/kh;

    .line 188
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jh;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jh;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/jh;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/jh;ZJ)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/jh;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 20

    .prologue
    .line 759
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flurry/sdk/jh;->o:Z

    if-nez v2, :cond_1

    .line 760
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v4, "Analytics disabled, not sending agent report."

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 764
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    :cond_2
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    const/16 v19, 0x0

    .line 772
    :try_start_2
    new-instance v3, Lcom/flurry/sdk/jd;

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    .line 25101
    iget-object v4, v2, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 772
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ju;->g()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/flurry/sdk/jh;->j:Z

    .line 773
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jl;->c()Z

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/flurry/sdk/jh;->t:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    .line 774
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v2

    .line 25128
    iget-object v2, v2, Lcom/flurry/sdk/jl;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jh;->G:Lcom/flurry/sdk/hs;

    invoke-virtual {v2}, Lcom/flurry/sdk/hs;->a()Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flurry/sdk/jh;->x:Ljava/util/Map;

    .line 775
    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/ka;->b()Ljava/util/HashMap;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v18}, Lcom/flurry/sdk/jd;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    .line 25212
    iget-object v2, v3, Lcom/flurry/sdk/jd;->a:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 782
    :goto_1
    if-nez v2, :cond_3

    .line 783
    :try_start_3
    sget-object v2, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26844
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flurry/sdk/jh;->i:Lcom/flurry/sdk/kf;

    invoke-virtual {v2}, Lcom/flurry/sdk/kf;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 778
    :catch_0
    move-exception v2

    .line 779
    :try_start_4
    sget-object v3, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while generating report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto :goto_1

    .line 785
    :cond_3
    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    .line 786
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v3

    .line 26090
    iget-object v3, v3, Lcom/flurry/sdk/hr;->b:Lcom/flurry/sdk/je;

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/jz;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v5

    .line 26101
    iget-object v5, v5, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 791
    invoke-virtual {v3, v2, v5, v4}, Lcom/flurry/sdk/je;->b([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/flurry/sdk/jh;)Lcom/flurry/sdk/kh;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/jh;->s:Lcom/flurry/sdk/kh;

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 3

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jc;

    .line 5037
    iget-boolean v2, v0, Lcom/flurry/sdk/jc;->b:Z

    .line 527
    if-eqz v2, :cond_0

    .line 5041
    iget-boolean v2, v0, Lcom/flurry/sdk/jc;->c:Z

    .line 527
    if-nez v2, :cond_0

    .line 528
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jc;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 531
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/jh;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/jh;->e()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/jh;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27857
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 28097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 27857
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27859
    const-string v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jh;->j:Z

    .line 27860
    const-string v1, "com.flurry.sdk.initial_run_time"

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/jh;->t:J

    .line 27861
    const-string v1, "com.flurry.sdk.api_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jh;->u:Ljava/lang/String;

    .line 27864
    iget-object v0, p0, Lcom/flurry/sdk/jh;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/sdk/jh;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 27867
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 28101
    iget-object v0, v0, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 27867
    iput-object v0, p0, Lcom/flurry/sdk/jh;->u:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    .line 27869
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/jh;->u:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 29101
    iget-object v1, v1, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 27869
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27872
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/jh;->t:J

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 6

    .prologue
    .line 804
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "Loading persistent session report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/flurry/sdk/jh;->i:Lcom/flurry/sdk/kf;

    invoke-virtual {v0}, Lcom/flurry/sdk/kf;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 807
    if-eqz v0, :cond_1

    .line 808
    iget-object v1, p0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 811
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jh;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "Legacy persistent agent data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/flurry/sdk/jh;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/hu;->a(Ljava/io/File;)Lcom/flurry/sdk/ji;

    move-result-object v2

    .line 815
    if-eqz v2, :cond_3

    .line 27028
    iget-boolean v3, v2, Lcom/flurry/sdk/ji;->a:Z

    .line 27032
    iget-wide v0, v2, Lcom/flurry/sdk/ji;->b:J

    .line 820
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 821
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v0

    .line 824
    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/jh;->j:Z

    .line 825
    iput-wide v0, p0, Lcom/flurry/sdk/jh;->t:J

    .line 829
    invoke-direct {p0}, Lcom/flurry/sdk/jh;->f()V

    .line 27036
    iget-object v0, v2, Lcom/flurry/sdk/ji;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_3

    .line 833
    iget-object v1, p0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/jh;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 838
    invoke-virtual {p0}, Lcom/flurry/sdk/jh;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/flurry/sdk/jh;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/jh;->f()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/jh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 877
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 27097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 877
    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 878
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 880
    const-string v1, "com.flurry.sdk.previous_successful_report"

    iget-boolean v2, p0, Lcom/flurry/sdk/jh;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v1, "com.flurry.sdk.initial_run_time"

    iget-wide v2, p0, Lcom/flurry/sdk/jh;->t:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v1, "com.flurry.sdk.api_key"

    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v2

    .line 27101
    iget-object v2, v2, Lcom/flurry/sdk/jy;->d:Ljava/lang/String;

    .line 882
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 884
    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/jh;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/flurry/sdk/jh;->o:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    if-nez p3, :cond_1

    .line 602
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 595
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const-string v0, "\ue8ffsid+Tumblr"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/flurry/sdk/jh;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    .line 601
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logEvent status for syndication:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 608
    iget-boolean v0, p0, Lcom/flurry/sdk/jh;->o:Z

    if-nez v0, :cond_1

    .line 609
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 610
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "Analytics has been disabled, not logging event."

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 614
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->d()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 616
    invoke-static {p1}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 618
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/jh;->z:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jb;

    .line 622
    if-nez v0, :cond_4

    .line 623
    iget-object v0, p0, Lcom/flurry/sdk/jh;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v3, Lcom/flurry/sdk/jh;->b:I

    if-ge v0, v3, :cond_3

    .line 624
    new-instance v0, Lcom/flurry/sdk/jb;

    invoke-direct {v0}, Lcom/flurry/sdk/jb;-><init>()V

    .line 625
    const/4 v3, 0x1

    iput v3, v0, Lcom/flurry/sdk/jb;->a:I

    .line 626
    iget-object v3, p0, Lcom/flurry/sdk/jh;->z:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Event count started: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 639
    :goto_1
    iget-boolean v1, p0, Lcom/flurry/sdk/jh;->k:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/jh;->d:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/flurry/sdk/jh;->C:I

    sget v3, Lcom/flurry/sdk/jh;->e:I

    if-ge v1, v3, :cond_7

    .line 640
    if-nez p2, :cond_8

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 643
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/flurry/sdk/jh;->c:I

    if-le v0, v1, :cond_5

    .line 644
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 629
    :cond_3
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Too many different events. Event not counted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 634
    :cond_4
    iget v1, v0, Lcom/flurry/sdk/jb;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/sdk/jb;->a:I

    .line 635
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event count incremented: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    .line 648
    :cond_5
    new-instance v0, Lcom/flurry/sdk/jc;

    .line 16887
    iget-object v1, p0, Lcom/flurry/sdk/jh;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    move v6, p3

    .line 648
    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/jc;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 17072
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->b()[B

    move-result-object v1

    array-length v1, v1

    .line 651
    iget v4, p0, Lcom/flurry/sdk/jh;->C:I

    add-int/2addr v1, v4

    sget v4, Lcom/flurry/sdk/jh;->e:I

    if-gt v1, v4, :cond_6

    .line 652
    iget-object v1, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    iget v1, p0, Lcom/flurry/sdk/jh;->C:I

    .line 18072
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->b()[B

    move-result-object v0

    array-length v0, v0

    .line 653
    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/jh;->C:I

    .line 654
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    .line 660
    iget-boolean v1, p0, Lcom/flurry/sdk/jh;->o:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v1

    .line 18086
    iget-object v1, v1, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 660
    if-eqz v1, :cond_0

    .line 661
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v4, Lcom/flurry/sdk/jh$7;

    invoke-direct {v4, p0, v2, v3}, Lcom/flurry/sdk/jh$7;-><init>(Lcom/flurry/sdk/jh;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 670
    :cond_6
    :try_start_2
    sget v0, Lcom/flurry/sdk/jh;->e:I

    iput v0, p0, Lcom/flurry/sdk/jh;->C:I

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/jh;->B:Z

    .line 673
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto/16 :goto_0

    .line 680
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/jh;->B:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v3, p2

    goto/16 :goto_2
.end method

.method final declared-synchronized a(JJJI)Lcom/flurry/sdk/jf;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 541
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/sdk/jg;

    invoke-direct {v2}, Lcom/flurry/sdk/jg;-><init>()V

    .line 543
    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ju;->g()Ljava/lang/String;

    move-result-object v0

    .line 6040
    iput-object v0, v2, Lcom/flurry/sdk/jg;->a:Ljava/lang/String;

    .line 6048
    iput-wide p1, v2, Lcom/flurry/sdk/jg;->b:J

    .line 6056
    iput-wide p3, v2, Lcom/flurry/sdk/jg;->c:J

    .line 6064
    iput-wide p5, v2, Lcom/flurry/sdk/jg;->d:J

    .line 547
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    .line 6072
    iput-object v0, v2, Lcom/flurry/sdk/jg;->e:Ljava/util/Map;

    .line 548
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 6149
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v0

    .line 6150
    if-eqz v0, :cond_1

    .line 6151
    invoke-virtual {v0}, Lcom/flurry/sdk/jx;->d()Ljava/lang/String;

    move-result-object v0

    .line 7080
    :goto_0
    iput-object v0, v2, Lcom/flurry/sdk/jg;->f:Ljava/lang/String;

    .line 549
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 7164
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v0

    .line 7165
    if-eqz v0, :cond_2

    .line 7166
    invoke-virtual {v0}, Lcom/flurry/sdk/jx;->e()Ljava/lang/String;

    move-result-object v0

    .line 8088
    :goto_1
    iput-object v0, v2, Lcom/flurry/sdk/jg;->g:Ljava/lang/String;

    .line 550
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 8179
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v0

    .line 8180
    if-eqz v0, :cond_3

    .line 8181
    invoke-virtual {v0}, Lcom/flurry/sdk/jx;->f()Ljava/util/Map;

    move-result-object v0

    .line 9096
    :goto_2
    iput-object v0, v2, Lcom/flurry/sdk/jg;->h:Ljava/util/Map;

    .line 552
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    invoke-static {}, Lcom/flurry/sdk/jo;->b()Ljava/lang/String;

    move-result-object v0

    .line 9104
    iput-object v0, v2, Lcom/flurry/sdk/jg;->i:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    .line 10031
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 10112
    iput-object v0, v2, Lcom/flurry/sdk/jg;->j:Ljava/lang/String;

    .line 10120
    iput p7, v2, Lcom/flurry/sdk/jg;->k:I

    .line 555
    iget v0, p0, Lcom/flurry/sdk/jh;->v:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/flurry/sdk/jh;->v:I

    .line 10128
    :goto_3
    iput v0, v2, Lcom/flurry/sdk/jg;->l:I

    .line 10895
    iget-object v0, p0, Lcom/flurry/sdk/jh;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    .line 11136
    :goto_4
    iput-object v0, v2, Lcom/flurry/sdk/jg;->m:Ljava/lang/String;

    .line 558
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jp;->g()Landroid/location/Location;

    move-result-object v0

    .line 11144
    iput-object v0, v2, Lcom/flurry/sdk/jg;->n:Landroid/location/Location;

    .line 11923
    iget v0, p0, Lcom/flurry/sdk/jh;->F:I

    .line 12152
    iput v0, v2, Lcom/flurry/sdk/jg;->o:I

    .line 561
    iget-byte v0, p0, Lcom/flurry/sdk/jh;->m:B

    .line 12160
    iput-byte v0, v2, Lcom/flurry/sdk/jg;->p:B

    .line 562
    iget-object v0, p0, Lcom/flurry/sdk/jh;->n:Ljava/lang/Long;

    .line 12168
    iput-object v0, v2, Lcom/flurry/sdk/jg;->q:Ljava/lang/Long;

    .line 12919
    iget-object v0, p0, Lcom/flurry/sdk/jh;->z:Ljava/util/Map;

    .line 13176
    iput-object v0, v2, Lcom/flurry/sdk/jg;->r:Ljava/util/Map;

    .line 13911
    iget-object v0, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    .line 14184
    iput-object v0, v2, Lcom/flurry/sdk/jg;->s:Ljava/util/List;

    .line 566
    iget-boolean v0, p0, Lcom/flurry/sdk/jh;->B:Z

    .line 14192
    iput-boolean v0, v2, Lcom/flurry/sdk/jg;->t:Z

    .line 14915
    iget-object v0, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    .line 15208
    iput-object v0, v2, Lcom/flurry/sdk/jg;->v:Ljava/util/List;

    .line 569
    iget v0, p0, Lcom/flurry/sdk/jh;->E:I

    .line 16200
    iput v0, v2, Lcom/flurry/sdk/jg;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/jf;

    invoke-direct {v0, v2}, Lcom/flurry/sdk/jf;-><init>(Lcom/flurry/sdk/jg;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :goto_5
    if-nez v0, :cond_0

    .line 579
    :try_start_2
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 6153
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 7168
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 8183
    goto :goto_2

    .line 555
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/lw;->e()I

    move-result v0

    goto :goto_3

    .line 10895
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/jh;->l:Ljava/lang/String;

    goto :goto_4

    .line 574
    :catch_0
    move-exception v0

    .line 575
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating analytics session report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_5

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/lw;->e()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/jh;->v:I

    .line 271
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hr;->c:Lcom/flurry/sdk/io;

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jh$15;-><init>(Lcom/flurry/sdk/jh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jh;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 2086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jh$16;-><init>(Lcom/flurry/sdk/jh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jh;->p:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 346
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/jh;->b(J)V

    .line 348
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jh$5;-><init>(Lcom/flurry/sdk/jh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 369
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/jh$6;-><init>(Lcom/flurry/sdk/jh;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 378
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lp;->b(Ljava/lang/String;Lcom/flurry/sdk/lq$a;)Z

    .line 380
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lp;->b(Ljava/lang/String;Lcom/flurry/sdk/lq$a;)Z

    .line 382
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lp;->b(Ljava/lang/String;Lcom/flurry/sdk/lq$a;)Z

    .line 383
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/lp;->b(Ljava/lang/String;Lcom/flurry/sdk/lq$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 439
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 440
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 442
    if-eqz v2, :cond_2

    .line 443
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Launch Options Bundle is present "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/jh;->x:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v4, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Its value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v4, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    const-string v1, "null"

    goto :goto_1

    .line 459
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 389
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 411
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_1
    return-void

    .line 389
    :sswitch_0
    const-string v2, "LogEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "UserId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Gender"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "Age"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "analyticsEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 391
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jh;->k:Z

    .line 392
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jh;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/jh;->l:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jh;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 399
    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/sdk/jh;->m:B

    .line 400
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/flurry/sdk/jh;->m:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 403
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/jh;->n:Ljava/lang/Long;

    .line 404
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Birthdate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jh;->n:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jh;->o:Z

    .line 408
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jh;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_1
        -0x66855b25 -> :sswitch_4
        -0x2bfdf2a3 -> :sswitch_0
        0x100df -> :sswitch_3
        0x7eeadee1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 729
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 731
    :goto_0
    iget v2, p0, Lcom/flurry/sdk/jh;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/sdk/jh;->E:I

    .line 732
    iget-object v2, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/flurry/sdk/jh;->f:I

    if-ge v2, v3, :cond_2

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 734
    new-instance v0, Lcom/flurry/sdk/ja;

    .line 21891
    iget-object v1, p0, Lcom/flurry/sdk/jh;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 734
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ja;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    iget-object v1, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error logged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22125
    iget-object v0, v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    .line 738
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    .line 729
    goto :goto_0

    .line 739
    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    .line 742
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ja;

    .line 23125
    iget-object v1, v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    .line 744
    if-eqz v1, :cond_3

    const-string v1, "uncaught"

    .line 24125
    iget-object v0, v0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    .line 745
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 747
    new-instance v0, Lcom/flurry/sdk/ja;

    .line 24891
    iget-object v1, p0, Lcom/flurry/sdk/jh;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 747
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ja;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    iget-object v1, p0, Lcom/flurry/sdk/jh;->D:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 742
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 754
    :cond_4
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 690
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jh;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jc;

    .line 19045
    iget-boolean v1, v0, Lcom/flurry/sdk/jc;->b:Z

    if-eqz v1, :cond_3

    iget-wide v4, v0, Lcom/flurry/sdk/jc;->d:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/flurry/sdk/jc;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 691
    :goto_0
    if-eqz v1, :cond_0

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 694
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/flurry/sdk/jh;->C:I

    sget v4, Lcom/flurry/sdk/jh;->e:I

    if-ge v1, v4, :cond_1

    .line 696
    iget v1, p0, Lcom/flurry/sdk/jh;->C:I

    .line 19072
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->b()[B

    move-result-object v4

    array-length v4, v4

    .line 696
    sub-int/2addr v1, v4

    .line 698
    new-instance v4, Ljava/util/HashMap;

    .line 699
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 700
    invoke-virtual {v0, p2}, Lcom/flurry/sdk/jc;->a(Ljava/util/Map;)V

    .line 20072
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->b()[B

    move-result-object v5

    array-length v5, v5

    .line 702
    add-int/2addr v5, v1

    sget v6, Lcom/flurry/sdk/jh;->e:I

    if-gt v5, v6, :cond_5

    .line 703
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    sget v6, Lcom/flurry/sdk/jh;->c:I

    if-le v5, v6, :cond_4

    .line 704
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MaxEventParams exceeded on endEvent: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    invoke-static {v1, v5}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/jc;->b(Ljava/util/Map;)V

    .line 722
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/jc;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move v1, v2

    .line 19045
    goto :goto_0

    .line 21072
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/flurry/sdk/jc;->b()[B

    move-result-object v4

    array-length v4, v4

    .line 709
    add-int/2addr v1, v4

    iput v1, p0, Lcom/flurry/sdk/jh;->C:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 713
    :cond_5
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/jc;->b(Ljava/util/Map;)V

    .line 714
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/jh;->B:Z

    .line 715
    sget v1, Lcom/flurry/sdk/jh;->e:I

    iput v1, p0, Lcom/flurry/sdk/jh;->C:I

    .line 717
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v4, "Event Log size exceeded. No more event details logged."

    invoke-static {v1, v4}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final a(Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 464
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v3, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 471
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_3

    .line 472
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v3, "carrier.name"

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    invoke-static {}, Lcom/flurry/sdk/js;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v3, "carrier.details"

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    invoke-static {}, Lcom/flurry/sdk/js;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 491
    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 492
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 493
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 495
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.available"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ".start"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.total"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, ".start"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v3

    .line 4097
    iget-object v3, v3, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 506
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 508
    if-eqz v4, :cond_9

    .line 509
    const-string v0, "status"

    const/4 v3, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 510
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v8, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 512
    :goto_3
    :try_start_1
    const-string v1, "level"

    const/4 v3, -0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 513
    :try_start_2
    const-string v1, "scale"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    move v2, v3

    .line 520
    :goto_4
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 521
    iget-object v3, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "battery.charging"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const-string v1, ".start"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "battery.remaining"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, ".start"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void

    .line 478
    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v4, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/flurry/sdk/jh;->y:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 495
    :cond_4
    const-string v0, ".end"

    goto/16 :goto_1

    .line 497
    :cond_5
    const-string v0, ".end"

    goto/16 :goto_2

    :cond_6
    move v0, v1

    .line 510
    goto/16 :goto_3

    .line 516
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    .line 517
    :goto_7
    sget-object v4, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error getting battery status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v4, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_4

    .line 521
    :cond_7
    const-string v1, ".end"

    goto/16 :goto_5

    .line 522
    :cond_8
    const-string v0, ".end"

    goto :goto_6

    .line 516
    :catch_1
    move-exception v1

    move-object v3, v1

    move v1, v2

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method public final declared-synchronized b()V
    .locals 10

    .prologue
    .line 293
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jh;->a(Z)V

    .line 296
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v2

    .line 297
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->e()J

    move-result-wide v4

    .line 298
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    .line 2131
    const-wide/16 v6, 0x0

    .line 2133
    invoke-static {}, Lcom/flurry/sdk/jk;->h()Lcom/flurry/sdk/jx;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_0

    .line 2149
    iget-wide v6, v0, Lcom/flurry/sdk/jx;->f:J

    .line 299
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->g()Lcom/flurry/sdk/jr$a;

    move-result-object v0

    .line 3063
    iget v8, v0, Lcom/flurry/sdk/jr$a;->e:I

    .line 302
    iget-boolean v0, p0, Lcom/flurry/sdk/jh;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 3086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$2;

    invoke-direct {v1, p0, v2, v3}, Lcom/flurry/sdk/jh$2;-><init>(Lcom/flurry/sdk/jh;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 312
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jh$3;-><init>(Lcom/flurry/sdk/jh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 321
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v9

    new-instance v0, Lcom/flurry/sdk/jh$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/flurry/sdk/jh$4;-><init>(Lcom/flurry/sdk/jh;JJJI)V

    invoke-virtual {v9, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_2
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/jh;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/jh;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 3

    .prologue
    .line 798
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jh;->a:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/flurry/sdk/jh;->i:Lcom/flurry/sdk/kf;

    iget-object v1, p0, Lcom/flurry/sdk/jh;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kf;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    monitor-exit p0

    return-void

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
