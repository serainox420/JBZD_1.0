.class public Lcom/flurry/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/r;
.implements Lcom/flurry/sdk/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/v$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field final b:I

.field final c:Ljava/lang/String;

.field public d:Lcom/flurry/sdk/v$a;

.field public final e:Lcom/flurry/sdk/dv;

.field public f:Lcom/flurry/sdk/au;

.field g:Z

.field h:Z

.field i:J

.field j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field l:J

.field m:J

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/flurry/sdk/au;

.field private final q:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/ll;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/flurry/sdk/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/flurry/sdk/v;->g:Z

    .line 74
    iput-boolean v0, p0, Lcom/flurry/sdk/v;->h:Z

    .line 77
    new-instance v0, Lcom/flurry/sdk/v$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$1;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->q:Lcom/flurry/sdk/kh;

    .line 86
    new-instance v0, Lcom/flurry/sdk/v$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$2;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->r:Lcom/flurry/sdk/kh;

    .line 106
    new-instance v0, Lcom/flurry/sdk/v$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$3;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->s:Lcom/flurry/sdk/kh;

    .line 187
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A session must be started before ad objects may be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fi;->a()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/v;->b:I

    .line 193
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->n:Ljava/lang/ref/WeakReference;

    .line 194
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->o:Ljava/lang/ref/WeakReference;

    .line 195
    iput-object p3, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 197
    sget-object v1, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iput-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    .line 199
    new-instance v1, Lcom/flurry/sdk/dv;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/dv;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 201
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->j:Ljava/lang/ref/WeakReference;

    .line 1228
    iget-object v0, v0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 203
    invoke-virtual {v0, p1, p3, p0}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/v;)V

    .line 205
    invoke-direct {p0}, Lcom/flurry/sdk/v;->q()V

    .line 1511
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/v;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 1519
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/v;->r:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/v;J)J
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/flurry/sdk/v;->i:J

    return-wide p1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 745
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduled banner rotation for adSpace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17284
    iget-object v3, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 745
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 746
    iput-wide p1, p0, Lcom/flurry/sdk/v;->l:J

    .line 748
    iput-wide p1, p0, Lcom/flurry/sdk/v;->m:J

    .line 749
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/v;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->p()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/v;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 18598
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 18600
    monitor-enter p0

    .line 18601
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18602
    monitor-exit p0

    .line 18694
    :goto_0
    return-void

    .line 18606
    :cond_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_2

    .line 18607
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v2

    .line 18608
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing shouldDisplayAd, listener="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18609
    if-eqz v2, :cond_2

    .line 18610
    const/4 v1, 0x0

    .line 18612
    :try_start_1
    iget-object v3, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/bd;

    iget-object v4, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    :goto_1
    invoke-interface {v2, v3, v0}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 18617
    :goto_2
    if-nez v0, :cond_2

    .line 18618
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 18624
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 18612
    :cond_1
    :try_start_3
    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 18613
    :catch_0
    move-exception v0

    .line 18614
    const/4 v2, 0x6

    :try_start_4
    sget-object v3, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v4, "AdListener.shouldDisplayAd"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 18623
    :cond_2
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iput-object v0, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    .line 18624
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18626
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "render banner ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18628
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    .line 18629
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v0

    .line 18632
    if-eqz v2, :cond_3

    instance-of v1, v2, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 18633
    :cond_3
    sget-object v0, Lcom/flurry/sdk/bb;->d:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18639
    :cond_4
    if-nez v0, :cond_5

    .line 18640
    sget-object v0, Lcom/flurry/sdk/bb;->t:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18645
    :cond_5
    iget-object v4, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    .line 18646
    if-nez v4, :cond_6

    .line 18647
    sget-object v0, Lcom/flurry/sdk/bb;->c:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18652
    :cond_6
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18653
    sget-object v0, Lcom/flurry/sdk/bb;->x:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18658
    :cond_7
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 19079
    iget-boolean v0, v0, Lcom/flurry/sdk/jr;->b:Z

    .line 18658
    if-nez v0, :cond_8

    .line 18659
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18660
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18661
    const-string v0, "errorCode"

    sget-object v3, Lcom/flurry/sdk/bb;->b:Lcom/flurry/sdk/bb;

    .line 20040
    iget v3, v3, Lcom/flurry/sdk/bb;->z:I

    .line 18661
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18662
    sget-object v0, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    .line 21078
    :cond_8
    iget-object v0, v4, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 22058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 18668
    if-nez v0, :cond_9

    .line 18669
    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18674
    :cond_9
    iget v1, v0, Lcom/flurry/sdk/cs;->h:I

    if-ne v1, v5, :cond_a

    .line 18675
    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18680
    :cond_a
    sget-object v1, Lcom/flurry/sdk/cu;->a:Lcom/flurry/sdk/cu;

    iget-object v2, v0, Lcom/flurry/sdk/cs;->a:Lcom/flurry/sdk/cu;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 18681
    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18686
    :cond_b
    sget-object v1, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/bd;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/flurry/sdk/bd;->b:Lcom/flurry/sdk/bd;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 18687
    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18692
    :cond_c
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/sdk/cs;->y:Lcom/flurry/sdk/dg;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 18693
    sget-object v0, Lcom/flurry/sdk/bb;->s:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto/16 :goto_0

    .line 18697
    :cond_d
    invoke-direct {p0}, Lcom/flurry/sdk/v;->s()V

    .line 18699
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$8;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/v;)V
    .locals 2

    .prologue
    .line 22708
    invoke-static {}, Lcom/flurry/sdk/ly;->a()V

    .line 22711
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/v;->a(J)V

    .line 23589
    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 23590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    .line 22718
    sget-object v0, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/bd;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22719
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/flurry/sdk/hd;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    .line 22727
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;)V

    .line 56
    return-void

    .line 22721
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    invoke-static {}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/hm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/flurry/sdk/hm;->a(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/hl;

    move-result-object v0

    .line 22722
    if-eqz v0, :cond_0

    .line 22723
    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->a()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/v;->i:J

    .line 503
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->q:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->a(Lcom/flurry/sdk/kh;)V

    .line 504
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/flurry/sdk/lt;->a()Lcom/flurry/sdk/lt;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->q:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lt;->b(Lcom/flurry/sdk/kh;)V

    .line 508
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 578
    invoke-static {}, Lcom/flurry/sdk/ly;->b()V

    .line 580
    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets before display"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 17251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 584
    iget-object v1, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)Z

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-direct {p0}, Lcom/flurry/sdk/v;->r()V

    .line 2515
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->s:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 2523
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->r:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 227
    iput-boolean v2, p0, Lcom/flurry/sdk/v;->g:Z

    .line 228
    iput-boolean v2, p0, Lcom/flurry/sdk/v;->h:Z

    .line 230
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 3228
    iget-object v0, v0, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 3284
    iget-object v1, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/w;->a(Ljava/lang/String;Lcom/flurry/sdk/v;)Z

    .line 232
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 4251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-static {p0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;)V

    .line 237
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$4;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->a()V

    .line 256
    :cond_1
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->j:Ljava/lang/ref/WeakReference;

    .line 406
    return-void
