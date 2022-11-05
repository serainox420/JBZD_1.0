.class public Lcom/mopub/mobileads/MraidVideoPlayerActivity;
.super Lcom/mopub/mobileads/BaseVideoPlayerActivity;
.source "MraidVideoPlayerActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;


# instance fields
.field private a:Lcom/mopub/mobileads/BaseVideoViewController;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Intent;)J
    .locals 4

    .prologue
    .line 176
    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->b:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 127
    :goto_0
    return-object v0

    .line 114
    :cond_0
    const-string v1, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v0, Lcom/mopub/mraid/MraidVideoViewController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v3

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v4

    const-class v1, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    aput-object v1, v0, v5

    .line 119
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    aput-object p0, v1, v5

    .line 122
    const-string v2, "com.mopub.nativeads.NativeVideoViewController"

    invoke-static {v2}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing native video module"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    :try_start_0
    const-string v2, "com.mopub.nativeads.NativeVideoViewController"

    const-class v3, Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-static {v2, v3, v0, v1}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/BaseVideoViewController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing native video module"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported video type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoViewController;->a(IILandroid/content/Intent;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onBackPressed()V

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->f()V

    .line 100
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Landroid/content/res/Configuration;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->b:J

    .line 41
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a(Landroid/os/Bundle;)Lcom/mopub/mobileads/BaseVideoViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->a()V

    .line 52
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 46
    iget-wide v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->b:J

    const-string v2, "com.mopub.action.interstitial.fail"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->e()V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->finish()V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()V

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onPause()V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->d()V

    .line 68
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->a:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Landroid/os/Bundle;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 151
    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
