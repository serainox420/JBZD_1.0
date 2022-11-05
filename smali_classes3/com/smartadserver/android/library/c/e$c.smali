.class Lcom/smartadserver/android/library/c/e$c;
.super Ljava/lang/Object;
.source "SASFacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/e;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/e;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/e$1;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/e$c;-><init>(Lcom/smartadserver/android/library/c/e;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 128
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook  native ad onAdClicked"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 130
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    .prologue
    .line 118
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook native ad onAdLoaded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    new-instance v1, Lcom/smartadserver/android/library/c/e$b;

    iget-object v2, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    iget-object v3, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v3}, Lcom/smartadserver/android/library/c/e;->d(Lcom/smartadserver/android/library/c/e;)Lcom/facebook/ads/NativeAd;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smartadserver/android/library/c/e$b;-><init>(Lcom/smartadserver/android/library/c/e;Lcom/facebook/ads/NativeAd;)V

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;

    .line 122
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 124
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 112
    const-string v0, "SASFacebookAdapter"

    const-string v1, "Facebook native Ad onError"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/smartadserver/android/library/c/e$c;->a:Lcom/smartadserver/android/library/c/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/e;->a(Lcom/smartadserver/android/library/c/e;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method
