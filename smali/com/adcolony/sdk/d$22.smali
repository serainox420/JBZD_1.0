.class Lcom/adcolony/sdk/d$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->f(Lcom/adcolony/sdk/z;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyInterstitial;

.field final synthetic b:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/adcolony/sdk/d$22;->b:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$22;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/d$22;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 627
    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v1, p0, Lcom/adcolony/sdk/d$22;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x6

    iput v1, v0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/d$22;->a:Lcom/adcolony/sdk/AdColonyInterstitial;

    iget-object v1, v1, Lcom/adcolony/sdk/AdColonyInterstitial;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    .line 634
    return-void
.end method
