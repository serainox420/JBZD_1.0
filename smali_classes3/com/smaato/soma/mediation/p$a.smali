.class Lcom/smaato/soma/mediation/p$a;
.super Ljava/lang/Object;
.source "MillennialMediationBanner.java"

# interfaces
.implements Lcom/millennialmedia/InlineAd$InlineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/mediation/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/mediation/p;


# direct methods
.method constructor <init>(Lcom/smaato/soma/mediation/p;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InlineAd;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InlineAd;)V
    .locals 5

    .prologue
    .line 259
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "Millennial banner clicked."

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 265
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->c()V

    .line 270
    :cond_0
    return-void
.end method

.method public onCollapsed(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->b()V

    .line 294
    :cond_0
    return-void
.end method

.method public onExpanded(Lcom/millennialmedia/InlineAd;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/mediation/f$a;->a()V

    .line 287
    :cond_0
    return-void
.end method

.method public onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V
    .locals 5

    .prologue
    .line 246
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "MM banner ad failed to load"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 250
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Lcom/smaato/soma/ErrorCode;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/p;->a()V

    .line 254
    return-void
.end method

.method public onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V
    .locals 5

    .prologue
    .line 219
    :try_start_0
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "MMediaBanner"

    const-string v2, "MM banner ad loaded successfully"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 225
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->b(Lcom/smaato/soma/mediation/p;)V

    .line 228
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->c(Lcom/smaato/soma/mediation/p;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->a(Lcom/smaato/soma/mediation/p;)Lcom/smaato/soma/mediation/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v1}, Lcom/smaato/soma/mediation/p;->c(Lcom/smaato/soma/mediation/p;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smaato/soma/mediation/f$a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->d(Lcom/smaato/soma/mediation/p;)V

    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    iget-object v0, p0, Lcom/smaato/soma/mediation/p$a;->a:Lcom/smaato/soma/mediation/p;

    invoke-static {v0}, Lcom/smaato/soma/mediation/p;->e(Lcom/smaato/soma/mediation/p;)V

    goto :goto_0
.end method

.method public onResize(Lcom/millennialmedia/InlineAd;II)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onResized(Lcom/millennialmedia/InlineAd;IIZ)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
