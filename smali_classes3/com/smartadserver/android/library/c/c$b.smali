.class Lcom/smartadserver/android/library/c/c$b;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 87
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin adClicked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 89
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 93
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin adDisplayed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 98
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin adHidden for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->b(Lcom/smartadserver/android/library/c/c;)V

    .line 100
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .prologue
    .line 104
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin videoPlaybackBegan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 5

    .prologue
    .line 112
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppLovin videoPlaybackEnded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 117
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->d(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/c/c$c;->b()D

    move-result-wide v0

    .line 118
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v2}, Lcom/smartadserver/android/library/c/c;->c(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    new-instance v3, Lcom/smartadserver/android/library/model/b;

    iget-object v4, p0, Lcom/smartadserver/android/library/c/c$b;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v4}, Lcom/smartadserver/android/library/c/c;->d(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/c$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartadserver/android/library/c/c$c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/smartadserver/android/library/model/b;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 122
    :cond_0
    return-void
.end method
