.class final Lcom/flurry/sdk/cb$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cb;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/cb;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/cb;B)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/flurry/sdk/cb$a;-><init>(Lcom/flurry/sdk/cb;)V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdClosed(Ljava/util/Map;)V

    .line 138
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdClosed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onRenderFailed(Ljava/util/Map;)V

    .line 127
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GMS AdView onAdFailedToLoad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdClicked(Ljava/util/Map;)V

    .line 144
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLeftApplication."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/sdk/cb$a;->a:Lcom/flurry/sdk/cb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/cb;->onAdShown(Ljava/util/Map;)V

    .line 121
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdLoaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/cb;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GMS AdView onAdOpened."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
