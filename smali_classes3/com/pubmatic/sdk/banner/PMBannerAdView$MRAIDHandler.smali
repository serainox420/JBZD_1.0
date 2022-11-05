.class Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V
    .locals 0

    .prologue
    .line 2364
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    return-void
.end method


# virtual methods
.method public mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 2486
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_2

    .line 2387
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;->onCloseButtonClick(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    goto :goto_0

    .line 2394
    :cond_2
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2442
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->dismiss()V

    .line 2447
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$2;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2404
    :pswitch_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mraidCreateCalendarEvent(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2914
    :goto_0
    return-void

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2853
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldAddCalendarEntry(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2855
    const-string v0, "Access denied."

    const-string v1, "createcalendarevent"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2861
    :cond_1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2863
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2865
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2866
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2868
    const-string v3, "start"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2869
    const-string v3, "start"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2870
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2871
    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2874
    :cond_2
    const-string v3, "end"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2875
    const-string v3, "end"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2876
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2877
    const-string v0, "endTime"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2880
    :cond_3
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2881
    const-string v0, "description"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2885
    :cond_4
    const-string v0, "summary"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2886
    const-string v0, "summary"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2887
    const-string v3, "description"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2890
    :cond_5
    const-string v0, "location"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2891
    const-string v0, "location"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2892
    const-string v1, "eventLocation"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2895
    :cond_6
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$8;

    invoke-direct {v1, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$8;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    const-string v0, "Error parsing event data."

    const-string v1, "createcalendarevent"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public mraidExpand(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2585
    :goto_0
    :pswitch_0
    return-void

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_1

    .line 2527
    const-string v0, "Can not expand with placementType interstitial."

    const-string v1, "expand"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2532
    :cond_1
    const/4 v0, 0x0

    .line 2533
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2534
    const/4 v0, 0x1

    .line 2537
    :cond_2
    sget-object v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2565
    :cond_3
    :pswitch_1
    if-nez v0, :cond_5

    .line 2567
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$4;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$4;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2539
    :pswitch_2
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 2546
    :cond_4
    const-string v0, "Can not expand while state is loading."

    const-string v1, "expand"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2555
    :pswitch_3
    const-string v0, "Can not expand while state is expanded."

    const-string v1, "expand"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2578
    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$5;

    invoke-direct {v1, p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$5;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public mraidInit(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2367
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2378
    :goto_0
    return-void

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2502(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z

    .line 2377
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0

    .line 2373
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2374
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2602(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z

    goto :goto_1
.end method

.method public mraidOpen(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2495
    :goto_0
    return-void

    .line 2494
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public mraidPlayVideo(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 2844
    :cond_0
    :goto_0
    return-void

    .line 2837
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2838
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;->onPlayVideo(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2843
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public mraidResize(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 21

    .prologue
    .line 2611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_0

    .line 2829
    :goto_0
    return-void

    .line 2615
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v2

    sget-object v3, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v2, v3, :cond_1

    .line 2616
    const-string v2, "Can not resize with placementType interstitial."

    const-string v3, "resize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2621
    :cond_1
    sget-object v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2635
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2636
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v11

    .line 2637
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v10

    .line 2639
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v3, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getLocationOnScreen([I)V

    .line 2641
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v3

    .line 2642
    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v2

    .line 2644
    invoke-virtual/range {p1 .. p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getResizeProperties()Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;

    move-result-object v6

    .line 2645
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getAllowOffscreen()Z

    move-result v8

    .line 2646
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getOffsetX()I

    move-result v4

    add-int v7, v3, v4

    .line 2647
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getOffsetY()I

    move-result v3

    add-int v4, v2, v3

    .line 2648
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getWidth()I

    move-result v5

    .line 2649
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getHeight()I

    move-result v2

    .line 2650
    invoke-virtual {v6}, Lcom/pubmatic/sdk/banner/mraid/ResizeProperties;->getCustomClosePosition()Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    move-result-object v12

    .line 2652
    if-lt v5, v11, :cond_2

    if-lt v2, v10, :cond_2

    .line 2653
    const-string v2, "Size must be smaller than the max size."

    const-string v3, "resize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2625
    :pswitch_1
    const-string v2, "Can not resize loading, hidden or expanded."

    const-string v3, "resize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2656
    :cond_2
    const/16 v3, 0x32

    if-lt v5, v3, :cond_3

    const/16 v3, 0x32

    if-ge v2, v3, :cond_4

    .line 2657
    :cond_3
    const-string v2, "Size must be at least the minimum close area size."

    const-string v3, "resize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2662
    :cond_4
    const/4 v9, 0x0

    .line 2663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->statusBarHeightDp()I

    move-result v3

    .line 2665
    if-nez v8, :cond_d

    .line 2671
    if-le v5, v11, :cond_c

    move v6, v11

    .line 2675
    :goto_1
    if-le v2, v10, :cond_b

    move v5, v10

    .line 2679
    :goto_2
    if-ge v7, v9, :cond_6

    move v8, v9

    .line 2686
    :goto_3
    if-ge v4, v3, :cond_7

    move v2, v3

    .line 2693
    :goto_4
    sub-int v8, v7, v8

    int-to-double v14, v8

    .line 2694
    sub-int v2, v4, v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    .line 2695
    int-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v14, v18, v14

    double-to-int v2, v14

    .line 2696
    int-to-double v14, v4

    sub-double v14, v14, v16

    double-to-int v4, v14

    move/from16 v20, v5

    move v5, v4

    move v4, v6

    move v6, v2

    move/from16 v2, v20

    .line 2707
    :goto_5
    add-int/lit8 v8, v4, -0x32

    .line 2708
    const/4 v7, 0x0

    .line 2710
    sget-object v13, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    invoke-virtual {v12}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_1

    .line 2746
    :goto_6
    :pswitch_2
    add-int/2addr v8, v6

    .line 2747
    add-int v12, v5, v7

    .line 2748
    add-int/lit8 v7, v8, 0x32

    .line 2749
    add-int/lit8 v13, v12, 0x32

    .line 2751
    if-lt v8, v9, :cond_5

    if-lt v12, v3, :cond_5

    if-gt v7, v11, :cond_5

    if-le v13, v10, :cond_8

    .line 2752
    :cond_5
    const-string v2, "Resize close control must remain on screen."

    const-string v3, "resize"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2681
    :cond_6
    add-int v2, v7, v6

    if-le v2, v11, :cond_a

    .line 2682
    add-int v2, v7, v6

    sub-int/2addr v2, v11

    int-to-double v14, v2

    .line 2683
    int-to-double v0, v7

    move-wide/from16 v16, v0

    sub-double v14, v16, v14

    double-to-int v2, v14

    move v8, v2

    goto :goto_3

    .line 2688
    :cond_7
    add-int v2, v4, v5

    if-le v2, v10, :cond_9

    .line 2689
    add-int v2, v4, v5

    sub-int/2addr v2, v10

    int-to-double v14, v2

    .line 2690
    int-to-double v0, v4

    move-wide/from16 v16, v0

    sub-double v14, v16, v14

    double-to-int v2, v14

    goto :goto_4

    .line 2716
    :pswitch_3
    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v7, -0x19

    .line 2717
    const/4 v7, 0x0

    .line 2718
    goto :goto_6

    .line 2721
    :pswitch_4
    const/4 v8, 0x0

    .line 2722
    const/4 v7, 0x0

    .line 2723
    goto :goto_6

    .line 2726
    :pswitch_5
    const/4 v8, 0x0

    .line 2727
    add-int/lit8 v7, v2, -0x32

    .line 2728
    goto :goto_6

    .line 2731
    :pswitch_6
    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v7, -0x19

    .line 2732
    add-int/lit8 v7, v2, -0x32

    .line 2733
    goto :goto_6

    .line 2736
    :pswitch_7
    add-int/lit8 v8, v4, -0x32

    .line 2737
    add-int/lit8 v7, v2, -0x32

    .line 2738
    goto :goto_6

    .line 2741
    :pswitch_8
    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v7, -0x19

    .line 2742
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, -0x19

    goto :goto_6

    .line 2758
    :cond_8
    invoke-static {v6}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v6

    .line 2759
    invoke-static {v5}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v7

    .line 2760
    invoke-static {v4}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v4

    .line 2761
    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v5

    .line 2762
    invoke-static {v8}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v8

    .line 2763
    invoke-static {v12}, Lcom/pubmatic/sdk/banner/BannerUtils;->dpToPx(I)I

    move-result v9

    .line 2765
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$7;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;IIIIIILcom/pubmatic/sdk/banner/mraid/Bridge;)V

    invoke-virtual {v11, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    move v2, v4

    goto/16 :goto_4

    :cond_a
    move v8, v7

    goto/16 :goto_3

    :cond_b
    move v5, v2

    goto/16 :goto_2

    :cond_c
    move v6, v5

    goto/16 :goto_1

    :cond_d
    move v6, v7

    move/from16 v20, v4

    move v4, v5

    move/from16 v5, v20

    goto/16 :goto_5

    .line 2621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2710
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public mraidStorePicture(Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2990
    :goto_0
    return-void

    .line 2922
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2923
    const-string v0, "Missing picture url."

    const-string v1, "storepicture"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2927
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2928
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$4400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-interface {v0, v1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldStorePicture(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2929
    const-string v0, "Access denied."

    const-string v1, "storepicture"

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2934
    :cond_2
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    .line 2936
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;

    invoke-direct {v3, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$9;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    .line 2934
    invoke-static {v0, p2, v1, v2, v3}, Lcom/pubmatic/sdk/banner/ImageRequest;->create(ILjava/lang/String;Ljava/lang/String;ZLcom/pubmatic/sdk/banner/ImageRequest$Handler;)Lcom/pubmatic/sdk/banner/ImageRequest;

    goto :goto_0
.end method

.method public mraidUpdateCurrentPosition(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2504
    :goto_0
    return-void

    .line 2503
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    goto :goto_0
.end method

.method public mraidUpdatedExpandProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2518
    :goto_0
    return-void

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$3;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public mraidUpdatedOrientationProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2602
    :goto_0
    return-void

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$6;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler$6;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public mraidUpdatedResizeProperties(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 0

    .prologue
    .line 2607
    return-void
.end method