.end method

.method public final a(Lcom/flurry/sdk/au;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/flurry/sdk/v;->p:Lcom/flurry/sdk/au;

    .line 317
    return-void
.end method

.method public final a(Lcom/flurry/sdk/au;JZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x3

    .line 336
    invoke-virtual {p1}, Lcom/flurry/sdk/au;->b()Lcom/flurry/sdk/bd;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/bd;->a:Lcom/flurry/sdk/bd;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 337
    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->u()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->u()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 339
    :goto_0
    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/v;->a(J)V

    .line 12376
    :goto_1
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 11351
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->b()Ljava/lang/String;

    move-result-object v0

    .line 11352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11353
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 11354
    iput-boolean v1, p0, Lcom/flurry/sdk/v;->h:Z

    goto :goto_1

    .line 11356
    :cond_2
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching ad now for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12289
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 11357
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    goto :goto_1

    .line 12363
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->b()Ljava/lang/String;

    move-result-object v0

    .line 12364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12365
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12366
    iput-boolean v1, p0, Lcom/flurry/sdk/v;->h:Z

    goto :goto_1

    .line 13289
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 12369
    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->d()V

    .line 12370
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->a()I

    move-result v0

    if-nez v0, :cond_5

    if-nez p4, :cond_5

    .line 12371
    const-string v0, "VerifyPackageLog"

    const-string v1, "nextAdUnit() cacheSize is empty"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12372
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 12373
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 12374
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 12375
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto/16 :goto_1

    .line 12378
    :cond_5
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetching ad now for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 14289
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 12379
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 11289
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 325
    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->b()V

    .line 326
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/flurry/sdk/dw;
    .locals 4

    .prologue
    .line 295
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 8221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 8284
    iget-object v1, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v2

    .line 8311
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v3

    .line 9068
    iget-object v3, v3, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 9075
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->a:Lcom/flurry/sdk/dw;

    .line 295
    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/flurry/sdk/v;->r()V

    .line 261
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/flurry/sdk/v;->q()V

    .line 267
    iget-wide v0, p0, Lcom/flurry/sdk/v;->l:J

    iput-wide v0, p0, Lcom/flurry/sdk/v;->m:J

    .line 4752
    iget-boolean v0, p0, Lcom/flurry/sdk/v;->g:Z

    if-eqz v0, :cond_0

    .line 5306
    iget-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 4752
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 6079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 4752
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4753
    sget-object v0, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    .line 6306
    iget-object v4, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 4753
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 7306
    iget-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 4754
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 8079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 4754
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->b(Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/flurry/sdk/v;->b:I

    return v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/flurry/sdk/v;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 214
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->a()V

    .line 215
    return-void
.end method

.method public final g()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/flurry/sdk/v;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/flurry/sdk/dv;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    return-object v0
.end method

.method public final j()Lcom/flurry/sdk/y;
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 9221
    iget-object v0, v0, Lcom/flurry/sdk/i;->a:Lcom/flurry/sdk/z;

    .line 9284
    iget-object v1, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/flurry/sdk/fi;->b()Lcom/flurry/sdk/dg;

    move-result-object v2

    .line 9311
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v3

    .line 10068
    iget-object v3, v3, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dg;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    .line 10079
    iget-object v0, v0, Lcom/flurry/sdk/z$a;->b:Lcom/flurry/sdk/y;

    .line 301
    return-object v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 438
    monitor-exit p0

    .line 440
    return v0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Lcom/flurry/sdk/au;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method public final m()Lcom/flurry/sdk/e;
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 11068
    iget-object v0, v0, Lcom/flurry/sdk/j;->c:Lcom/flurry/sdk/e;

    .line 311
    return-object v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    invoke-virtual {v0}, Lcom/flurry/sdk/dv;->c()V

    .line 387
    return-void
.end method

.method public final o()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    .line 478
    const/4 v1, 0x0

    .line 479
    monitor-enter p0

    .line 480
    :try_start_0
    sget-object v2, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v3, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    sget-object v2, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v3, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/v$6;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/v$6;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 496
    :goto_0
    monitor-exit p0

    .line 498
    return v0

    .line 490
    :cond_0
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v2, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v2, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16289
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Lcom/flurry/sdk/dv;

    .line 494
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dw;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3}, Lcom/flurry/sdk/dv;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/dw;Lcom/flurry/sdk/y;)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final p()V
    .locals 2

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->g:Z

    .line 17306
    iget-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 760
    sget-object v1, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    .line 18079
    iget-object v1, v1, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 760
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->c(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 391
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->d:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 14306
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/au;

    .line 395
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    goto :goto_0
.end method

.method public final u()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/flurry/sdk/v;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method
