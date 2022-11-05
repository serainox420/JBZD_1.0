.class Lcom/smaato/soma/internal/requests/a$8;
.super Ljava/lang/Object;
.source "AdDownloader.java"

# interfaces
.implements Lcom/smaato/soma/mediation/f$a;


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
    .line 1051
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 1126
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1058
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->d(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1060
    invoke-static {}, Lcom/smaato/soma/internal/requests/a;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smaato/soma/internal/requests/a$8$1;

    invoke-direct {v1, p0, p1}, Lcom/smaato/soma/internal/requests/a$8$1;-><init>(Lcom/smaato/soma/internal/requests/a$8;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1076
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 1079
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    const-string v2, "Impression Tracking triggered through on Banner displayed"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 1089
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)V

    .line 1090
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Z)V

    .line 1091
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->b()Lcom/smaato/soma/p;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/mediation/CSMAdFormat;->BANNER:Lcom/smaato/soma/mediation/CSMAdFormat;

    invoke-interface {v0, v1}, Lcom/smaato/soma/p;->a(Lcom/smaato/soma/mediation/CSMAdFormat;)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->g()V

    .line 1100
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    const-string v2, "Ad added successfully onReceiveAd"

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_1
    return-void

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1104
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_1

    .line 1105
    :catch_1
    move-exception v0

    .line 1106
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    goto :goto_1
.end method

.method public a(Lcom/smaato/soma/ErrorCode;)V
    .locals 5

    .prologue
    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerFailed with ErrorCode"

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

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/a;->d()V

    .line 1123
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1137
    new-instance v0, Lcom/smaato/soma/debug/b;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, v1, Lcom/smaato/soma/internal/requests/a;->c:Ljava/lang/String;

    const-string v2, "Click Tracking triggered through onBannerClicked"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 1142
    iget-object v0, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    iget-object v1, p0, Lcom/smaato/soma/internal/requests/a$8;->a:Lcom/smaato/soma/internal/requests/a;

    invoke-static {v1}, Lcom/smaato/soma/internal/requests/a;->c(Lcom/smaato/soma/internal/requests/a;)Lcom/smaato/soma/mediation/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/a;->a(Ljava/lang/String;)Z

    .line 1145
    :cond_0
    return-void
.end method
