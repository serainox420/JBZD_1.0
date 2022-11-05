.class Lcom/smartadserver/android/library/SASInterstitialView$a;
.super Ljava/lang/Object;
.source "SASInterstitialView.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/SASInterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field final synthetic b:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;Lcom/smartadserver/android/library/ui/SASAdView$a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Lcom/smartadserver/android/library/model/SASAdElement;)V

    .line 190
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Ljava/lang/Exception;)V

    .line 197
    :cond_0
    return-void
.end method

.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Lcom/smartadserver/android/library/SASInterstitialView;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adLoadingCompleted in interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdDisplayException;

    const-string v1, "Interstitial view could not be displayed. Ensure either that the parent Activity is passed to its constructor or that this interstitial is part of the UI hierarchy "

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 174
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v1, p1}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v2

    .line 118
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v3, Lcom/smartadserver/android/library/SASInterstitialView$a$1;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/SASInterstitialView$a$1;-><init>(Lcom/smartadserver/android/library/SASInterstitialView$a;)V

    invoke-virtual {v1, v3}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 124
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/SASAdView$d;

    move-result-object v3

    monitor-enter v3

    .line 127
    if-eqz v2, :cond_3

    .line 128
    :try_start_1
    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_3

    const-string v4, "expanded"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->expand()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/SASAdView$d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    iget-object v3, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v3}, Lcom/smartadserver/android/library/SASInterstitialView;->getLoaderView()Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V

    .line 145
    const-string v1, "expanded"

    invoke-virtual {v2}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getAdDuration()I

    move-result v1

    .line 148
    if-lez v1, :cond_4

    .line 150
    iget-object v2, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v2, v3}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 151
    iget-object v2, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-static {v2}, Lcom/smartadserver/android/library/SASInterstitialView;->b(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/smartadserver/android/library/SASInterstitialView$a$2;

    invoke-direct {v3, p0}, Lcom/smartadserver/android/library/SASInterstitialView$a$2;-><init>(Lcom/smartadserver/android/library/SASInterstitialView$a;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 170
    :cond_4
    if-eqz v0, :cond_0

    .line 171
    throw v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 111
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/SASInterstitialView;->getLoaderView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$a;->a:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$a;->adLoadingFailed(Ljava/lang/Exception;)V

    .line 182
    :cond_0
    return-void
.end method
