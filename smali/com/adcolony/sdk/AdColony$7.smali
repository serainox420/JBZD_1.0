.class final Lcom/adcolony/sdk/AdColony$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyAdOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$7;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColony$7;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 713
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->b()V

    .line 716
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$7;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    .line 720
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$7;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    .line 726
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 727
    if-nez v0, :cond_3

    .line 729
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 730
    sget-object v1, Lcom/adcolony/sdk/u;->b:Lcom/adcolony/sdk/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zone info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist in hashmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 734
    :cond_3
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyZone;->getZoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 736
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$7;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$7;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColony$7;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 753
    :cond_4
    :goto_0
    return-void

    .line 740
    :cond_5
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 743
    sget-object v1, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    new-instance v2, Lcom/adcolony/sdk/AdColony$7$1;

    invoke-direct {v2, p0, v0}, Lcom/adcolony/sdk/AdColony$7$1;-><init>(Lcom/adcolony/sdk/AdColony$7;Lcom/adcolony/sdk/AdColonyZone;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
