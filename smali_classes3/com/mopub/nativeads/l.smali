.class Lcom/mopub/nativeads/l;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/l$b;,
        Lcom/mopub/nativeads/l$c;,
        Lcom/mopub/nativeads/l$a;,
        Lcom/mopub/nativeads/l$d;
    }
.end annotation


# instance fields
.field final a:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/mopub/nativeads/l$b;

.field private g:Lcom/mopub/nativeads/l$d;

.field private final h:Lcom/mopub/nativeads/l$c;

.field private final i:Landroid/os/Handler;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/mopub/nativeads/l$b;

    invoke-direct {v1}, Lcom/mopub/nativeads/l$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/nativeads/l;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/l$b;Landroid/os/Handler;)V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/l$b;Landroid/os/Handler;)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/l$a;",
            ">;",
            "Lcom/mopub/nativeads/l$b;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mopub/nativeads/l;->d:J

    .line 89
    iput-object p2, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    .line 90
    iput-object p3, p0, Lcom/mopub/nativeads/l;->f:Lcom/mopub/nativeads/l$b;

    .line 91
    iput-object p4, p0, Lcom/mopub/nativeads/l;->i:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/mopub/nativeads/l$c;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/l$c;-><init>(Lcom/mopub/nativeads/l;)V

    iput-object v0, p0, Lcom/mopub/nativeads/l;->h:Lcom/mopub/nativeads/l$c;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/nativeads/l;->c:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/mopub/nativeads/l$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/l$1;-><init>(Lcom/mopub/nativeads/l;)V

    iput-object v0, p0, Lcom/mopub/nativeads/l;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/l;->b:Ljava/lang/ref/WeakReference;

    .line 104
    invoke-direct {p0, p1, v2}, Lcom/mopub/nativeads/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/l;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/l$a;

    iget-wide v4, v1, Lcom/mopub/nativeads/l$a;->c:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mopub/nativeads/l;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 180
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 114
    if-nez v0, :cond_1

    .line 115
    const-string v0, "Unable to set Visibility Tracker due to no available root view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    const-string v0, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mopub/nativeads/l;->b:Ljava/lang/ref/WeakReference;

    .line 127
    iget-object v1, p0, Lcom/mopub/nativeads/l;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/nativeads/l;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/mopub/nativeads/l;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/nativeads/l;->f:Lcom/mopub/nativeads/l$b;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/l;)Lcom/mopub/nativeads/l$d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/nativeads/l;->g:Lcom/mopub/nativeads/l$d;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/mopub/nativeads/l;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iput-boolean v1, p0, Lcom/mopub/nativeads/l;->j:Z

    .line 199
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1, p1, p2}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 140
    return-void
.end method

.method a(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/mopub/nativeads/l;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 144
    return-void
.end method

.method a(Landroid/view/View;Landroid/view/View;II)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/l;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/l$a;

    .line 151
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/mopub/nativeads/l$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/l$a;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/mopub/nativeads/l;->e:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/mopub/nativeads/l;->c()V

    .line 157
    :cond_0
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 159
    iput-object p1, v0, Lcom/mopub/nativeads/l$a;->d:Landroid/view/View;

    .line 160
    iput p3, v0, Lcom/mopub/nativeads/l$a;->a:I

    .line 161
    iput v1, v0, Lcom/mopub/nativeads/l$a;->b:I

    .line 162
    iget-wide v2, p0, Lcom/mopub/nativeads/l;->d:J

    iput-wide v2, v0, Lcom/mopub/nativeads/l$a;->c:J

    .line 165
    iget-wide v0, p0, Lcom/mopub/nativeads/l;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/nativeads/l;->d:J

    .line 166
    iget-wide v0, p0, Lcom/mopub/nativeads/l;->d:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 167
    iget-wide v0, p0, Lcom/mopub/nativeads/l;->d:J

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/l;->a(J)V

    .line 169
    :cond_1
    return-void
.end method

.method a(Lcom/mopub/nativeads/l$d;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mopub/nativeads/l;->g:Lcom/mopub/nativeads/l$d;

    .line 133
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/mopub/nativeads/l;->a()V

    .line 206
    iget-object v0, p0, Lcom/mopub/nativeads/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/mopub/nativeads/l;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/l;->g:Lcom/mopub/nativeads/l$d;

    .line 212
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mopub/nativeads/l;->j:Z

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/l;->j:Z

    .line 222
    iget-object v0, p0, Lcom/mopub/nativeads/l;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/l;->h:Lcom/mopub/nativeads/l$c;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
