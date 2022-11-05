.class Lcom/adcolony/sdk/d$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d$19;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/d$19;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d$19;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/adcolony/sdk/d$19$1;->b:Lcom/adcolony/sdk/d$19;

    iput-object p2, p0, Lcom/adcolony/sdk/d$19$1;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adcolony/sdk/d$19$1;->b:Lcom/adcolony/sdk/d$19;

    iget-object v0, v0, Lcom/adcolony/sdk/d$19;->a:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/d$19$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 464
    iget-object v1, p0, Lcom/adcolony/sdk/d$19$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "muted"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 465
    instance-of v2, v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v2, :cond_2

    .line 467
    if-eqz v1, :cond_1

    .line 469
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onMuted(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onUnmuted(Lcom/adcolony/sdk/AdColonyNativeAdView;)V

    goto :goto_0

    .line 476
    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    if-eqz v0, :cond_0

    goto :goto_0
.end method
