.class Lcom/smaato/soma/video/VASTAdActivity$1;
.super Lcom/smaato/soma/l;
.source "VASTAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/VASTAdActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 63
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v1}, Lcom/smaato/soma/video/VASTAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/VASTAdActivity;->setRequestedOrientation(I)V

    .line 64
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    .line 65
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/VASTAdActivity;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-static {}, Lcom/smaato/soma/video/Video;->d()Lcom/smaato/soma/video/c;

    move-result-object v1

    iput-object v1, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/video/VASTAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/video/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v1, v2}, Lcom/smaato/soma/video/c;->setOnVideoFinishedPlaying(Lcom/smaato/soma/video/c$a;)V

    .line 76
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1}, Lcom/smaato/soma/video/c;->start()V

    .line 78
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getVastAd()Lcom/smaato/soma/internal/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/c;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v2}, Lcom/smaato/soma/video/c;->getVideoSkipInterval()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/smaato/soma/video/VASTAdActivity$1$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/video/VASTAdActivity$1$1;-><init>(Lcom/smaato/soma/video/VASTAdActivity$1;)V

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    .line 111
    invoke-virtual {v2}, Lcom/smaato/soma/video/c;->getVideoSkipInterval()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 85
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/video/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$1;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/smaato/soma/video/VASTAdActivity$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
