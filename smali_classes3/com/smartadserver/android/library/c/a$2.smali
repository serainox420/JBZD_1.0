.class Lcom/smartadserver/android/library/c/a$2;
.super Ljava/lang/Object;
.source "SASAdColonyAdapter.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/smartadserver/android/library/c/a$2;->a:Lcom/smartadserver/android/library/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$2;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->a(Lcom/smartadserver/android/library/c/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdColony onReward for interstitial: label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$2;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/smartadserver/android/library/c/a$2;->a:Lcom/smartadserver/android/library/c/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/a;->b(Lcom/smartadserver/android/library/c/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/model/b;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result v3

    int-to-double v4, v3

    invoke-direct {v1, v2, v4, v5}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 94
    :cond_0
    return-void
.end method
