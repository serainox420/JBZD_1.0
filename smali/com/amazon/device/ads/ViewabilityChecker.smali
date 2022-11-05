.class Lcom/amazon/device/ads/ViewabilityChecker;
.super Ljava/lang/Object;
.source "ViewabilityChecker.java"


# static fields
.field static final HEIGHT_AD:Ljava/lang/String; = "height"

.field static final INSTRUMENTATION_URL:Ljava/lang/String; = "instrumentationPixelUrl"

.field static final IS_AD_ONSCREEN:Ljava/lang/String; = "isAdOnScreen"

.field private static final LOGTAG:Ljava/lang/String;

.field static final VIEWABLE_PERCENTAGE:Ljava/lang/String; = "viewablePercentage"

.field static final WIDTH_AD:Ljava/lang/String; = "width"

.field static final X_POSITION_AD:Ljava/lang/String; = "x"

.field static final Y_POSITION_AD:Ljava/lang/String; = "y"


# instance fields
.field private final adController:Lcom/amazon/device/ads/AdController;

.field private adTotalArea:F

.field private adView:Landroid/view/View;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private viewabilityOverlapCalculator:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/amazon/device/ads/ViewabilityChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ViewabilityChecker;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    invoke-direct {v1, p1}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;-><init>(Lcom/amazon/device/ads/AdController;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/ViewabilityChecker;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/ViewabilityOverlapCalculator;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/ViewabilityOverlapCalculator;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    .line 46
    sget-object v0, Lcom/amazon/device/ads/ViewabilityChecker;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 47
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdController is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/amazon/device/ads/ViewabilityChecker;->viewabilityOverlapCalculator:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    .line 52
    return-void
.end method

.method private getJSONObject(FZLandroid/view/View;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 122
    :try_start_0
    const-string v2, "viewablePercentage"

    float-to-double v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    const-string v2, "width"

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v2, "height"

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    if-eqz p2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    :cond_0
    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v2, "y"

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "JSON Error occured %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWindowFocus()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getViewabilityInfo()Lcom/amazon/device/ads/ViewabilityInfo;
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 56
    .line 57
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdContainer;->getCurrentAdView()Landroid/webkit/WebView;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 62
    iput v3, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adTotalArea:F

    .line 69
    :goto_0
    iget v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adTotalArea:F

    float-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-nez v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "AdView width and height not set"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 113
    :goto_1
    return-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v5, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v1, v5

    int-to-float v1, v1

    iput v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adTotalArea:F

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 76
    iget-object v5, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    .line 77
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityChecker;->hasWindowFocus()Z

    move-result v6

    .line 78
    iget-object v7, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v7}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAdTransparent(Landroid/view/View;)Z

    move-result v7

    .line 80
    if-eqz v7, :cond_2

    .line 82
    iget-object v8, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v9, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const-string v10, "This ad view is transparent therefore it will not be considered viewable. Please ensure the ad view is completely opaque."

    new-array v11, v0, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_2
    iget-object v8, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v9, "IsAdVisible: %s, IsAdShown: %s, windowHasFocus: %s, IsAdTransparent: %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v11, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-nez v7, :cond_3

    move v1, v4

    .line 89
    :goto_2
    if-eqz v1, :cond_6

    .line 91
    iget-object v5, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdController;->isModal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    const/high16 v2, 0x42c80000    # 100.0f

    .line 105
    :goto_3
    cmpl-float v3, v2, v3

    if-nez v3, :cond_5

    .line 110
    :goto_4
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/device/ads/ViewabilityChecker;->getJSONObject(FZLandroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    new-instance v1, Lcom/amazon/device/ads/ViewabilityInfo;

    invoke-direct {v1, v0, v2}, Lcom/amazon/device/ads/ViewabilityInfo;-><init>(ZLorg/json/JSONObject;)V

    move-object v0, v1

    .line 113
    goto/16 :goto_1

    :cond_3
    move v1, v0

    .line 87
    goto :goto_2

    .line 97
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 98
    iget-object v5, p0, Lcom/amazon/device/ads/ViewabilityChecker;->viewabilityOverlapCalculator:Lcom/amazon/device/ads/ViewabilityOverlapCalculator;

    iget-object v8, p0, Lcom/amazon/device/ads/ViewabilityChecker;->adView:Landroid/view/View;

    invoke-virtual {v5, v8, v2}, Lcom/amazon/device/ads/ViewabilityOverlapCalculator;->calculateViewablePercentage(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 100
    iget-object v5, p0, Lcom/amazon/device/ads/ViewabilityChecker;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v10, "Total computation time: %d"

    new-array v4, v4, [Ljava/lang/Object;

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-virtual {v5, v10, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_3
.end method
