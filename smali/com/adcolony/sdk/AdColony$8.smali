.class final Lcom/adcolony/sdk/AdColony$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/AdColonyInterstitialListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$8;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$8;->b:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 811
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 812
    :goto_0
    if-nez v0, :cond_0

    .line 814
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$8;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$8;->b:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    .line 818
    return-void

    .line 811
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    goto :goto_0
.end method
