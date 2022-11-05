.class Lcom/smaato/soma/internal/requests/a$6;
.super Ljava/lang/Object;
.source "AdDownloader.java"

# interfaces
.implements Lcom/smaato/soma/mediation/n$a;


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
    .line 815
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 876
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    const-string v2, "Impression Tracking triggered on Native displayed"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method

.method public a(Lcom/smaato/soma/ErrorCode;)V
    .locals 4

    .prologue
    .line 857
    if-eqz p1, :cond_0

    .line 858
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNativeAdFailed with ErrorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    .line 862
    return-void
.end method

.method public a(Lcom/smaato/soma/internal/b/a;)V
    .locals 3

    .prologue
    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "onNativeAdLoaded successfully"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    if-eqz p1, :cond_1

    .line 825
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->b(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/internal/b/a;)V

    .line 828
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 830
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 831
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Z)V

    .line 832
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->NATIVE:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 835
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/AdType;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->g()V

    .line 844
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->d:Ljava/lang/String;

    const-string v2, "Ad added successfully received"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_1
    return-void

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 848
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_1

    .line 849
    :catch_1
    move-exception v0

    .line 850
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    const-string v2, "Click Tracking triggered through onBannerClicked"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$6;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 892
    :cond_0
    return-void
.end method
