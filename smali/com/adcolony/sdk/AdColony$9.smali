.class final Lcom/adcolony/sdk/AdColony$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$9;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$9;->b:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 834
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 835
    :goto_0
    if-nez v0, :cond_0

    .line 837
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$9;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$9;->b:Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    .line 841
    return-void

    .line 834
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    goto :goto_0
.end method
