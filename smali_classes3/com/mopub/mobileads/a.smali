.class abstract Lcom/mopub/mobileads/a;
.super Landroid/app/Activity;
.source "BaseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/mopub/common/AdReport;

.field private b:Lcom/mopub/common/CloseableLayout;

.field private c:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    return-void
.end method

.method protected static a(Landroid/content/Intent;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 91
    const-string v0, "broadcastIdentifier"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Intent;)Lcom/mopub/common/AdReport;
    .locals 1

    .prologue
    .line 100
    :try_start_0
    const-string v0, "mopub-intent-ad-report"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/AdReport;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 84
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 88
    return-void
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/mopub/mobileads/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/mopub/mobileads/a;->a(Landroid/content/Intent;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/a;->c:Ljava/lang/Long;

    .line 53
    invoke-static {v0}, Lcom/mopub/mobileads/a;->b(Landroid/content/Intent;)Lcom/mopub/common/AdReport;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/a;->a:Lcom/mopub/common/AdReport;

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/a;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/a;->getAdView()Landroid/view/View;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/mopub/common/CloseableLayout;

    invoke-direct {v1, p0}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    .line 61
    iget-object v1, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    new-instance v2, Lcom/mopub/mobileads/a$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/a$1;-><init>(Lcom/mopub/mobileads/a;)V

    invoke-virtual {v1, v2}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 67
    iget-object v1, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/a;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/a;->b:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->removeAllViews()V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method
