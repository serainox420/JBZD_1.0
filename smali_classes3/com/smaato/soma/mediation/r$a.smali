.class public Lcom/smaato/soma/mediation/r$a;
.super Ljava/lang/Object;
.source "MoPubMediationBanner.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/r;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/mediation/r;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 5

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MoPubMediationBanner"

    const-string v2, "MoPub banner ad clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 182
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->c()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->b(Lcom/smaato/soma/mediation/r;)V

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->c(Lcom/smaato/soma/mediation/r;)V

    goto :goto_0
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/r;->a()V

    .line 206
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MoPubMediationBanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPub banner ad failed to load. moPubErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 153
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/r;->a()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/r;->a()V

    .line 171
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->b(Lcom/smaato/soma/mediation/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/r;->a()V

    goto :goto_0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    :try_start_2
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->c(Lcom/smaato/soma/mediation/r;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/r;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-virtual {v1}, Lcom/smaato/soma/mediation/r;->a()V

    throw v0
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 5

    .prologue
    .line 132
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MoPubMediationBanner"

    const-string v2, "MoPub banner ad loaded successfully. Showing ad..."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 137
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/smaato/soma/mediation/r$a;->a:Lcom/smaato/soma/mediation/r;

    invoke-static {v0}, Lcom/smaato/soma/mediation/r;->a(Lcom/smaato/soma/mediation/r;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-static {}, Lcom/smaato/soma/mediation/r;->c()Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Landroid/view/View;)V

    .line 141
    :cond_0
    return-void
.end method
