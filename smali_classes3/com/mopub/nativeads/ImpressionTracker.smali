.class public Lcom/mopub/nativeads/ImpressionTracker;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ImpressionTracker$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/nativeads/l;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/k",
            "<",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/mopub/nativeads/ImpressionTracker$a;

.field private final f:Lcom/mopub/nativeads/l$b;

.field private g:Lcom/mopub/nativeads/l$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 50
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/mopub/nativeads/l$b;

    invoke-direct {v3}, Lcom/mopub/nativeads/l$b;-><init>()V

    new-instance v4, Lcom/mopub/nativeads/l;

    invoke-direct {v4, p1}, Lcom/mopub/nativeads/l;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/nativeads/l$b;Lcom/mopub/nativeads/l;Landroid/os/Handler;)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/nativeads/l$b;Lcom/mopub/nativeads/l;Landroid/os/Handler;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/k",
            "<",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;>;",
            "Lcom/mopub/nativeads/l$b;",
            "Lcom/mopub/nativeads/l;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lcom/mopub/nativeads/ImpressionTracker;->f:Lcom/mopub/nativeads/l$b;

    .line 66
    iput-object p4, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    .line 68
    new-instance v0, Lcom/mopub/nativeads/ImpressionTracker$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ImpressionTracker$1;-><init>(Lcom/mopub/nativeads/ImpressionTracker;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->g:Lcom/mopub/nativeads/l$d;

    .line 97
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    iget-object v1, p0, Lcom/mopub/nativeads/ImpressionTracker;->g:Lcom/mopub/nativeads/l$d;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/l;->a(Lcom/mopub/nativeads/l$d;)V

    .line 99
    iput-object p5, p0, Lcom/mopub/nativeads/ImpressionTracker;->d:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/mopub/nativeads/ImpressionTracker$a;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/ImpressionTracker$a;-><init>(Lcom/mopub/nativeads/ImpressionTracker;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->e:Lcom/mopub/nativeads/ImpressionTracker$a;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/ImpressionTracker;)Lcom/mopub/nativeads/l$b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->f:Lcom/mopub/nativeads/l$b;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/ImpressionTracker;->e:Lcom/mopub/nativeads/ImpressionTracker$a;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 115
    invoke-interface {p2}, Lcom/mopub/nativeads/ImpressionInterface;->isImpressionRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    invoke-interface {p2}, Lcom/mopub/nativeads/ImpressionInterface;->getImpressionMinPercentageViewed()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    invoke-virtual {v0}, Lcom/mopub/nativeads/l;->a()V

    .line 136
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/mopub/nativeads/ImpressionTracker;->clear()V

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    invoke-virtual {v0}, Lcom/mopub/nativeads/l;->b()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->g:Lcom/mopub/nativeads/l$d;

    .line 143
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->a(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->a:Lcom/mopub/nativeads/l;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;)V

    .line 127
    return-void
.end method
