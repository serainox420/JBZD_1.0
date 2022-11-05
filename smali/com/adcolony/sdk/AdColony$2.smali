.class final Lcom/adcolony/sdk/AdColony$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->requestNativeAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyAdSize;

.field final synthetic d:Lcom/adcolony/sdk/AdColonyAdOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$2;->a:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColony$2;->c:Lcom/adcolony/sdk/AdColonyAdSize;

    iput-object p4, p0, Lcom/adcolony/sdk/AdColony$2;->d:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 336
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->b()V

    .line 339
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$2;->a:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z

    .line 343
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$2;->a:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z

    .line 349
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 350
    if-nez v0, :cond_3

    .line 352
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist in hashmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 357
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$2;->a:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColony$2;->c:Lcom/adcolony/sdk/AdColonyAdSize;

    iget-object v4, p0, Lcom/adcolony/sdk/AdColony$2;->d:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 358
    return-void
.end method
