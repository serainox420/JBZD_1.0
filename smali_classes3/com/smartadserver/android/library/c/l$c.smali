.class Lcom/smartadserver/android/library/c/l$c;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/l$c;-><init>(Lcom/smartadserver/android/library/c/l;)V

    return-void
.end method


# virtual methods
.method public onNativeFail(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 2

    .prologue
    .line 181
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onNativeFail for native ad"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
    .locals 3

    .prologue
    .line 163
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onNativeLoad for native ad"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/nativeads/StaticNativeAd;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    new-instance v1, Lcom/smartadserver/android/library/c/l$e;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {v1, v2, p1}, Lcom/smartadserver/android/library/c/l$e;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/NativeAd;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getBaseNativeAd()Lcom/mopub/nativeads/BaseNativeAd;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/nativeads/VideoNativeAd;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    new-instance v1, Lcom/smartadserver/android/library/c/l$f;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {v1, v2, p1}, Lcom/smartadserver/android/library/c/l$f;-><init>(Lcom/smartadserver/android/library/c/l;Lcom/mopub/nativeads/NativeAd;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/smartadserver/android/library/c/l$c;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
