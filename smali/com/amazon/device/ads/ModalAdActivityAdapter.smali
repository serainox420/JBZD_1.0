.class Lcom/amazon/device/ads/ModalAdActivityAdapter;
.super Ljava/lang/Object;
.source "ModalAdActivityAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/ModalAdActivityAdapter$2;,
        Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_CONTAINER_VIEW:Ljava/lang/String; = "adContainerView"

.field private static final CONTENT_DESCRIPTION_EXPANSION_VIEW:Ljava/lang/String; = "expansionView"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adContainerView:Landroid/view/ViewGroup;

.field private adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private final buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field private expansionView:Landroid/view/ViewGroup;

.field private final jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

.field private lastReportedSize:Lcom/amazon/device/ads/Size;

.field private final layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

.field private url:Ljava/lang/String;

.field private final viewUtils:Lcom/amazon/device/ads/ViewUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 50
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/AdUtils2;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdUtils2;-><init>()V

    new-instance v3, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    invoke-direct {v3}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {v4}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/OrientationProperties;

    invoke-direct {v5}, Lcom/amazon/device/ads/OrientationProperties;-><init>()V

    new-instance v6, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v6}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    new-instance v7, Lcom/amazon/device/ads/LayoutFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/LayoutFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/ViewUtils;

    invoke-direct {v8}, Lcom/amazon/device/ads/ViewUtils;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/ModalAdActivityAdapter;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/ExpandProperties;Lcom/amazon/device/ads/OrientationProperties;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ViewUtils;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;Lcom/amazon/device/ads/JSONUtils$JSONUtilities;Lcom/amazon/device/ads/ExpandProperties;Lcom/amazon/device/ads/OrientationProperties;Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/LayoutFactory;Lcom/amazon/device/ads/ViewUtils;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 69
    iput-object p2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    .line 70
    iput-object p3, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    .line 71
    iput-object p4, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 72
    iput-object p5, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    .line 73
    iput-object p6, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 74
    iput-object p7, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    .line 75
    iput-object p8, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->viewUtils:Lcom/amazon/device/ads/ViewUtils;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expansionView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/ViewUtils;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->viewUtils:Lcom/amazon/device/ads/ViewUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/Size;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->lastReportedSize:Lcom/amazon/device/ads/Size;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/ModalAdActivityAdapter;Lcom/amazon/device/ads/Size;)Lcom/amazon/device/ads/Size;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->lastReportedSize:Lcom/amazon/device/ads/Size;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->finishActivity()V

    return-void
.end method

.method private computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;)Lcom/amazon/device/ads/Size;
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding Ad to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 312
    new-instance v2, Lcom/amazon/device/ads/Size;

    invoke-direct {v2, v0, v1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    return-object v2
.end method

.method private createExpandedView()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->RELATIVE_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v3, "expansionView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expansionView:Landroid/view/ViewGroup;

    .line 298
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->layoutFactory:Lcom/amazon/device/ads/LayoutFactory;

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->FRAME_LAYOUT:Lcom/amazon/device/ads/LayoutFactory$LayoutType;

    const-string v3, "adContainerView"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/LayoutFactory;->createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adContainerView:Landroid/view/ViewGroup;

    .line 299
    return-void
.end method

.method private expandAd()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    .line 270
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->stashView()V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {p0, v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;)Lcom/amazon/device/ads/Size;

    move-result-object v1

    .line 278
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->createExpandedView()V

    .line 280
    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v3, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adContainerView:Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4, v0}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 284
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expansionView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expansionView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v2}, Lcom/amazon/device/ads/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(Z)V

    .line 292
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 321
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 323
    :cond_0
    return-void
.end method

.method private orientationPropertyChange()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "unable to handle orientation property change because the context did not contain an activity"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/amazon/device/ads/ModalAdActivityAdapter$2;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v2}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    :goto_1
    sget-object v1, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v2}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/ForceOrientation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/OrientationProperties;->isAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 205
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 207
    if-eq v1, v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->reportSizeChangeEvent()V

    goto :goto_0

    .line 183
    :pswitch_0
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 186
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;Lcom/amazon/device/ads/AndroidBuildInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reportSizeChangeEvent()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expansionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;-><init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->onBackButtonPress()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->reportSizeChangeEvent()V

    .line 247
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iput-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->url:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "expandProperties"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/ExpandProperties;->fromJSONObject(Lorg/json/JSONObject;)V

    .line 113
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    .line 116
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v1, v3}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->jsonUtils:Lcom/amazon/device/ads/JSONUtils$JSONUtilities;

    const-string v2, "orientationProperties"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/JSONUtils$JSONUtilities;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/OrientationProperties;->fromJSONObject(Lorg/json/JSONObject;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->enableHardwareAcceleration(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/view/Window;)V

    .line 123
    invoke-static {}, Lcom/amazon/device/ads/AdControllerFactory;->getCachedAdControlAccessor()Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Failed to show expanded ad due to an error in the Activity."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->setAdActivity(Landroid/app/Activity;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/device/ads/ModalAdActivityAdapter$ModalAdSDKEventListener;-><init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;Lcom/amazon/device/ads/ModalAdActivityAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 133
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->expandAd()V

    .line 134
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->orientationPropertyChange()V

    .line 135
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v1, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->EXPANDED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const-string v1, "mraidBridge.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->reportSizeChangeEvent()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->closeAd()Z

    .line 241
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->closeAd()Z

    .line 230
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public preOnCreate()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 91
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->buildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->hideActionAndStatusBars(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter;->activity:Landroid/app/Activity;

    .line 82
    return-void
.end method
