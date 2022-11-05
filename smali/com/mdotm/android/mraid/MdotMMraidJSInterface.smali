.class public Lcom/mdotm/android/mraid/MdotMMraidJSInterface;
.super Ljava/lang/Object;
.source "MdotMMraidJSInterface.java"


# instance fields
.field isRewarded:Z

.field mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/listener/MdotMAdActionListener;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->isRewarded:Z

    .line 12
    iput-object p1, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close with rewards"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->isRewarded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->isRewarded:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onMraidRewardClick(Z)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onMraidRewardClick(Z)V

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    const-string v0, "state is loading"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->mraidState:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    const-string v0, "getVersion is called"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public getViewable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 18
    const-string v0, "it is getViewable()"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public isViewable()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    sget-boolean v0, Lcom/mdotm/android/mraid/MdotMMraidConstants;->isViewable:Z

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    invoke-interface {v0, p1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onOpenUrl(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setreward(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 68
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->isRewarded:Z

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->isRewarded:Z

    goto :goto_0
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mdotm/android/mraid/MdotMMraidJSInterface;->mActionListener:Lcom/mdotm/android/listener/MdotMAdActionListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mdotm/android/listener/MdotMAdActionListener;->onUseCustomClose(Z)V

    .line 51
    return-void
.end method
