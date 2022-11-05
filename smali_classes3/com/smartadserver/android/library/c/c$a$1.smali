.class Lcom/smartadserver/android/library/c/c$a$1;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/c$a;-><init>(Lcom/smartadserver/android/library/c/c;Lcom/applovin/nativeAds/AppLovinNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/c;

.field final synthetic b:Lcom/smartadserver/android/library/c/c$a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/c$a;Lcom/smartadserver/android/library/c/c;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$a$1;->a:Lcom/smartadserver/android/library/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/c$a;->e:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 380
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/c$a;->a:Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$a$1;->b:Lcom/smartadserver/android/library/c/c$a;

    iget-object v1, v1, Lcom/smartadserver/android/library/c/c$a;->c:[Landroid/view/View;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/nativeAds/AppLovinNativeAd;->launchClickTarget(Landroid/content/Context;)V

    .line 383
    :cond_0
    return-void
.end method
