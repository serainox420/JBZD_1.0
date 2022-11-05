.class Lcom/mopub/nativeads/c;
.super Ljava/lang/Object;
.source "NativeAdSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/c$a;
    }
.end annotation


# static fields
.field static final a:[I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field b:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field c:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field d:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field e:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/k",
            "<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private final i:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private j:Lcom/mopub/nativeads/c$a;

.field private k:Lcom/mopub/nativeads/RequestParameters;

.field private l:Lcom/mopub/nativeads/MoPubNative;

.field private final m:Lcom/mopub/nativeads/AdRendererRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/nativeads/c;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/nativeads/c;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/k",
            "<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    .line 81
    iput-object p2, p0, Lcom/mopub/nativeads/c;->g:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/mopub/nativeads/c$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/c$1;-><init>(Lcom/mopub/nativeads/c;)V

    iput-object v0, p0, Lcom/mopub/nativeads/c;->h:Ljava/lang/Runnable;

    .line 90
    iput-object p3, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 93
    new-instance v0, Lcom/mopub/nativeads/c$2;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/c$2;-><init>(Lcom/mopub/nativeads/c;)V

    iput-object v0, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/c;->d:I

    .line 133
    invoke-virtual {p0}, Lcom/mopub/nativeads/c;->e()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/MoPubNative;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativeads/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativeads/c;)Lcom/mopub/nativeads/c$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/c$a;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/nativeads/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/c;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/nativeads/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/c;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method a(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/mopub/nativeads/c;->a(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    .line 173
    return-void
.end method

.method a(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 154
    :cond_0
    return-void
.end method

.method a(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/mopub/nativeads/c;->b()V

    .line 180
    iget-object v0, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 181
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/c;->k:Lcom/mopub/nativeads/RequestParameters;

    .line 185
    iput-object p2, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    .line 187
    invoke-virtual {p0}, Lcom/mopub/nativeads/c;->g()V

    .line 188
    return-void
.end method

.method a(Lcom/mopub/nativeads/c$a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/c$a;

    .line 167
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 197
    iput-object v1, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    .line 200
    :cond_0
    iput-object v1, p0, Lcom/mopub/nativeads/c;->k:Lcom/mopub/nativeads/RequestParameters;

    .line 202
    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/k;

    .line 203
    iget-object v0, v0, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/c;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iput-boolean v2, p0, Lcom/mopub/nativeads/c;->b:Z

    .line 209
    iput v2, p0, Lcom/mopub/nativeads/c;->d:I

    .line 210
    invoke-virtual {p0}, Lcom/mopub/nativeads/c;->e()V

    .line 211
    return-void
.end method

.method c()Lcom/mopub/nativeads/NativeAd;
    .locals 8

    .prologue
    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 228
    iget-boolean v0, p0, Lcom/mopub/nativeads/c;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/nativeads/c;->c:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mopub/nativeads/c;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/k;

    .line 236
    iget-wide v4, v0, Lcom/mopub/nativeads/k;->b:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xdbba0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 237
    iget-object v0, v0, Lcom/mopub/nativeads/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    .line 240
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/mopub/nativeads/c;->e:I

    sget-object v1, Lcom/mopub/nativeads/c;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 246
    iget v0, p0, Lcom/mopub/nativeads/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/nativeads/c;->e:I

    .line 248
    :cond_0
    return-void
.end method

.method e()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativeads/c;->e:I

    .line 253
    return-void
.end method

.method f()I
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lcom/mopub/nativeads/c;->e:I

    sget-object v1, Lcom/mopub/nativeads/c;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 258
    sget-object v0, Lcom/mopub/nativeads/c;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/nativeads/c;->e:I

    .line 260
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/c;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/c;->e:I

    aget v0, v0, v1

    return v0
.end method

.method g()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-boolean v0, p0, Lcom/mopub/nativeads/c;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 271
    iput-boolean v1, p0, Lcom/mopub/nativeads/c;->b:Z

    .line 272
    iget-object v0, p0, Lcom/mopub/nativeads/c;->l:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/c;->k:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/c;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    .line 274
    :cond_0
    return-void
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/c;->m:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result v0

    return v0
.end method
