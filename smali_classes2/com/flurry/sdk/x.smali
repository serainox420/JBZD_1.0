.class public Lcom/flurry/sdk/x;
.super Lcom/flurry/sdk/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/x$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/view/GestureDetector;

.field private C:Landroid/app/KeyguardManager;

.field private D:J

.field private E:Lcom/flurry/sdk/gz$a;

.field public k:Lcom/flurry/sdk/x$a;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/flurry/sdk/gj;

.field public q:Lcom/flurry/sdk/gu;

.field private s:Landroid/view/GestureDetector;

.field private t:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/n;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/graphics/Rect;

.field private x:I

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, v1, p2}, Lcom/flurry/sdk/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 59
    iput-object v1, p0, Lcom/flurry/sdk/x;->l:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lcom/flurry/sdk/x;->m:Ljava/util/List;

    .line 63
    iput-boolean v2, p0, Lcom/flurry/sdk/x;->u:Z

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->v:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->n:Ljava/lang/ref/WeakReference;

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->o:Ljava/lang/ref/WeakReference;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/x;->w:Landroid/graphics/Rect;

    .line 69
    iput v2, p0, Lcom/flurry/sdk/x;->x:I

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->y:Ljava/lang/ref/WeakReference;

    .line 74
    const/16 v0, 0x32

    iput v0, p0, Lcom/flurry/sdk/x;->z:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/x;->A:Landroid/os/Handler;

    .line 78
    iput-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    .line 79
    iput-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/x;->D:J

    .line 737
    new-instance v0, Lcom/flurry/sdk/x$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/x$7;-><init>(Lcom/flurry/sdk/x;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->E:Lcom/flurry/sdk/gz$a;

    .line 88
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/flurry/sdk/x$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$1;-><init>(Lcom/flurry/sdk/x;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->s:Landroid/view/GestureDetector;

    .line 152
    new-instance v0, Lcom/flurry/sdk/x$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/x$2;-><init>(Lcom/flurry/sdk/x;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->t:Lcom/flurry/sdk/kh;

    .line 177
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/flurry/sdk/x$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$3;-><init>(Lcom/flurry/sdk/x;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->B:Landroid/view/GestureDetector;

    .line 200
    sget-object v0, Lcom/flurry/sdk/x$a;->a:Lcom/flurry/sdk/x$a;

    iput-object v0, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    .line 202
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.RegisterCTAViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/x;->t:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 203
    return-void
.end method

.method static synthetic A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized B()V
    .locals 6

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/x;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 635
    :goto_0
    monitor-exit p0

    return-void

    .line 632
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/flurry/sdk/bc;->T:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 23206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 633
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/x;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()V
    .locals 6

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    const-string v1, "Click logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/flurry/sdk/bc;->h:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 24206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 639
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized D()V
    .locals 6

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    const-string v1, "Call Click logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    sget-object v0, Lcom/flurry/sdk/bc;->Z:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 24677
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending EventType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for AdUnitId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 25171
    iget v5, p0, Lcom/flurry/sdk/o;->b:I

    .line 24677
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 24678
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 25206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 24678
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 649
    const-string v0, "clickToCall"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/String;)Lcom/flurry/sdk/de;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_0

    .line 651
    sget-object v0, Lcom/flurry/sdk/bc;->af:Lcom/flurry/sdk/bc;

    iget-object v1, v1, Lcom/flurry/sdk/de;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 26206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 651
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :cond_0
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized E()V
    .locals 6

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    const-string v1, "Expand logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/flurry/sdk/bc;->X:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 27206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 657
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized F()V
    .locals 6

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    const-string v1, "Collapse logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/flurry/sdk/bc;->Y:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    .line 28206
    iget-object v4, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 662
    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->v:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/x;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/flurry/sdk/x;->y:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 666
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 667
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 668
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 669
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/ViewGroup;)V

    .line 671
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 672
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 666
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 674
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;)I
    .locals 6

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12338
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12339
    const/4 v0, 0x0

    .line 325
    :goto_0
    if-nez v0, :cond_2

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-double v0, v0

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    .line 331
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 333
    :goto_1
    return v0

    .line 12341
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/x;->C:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    .line 12342
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/flurry/sdk/x;->C:Landroid/app/KeyguardManager;

    .line 12344
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/x;->C:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0

    .line 333
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Lcom/flurry/sdk/de;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 585
    :goto_0
    return-object v0

    .line 574
    :cond_0
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v2, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 575
    goto :goto_0

    .line 19206
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 21078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 20154
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    .line 578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 579
    iget-object v3, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 585
    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->n:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static b(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 542
    if-eqz v0, :cond_0

    .line 543
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 544
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 546
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/x;->E()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->o:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/x;->F()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/x;->B()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/x;->C()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->y:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/gj;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    return-object v0
.end method

.method static synthetic j(Lcom/flurry/sdk/x;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/x;->D()V

    return-void
.end method

.method static synthetic k(Lcom/flurry/sdk/x;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->s:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic l(Lcom/flurry/sdk/x;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/x;->B:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Lcom/flurry/sdk/o;->a()V

    .line 208
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->x()V

    .line 489
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->v:Ljava/lang/ref/WeakReference;

    .line 491
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/x;->a(Landroid/view/ViewGroup;)V

    .line 494
    :cond_0
    return-void
.end method

.method protected final a(Lcom/flurry/sdk/d;)V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/flurry/sdk/o;->a(Lcom/flurry/sdk/d;)V

    .line 390
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13282
    iget-object v0, p0, Lcom/flurry/sdk/o;->h:Lcom/flurry/sdk/au;

    .line 393
    if-nez v0, :cond_1

    .line 394
    sget-object v0, Lcom/flurry/sdk/bb;->c:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 15078
    :cond_1
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 16058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 400
    if-nez v0, :cond_2

    .line 401
    sget-object v0, Lcom/flurry/sdk/bb;->e:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 406
    :cond_2
    sget-object v1, Lcom/flurry/sdk/cu;->e:Lcom/flurry/sdk/cu;

    iget-object v0, v0, Lcom/flurry/sdk/cs;->a:Lcom/flurry/sdk/cu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 407
    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->p()V

    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iput-object v0, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    .line 424
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 513
    new-instance v1, Lcom/flurry/sdk/x$4;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/x$4;-><init>(Lcom/flurry/sdk/x;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-super {p0}, Lcom/flurry/sdk/o;->b()V

    .line 759
    :cond_0
    return-void
.end method

.method protected final q()V
    .locals 12

    .prologue
    const/high16 v11, -0x80000000

    const/4 v10, 0x3

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/16 v8, 0x32

    .line 212
    invoke-super {p0}, Lcom/flurry/sdk/o;->q()V

    .line 214
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/x;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 220
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/flurry/sdk/x;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/flurry/sdk/x;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/x;->a(Ljava/lang/ref/WeakReference;)V

    .line 1603
    :cond_2
    if-eqz v0, :cond_3

    .line 1607
    new-instance v1, Lcom/flurry/sdk/x$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$5;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1615
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    if-eqz v1, :cond_3

    .line 1616
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v1, v9}, Lcom/flurry/sdk/gj;->setClickable(Z)V

    .line 1617
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    new-instance v2, Lcom/flurry/sdk/x$6;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/x$6;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    :cond_3
    iget-boolean v1, p0, Lcom/flurry/sdk/x;->u:Z

    if-nez v1, :cond_4

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/flurry/sdk/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 240
    iget-object v1, p0, Lcom/flurry/sdk/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/x;->w:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v2, v1

    .line 242
    :goto_1
    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/2addr v1, v6

    int-to-long v6, v1

    .line 254
    long-to-float v1, v2

    const-wide/16 v2, 0x32

    mul-long/2addr v2, v6

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    .line 255
    iget v1, p0, Lcom/flurry/sdk/x;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/sdk/x;->x:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    .line 256
    invoke-direct {p0}, Lcom/flurry/sdk/x;->B()V

    .line 267
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v1, :cond_5

    .line 268
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/flurry/sdk/gj;->c:I

    .line 269
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    iget v1, v1, Lcom/flurry/sdk/gj;->c:I

    if-lt v1, v8, :cond_5

    .line 270
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/flurry/sdk/gj;->b:Z

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v1}, Lcom/flurry/sdk/gj;->f()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v1}, Lcom/flurry/sdk/gj;->h()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 277
    iget-wide v2, p0, Lcom/flurry/sdk/x;->D:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/x;->D:J

    .line 282
    :cond_6
    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)I

    move-result v1

    if-ge v1, v8, :cond_9

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 2292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 282
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 3292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 282
    invoke-virtual {v1}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 283
    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()I

    move-result v0

    .line 284
    if-eq v0, v11, :cond_0

    .line 285
    sget-object v1, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayPause: view-ability Ready to pause video position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4171
    iget v3, p0, Lcom/flurry/sdk/o;->b:I

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gu;->c(I)V

    goto/16 :goto_0

    .line 259
    :cond_7
    iput v9, p0, Lcom/flurry/sdk/x;->x:I

    goto :goto_2

    .line 262
    :cond_8
    iput v9, p0, Lcom/flurry/sdk/x;->x:I

    goto/16 :goto_2

    .line 291
    :cond_9
    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)I

    move-result v0

    if-lt v0, v8, :cond_0

    .line 4302
    iget-wide v0, p0, Lcom/flurry/sdk/o;->g:J

    .line 291
    iget-wide v2, p0, Lcom/flurry/sdk/x;->D:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 5292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 293
    if-eqz v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 6292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 294
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->getVideoCompletedFromStateOrVideo()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->q()Z

    move-result v0

    if-nez v0, :cond_a

    .line 295
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayPause: view-ability Ready to play video adObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7171
    iget v2, p0, Lcom/flurry/sdk/o;->b:I

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 7317
    iget-object v1, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    if-eqz v1, :cond_a

    .line 7318
    iget-object v0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    invoke-interface {v0}, Lcom/flurry/sdk/gu$a;->z()V

    .line 299
    :cond_a
    iput-wide v4, p0, Lcom/flurry/sdk/x;->D:J

    goto/16 :goto_0

    .line 304
    :cond_b
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v1}, Lcom/flurry/sdk/gj;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v1}, Lcom/flurry/sdk/gj;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)I

    move-result v1

    if-ge v1, v8, :cond_c

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 8292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 305
    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 9292
    iget-object v1, v1, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 305
    invoke-virtual {v1}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 307
    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->b()I

    move-result v0

    .line 308
    if-eq v0, v11, :cond_0

    .line 309
    sget-object v1, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayPause: view-ability Ready to pause video position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10171
    iget v3, p0, Lcom/flurry/sdk/o;->b:I

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gu;->c(I)V

    .line 311
    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->j()V

    goto/16 :goto_0

    .line 315
    :cond_c
    iget-object v1, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/flurry/sdk/gj;->c:I

    .line 316
    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    iget v0, v0, Lcom/flurry/sdk/gj;->c:I

    if-lt v0, v8, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 10292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 317
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 11292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 317
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/gu;

    .line 12292
    iget-object v0, v0, Lcom/flurry/sdk/gu;->b:Lcom/flurry/sdk/gw;

    .line 317
    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/gj;->b:Z

    goto/16 :goto_0

    :cond_d
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    .line 16206
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 459
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    goto :goto_0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 448
    monitor-exit p0

    .line 450
    return v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final v()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 463
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v2, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 472
    :goto_0
    return v0

    .line 17206
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 19078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 18154
    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/de;

    .line 468
    iget-object v3, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v4, "videoUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v0, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    const-string v3, "vastAd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 472
    goto :goto_0
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->a:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->r()V

    .line 483
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_1
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/flurry/sdk/x;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeAdObject fetched: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {p0}, Lcom/flurry/sdk/fh;->a(Lcom/flurry/sdk/r;)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/flurry/sdk/x;->v:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    .line 536
    iget-object v0, p0, Lcom/flurry/sdk/x;->n:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    .line 537
    iget-object v0, p0, Lcom/flurry/sdk/x;->o:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    .line 538
    return-void
.end method

.method public final y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/de;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21206
    iget-object v1, p0, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 23078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 22154
    invoke-virtual {v1}, Lcom/flurry/sdk/ay;->b()Ljava/util/List;

    move-result-object v1

    .line 594
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final z()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    sget-object v1, Lcom/flurry/sdk/gj$a;->a:Lcom/flurry/sdk/gj$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gj;->a(Lcom/flurry/sdk/gj$a;)V

    .line 688
    return-void
.end method
