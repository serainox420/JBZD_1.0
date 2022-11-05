.class public Lcom/revmob/ads/interstitial/RevMobFullscreen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/ads/a/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/revmob/ads/interstitial/a/b;

.field private c:Z

.field private d:I

.field private e:Lcom/revmob/RevMobAdsListener;

.field private f:Z

.field private g:Z

.field private h:Lcom/revmob/ads/interstitial/a/a;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->i:Z

    iput-object p1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    sget v0, Lcom/revmob/ads/a/c;->a:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    new-instance v0, Lcom/revmob/ads/interstitial/a/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/revmob/ads/interstitial/a/a;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->h:Lcom/revmob/ads/interstitial/a/a;

    return-void
.end method

.method private isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public load(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public load(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v0, "Fullscreen "

    if-ne p2, v3, :cond_3

    sput-boolean v1, Lcom/revmob/RevMob;->a:Z

    iput-boolean v3, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    const-string v0, "Video "

    :goto_0
    iget v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v2, Lcom/revmob/ads/a/c;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v2, Lcom/revmob/ads/a/c;->f:I

    if-ne v1, v2, :cond_2

    :cond_0
    sget v1, Lcom/revmob/ads/a/c;->b:I

    iput v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->h:Lcom/revmob/ads/interstitial/a/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/revmob/ads/interstitial/a/a;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    iget-object v2, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2}, Lcom/revmob/ads/interstitial/a/a;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->h:Lcom/revmob/ads/interstitial/a/a;

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->h:Lcom/revmob/ads/interstitial/a/a;

    if-nez p2, :cond_6

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/revmob/client/RevMobClient;->b(Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-ne p2, v4, :cond_4

    sput-boolean v1, Lcom/revmob/RevMob;->b:Z

    iput-boolean v3, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    iput-boolean v3, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    const-string v0, "Rewarded Video "

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eq p2, v3, :cond_7

    if-ne p2, v4, :cond_8

    :cond_7
    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Lcom/revmob/client/f;I)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/revmob/client/RevMobClient;->c(Ljava/lang/String;Lcom/revmob/client/f;)V

    goto :goto_2
.end method

.method public loadFullscreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;I)V

    return-void
.end method

.method public loadFullscreen(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;I)V

    return-void
.end method

.method public loadRewardedVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;I)V

    return-void
.end method

.method public loadVideo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;I)V

    return-void
.end method

.method public setAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    return-void
.end method

.method public show()V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-boolean v4, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->d:I

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-static {v0}, Lcom/revmob/ads/interstitial/a/b;->a(Lcom/revmob/ads/interstitial/a/b;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/FullscreenActivity;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/revmob/ads/a/c;->d:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->i:Z

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    const-class v4, Lcom/revmob/FullscreenActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.revmob.ads.fullscreen.fetchId"

    iget-object v4, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    iget-object v4, v4, Lcom/revmob/ads/interstitial/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "followAppOrientation"

    iget-boolean v4, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->i:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isRewarded"

    iget-boolean v4, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/client/a;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    sget v0, Lcom/revmob/ads/a/c;->f:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    if-nez v0, :cond_4

    sput-boolean v2, Lcom/revmob/RevMob;->a:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoStarted()V

    goto :goto_1

    :cond_8
    sget v0, Lcom/revmob/ads/a/c;->f:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    const-string v0, "You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->b:I

    if-ne v0, v1, :cond_a

    sget v0, Lcom/revmob/ads/a/c;->a:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->h:Lcom/revmob/ads/interstitial/a/a;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/a;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->load(Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->a:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->f:I

    if-eq v0, v1, :cond_5

    const-string v0, "The ad is not completely loaded yet. As soon as it is loaded, it is going to be displayed automatically."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->a:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    sget v1, Lcom/revmob/ads/a/c;->f:I

    if-eq v0, v1, :cond_5

    const-string v0, "You have to load the ad before trying to use show() method."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public showRewardedVideo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->showVideo()V

    return-void
.end method

.method public showRewardedVideo(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    invoke-virtual {p0, p1}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->showVideo(Z)V

    return-void
.end method

.method public showVideo()V
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->i:Z

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoNotCompletelyLoaded()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoNotCompletelyLoaded()V

    goto :goto_0
.end method

.method public showVideo(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->i:Z

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoNotCompletelyLoaded()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoNotCompletelyLoaded()V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/a;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/revmob/ads/a/c;->c:I

    iput v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->d:I

    check-cast p1, Lcom/revmob/ads/interstitial/a/b;

    iput-object p1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->b(Lcom/revmob/client/a;)V

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->b:Lcom/revmob/ads/interstitial/a/b;

    invoke-virtual {v0}, Lcom/revmob/ads/interstitial/a/b;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->g:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/revmob/RevMob;->b:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoLoaded()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->show()V

    :cond_1
    return-void

    :cond_2
    sput-boolean v2, Lcom/revmob/RevMob;->a:Z

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoLoaded()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/interstitial/RevMobFullscreen;->e:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    goto :goto_0
.end method
