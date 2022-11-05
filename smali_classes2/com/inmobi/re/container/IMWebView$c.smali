.class Lcom/inmobi/re/container/IMWebView$c;
.super Landroid/os/Handler;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/re/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/IMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V
    .locals 1

    .prologue
    .line 2320
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->a:Ljava/lang/ref/WeakReference;

    .line 2322
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->b:Ljava/lang/ref/WeakReference;

    .line 2323
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->d:Ljava/lang/ref/WeakReference;

    .line 2324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->e:Ljava/lang/ref/WeakReference;

    .line 2326
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->f:Ljava/lang/ref/WeakReference;

    .line 2328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->c:Ljava/lang/ref/WeakReference;

    .line 2329
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 2335
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView;

    .line 2336
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView$c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    .line 2337
    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    .line 2339
    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    .line 2342
    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView$c;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    .line 2344
    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView$c;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    .line 2346
    if-eqz v0, :cond_0

    .line 2348
    const-string v6, "[InMobi]-[RE]-4.5.5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IMWebView->handleMessage: msg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 2351
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2690
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2695
    :goto_1
    return-void

    .line 2353
    :pswitch_1
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2354
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onResizeClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2691
    :catch_0
    move-exception v0

    .line 2692
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Webview Handle Message Exception "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2358
    :pswitch_2
    :try_start_1
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2359
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onExpandClose()V

    goto :goto_0

    .line 2363
    :pswitch_3
    sget-object v1, Lcom/inmobi/re/container/IMWebView$7;->a:[I

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView$ViewState;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    .line 2380
    iget-boolean v1, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v1, :cond_1

    .line 2381
    invoke-virtual {v4}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->resetContentsForInterstitials()V

    goto :goto_0

    .line 2367
    :pswitch_4
    invoke-virtual {v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->closeResized()V

    goto :goto_0

    .line 2372
    :pswitch_5
    invoke-virtual {v2}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->closeExpanded()V

    .line 2373
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    goto :goto_0

    .line 2384
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->hide()V

    goto :goto_0

    .line 2391
    :pswitch_6
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 2392
    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    goto :goto_0

    .line 2396
    :pswitch_7
    const-string v1, "window.mraidview.fireChangeEvent({ state: \'default\' });"

    .line 2397
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2398
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    goto :goto_0

    .line 2405
    :pswitch_8
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 2406
    invoke-virtual {v3, v6}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->doResize(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2413
    :pswitch_9
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v1, v3, :cond_2

    .line 2414
    invoke-virtual {v2, v6}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->doExpand(Landroid/os/Bundle;)V

    .line 2415
    :cond_2
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->n(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/controller/JSUtilityController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->setWebViewClosed(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2420
    :pswitch_a
    :try_start_2
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2422
    :catch_1
    move-exception v0

    .line 2423
    :try_start_3
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Play audio failed "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2431
    :pswitch_b
    :try_start_4
    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2433
    :catch_2
    move-exception v0

    .line 2434
    :try_start_5
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Play video failed "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2440
    :pswitch_c
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2442
    if-eqz v0, :cond_0

    .line 2443
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto/16 :goto_0

    .line 2449
    :pswitch_d
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2451
    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 2458
    :pswitch_e
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2460
    if-eqz v0, :cond_0

    .line 2461
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 2467
    :pswitch_f
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    const-string v1, "aplayerref"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2469
    if-eqz v0, :cond_0

    .line 2470
    const-string v1, "vol"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 2476
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2477
    const-string v1, "seekaudio"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 2483
    :pswitch_11
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2484
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v1

    .line 2489
    if-nez v1, :cond_3

    .line 2490
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"pauseVideo\")"

    .line 2513
    :goto_2
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2495
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v2, v3, :cond_5

    .line 2496
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v2, v3, :cond_4

    .line 2497
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2498
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto/16 :goto_0

    .line 2502
    :cond_4
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"pauseVideo\")"

    goto :goto_2

    .line 2509
    :cond_5
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto/16 :goto_1

    .line 2517
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2518
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    goto/16 :goto_0

    .line 2523
    :pswitch_13
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2524
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v2

    .line 2528
    if-nez v2, :cond_6

    .line 2529
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"hideVideo\")"

    .line 2560
    :goto_3
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2534
    :cond_6
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v3, v4, :cond_7

    .line 2535
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"hideVideo\")"

    goto :goto_3

    .line 2541
    :cond_7
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    goto/16 :goto_1

    .line 2564
    :pswitch_14
    const-string v1, "pid"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2565
    invoke-virtual {v5, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v2

    .line 2569
    if-nez v2, :cond_8

    .line 2570
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid property ID\", \"showVideo\")"

    .line 2600
    :goto_4
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2575
    :cond_8
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v3, v4, :cond_9

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v3

    sget-object v4, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v3, v4, :cond_9

    .line 2577
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Invalid player state\", \"showVideo\")"

    goto :goto_4

    .line 2582
    :cond_9
    iget-object v3, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v3, :cond_a

    iget-object v3, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2586
    const-string v1, "window.mraid.broadcastEvent(\'error\',\"Show failed. There is already a video playing\", \"showVideo\")"

    goto :goto_4

    .line 2593
    :cond_a
    iget-object v0, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2594
    iput-object v2, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2595
    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->show()V

    goto/16 :goto_1

    .line 2604
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2605
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 2610
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2611
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 2616
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2617
    const-string v1, "seek"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 2622
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    .line 2623
    const-string v1, "volume"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 2628
    :pswitch_19
    const-string v1, "message"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2629
    const-string v2, "action"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window.mraid.broadcastEvent(\'error\',\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\", \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2632
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2635
    :pswitch_1a
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->setCloseButton()V

    goto/16 :goto_0

    .line 2638
    :pswitch_1b
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableCloseRegion()V

    goto/16 :goto_0

    .line 2641
    :pswitch_1c
    invoke-virtual {v5}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->hidePlayers()V

    goto/16 :goto_0

    .line 2644
    :pswitch_1d
    const-string v0, "expand_url"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->open(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2647
    :pswitch_1e
    const-string v1, "injectMessage"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2648
    if-eqz v1, :cond_0

    .line 2649
    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2653
    :pswitch_1f
    invoke-virtual {v4}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleOrientationForInterstitial()V

    goto/16 :goto_0

    .line 2657
    :pswitch_20
    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    .line 2662
    invoke-virtual {v3}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->onOrientationChange()V

    goto/16 :goto_0

    .line 2666
    :pswitch_21
    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v1, :cond_0

    .line 2667
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onDismissAdScreen()V

    goto/16 :goto_0

    .line 2670
    :pswitch_22
    invoke-virtual {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->getCurrentPosition()V

    goto/16 :goto_0

    .line 2673
    :pswitch_23
    invoke-virtual {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->getDefaultPosition()V

    goto/16 :goto_0

    .line 2678
    :pswitch_24
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2679
    iget-object v2, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v2, :cond_0

    .line 2680
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onUserInteraction(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 2684
    :pswitch_25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "incent_ad_map"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2685
    iget-object v2, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v2, :cond_0

    .line 2686
    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onIncentCompleted(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2351
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_19
        :pswitch_1a
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_8
        :pswitch_1
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_1b
    .end packed-switch

    .line 2363
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
