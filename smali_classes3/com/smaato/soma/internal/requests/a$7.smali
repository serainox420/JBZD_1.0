.class Lcom/smaato/soma/internal/requests/a$7;
.super Ljava/lang/Object;
.source "AdDownloader.java"

# interfaces
.implements Lcom/smaato/soma/mediation/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/requests/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/requests/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/requests/a;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 973
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onInterstitialLoaded successfully"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 978
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a$7;->onReadyToShow()V

    .line 980
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 982
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 983
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/smaato/soma/p;->a(Z)V

    .line 984
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->INTERSTITIAL:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->g()V

    .line 989
    return-void
.end method

.method public a(Lcom/smaato/soma/ErrorCode;)V
    .locals 5

    .prologue
    .line 994
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialFailed with ErrorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 999
    invoke-virtual {p0}, Lcom/smaato/soma/internal/requests/a$7;->onFailedToLoadAd()V

    .line 1002
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    .line 1003
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 1008
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onInterstitialShown successfully"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1013
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 1021
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "Click Tracking triggered through onInterstitialClicked "

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1027
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->d(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/j;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial;->d()Lcom/smaato/soma/interstitial/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/interstitial/a;->onWillClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFailedToLoadAd()V
    .locals 5

    .prologue
    .line 963
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onFailedToLoadAd"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 967
    return-void
.end method

.method public onReadyToShow()V
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onReadyToShow"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public onWillClose()V
    .locals 5

    .prologue
    .line 955
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onWillClose"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 959
    return-void
.end method

.method public onWillOpenLandingPage()V
    .locals 5

    .prologue
    .line 941
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "Click Tracking triggered through onWillOpenLandingPage "

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 948
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 951
    :cond_0
    return-void
.end method

.method public onWillShow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->c()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->c()Lcom/smaato/soma/mediation/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/j;->a()V

    .line 911
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "Impression Tracking triggered through onWillShow Interstitial"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 918
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 925
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_0

    .line 926
    :catch_1
    move-exception v0

    .line 927
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "Please declare Mediation Networks dependent Activities in AndroidManifest.xml"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 932
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$7;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_0
.end method
