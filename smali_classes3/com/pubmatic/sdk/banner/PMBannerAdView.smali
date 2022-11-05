.class public Lcom/pubmatic/sdk/banner/PMBannerAdView;
.super Landroid/view/ViewGroup;
.source "PMBannerAdView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;,
        Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isScreenOn:Z


# instance fields
.field private final CloseAreaSizeDp:I

.field private final OrientationReset:I

.field private activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

.field private adRequestDefaultParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private androidAid:Ljava/lang/String;

.field private browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

.field private closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

.field private closeButtonDelay:I

.field private closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private deferredUpdate:Z

.field private featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

.field private filter:Landroid/content/IntentFilter;

.field private imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

.field private internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

.field private interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

.field private invokeTracking:Z

.field private isAndroidAidEnabled:Z

.field private isAndroidIdEnabled:Z

.field private location:Landroid/location/Location;

.field private locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private locationObserver:Ljava/util/Observer;

.field private mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

.field private mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

.field protected mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

.field private mAttributes:Landroid/util/AttributeSet;

.field private mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field private mClickTrackerSent:Z

.field private mImpressionTrackerSent:Z

.field protected mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetrieveLocationInfo:Z

.field private mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

.field private mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

.field private mraidBridgeInit:Z

.field private mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

.field private mraidOriginalOrientation:I

.field private mraidResizeCloseArea:Landroid/view/View;

.field private mraidResizeLayout:Landroid/widget/RelativeLayout;

.field private mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

.field private mraidTwoPartBridgeInit:Z

.field private mraidTwoPartExpand:Z

.field private mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

.field private networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

.field private placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

.field private remainingDelay:J

.field private requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

.field private richMediaListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

.field private showCloseButton:Z

.field private textView:Landroid/widget/TextView;

.field private updateInterval:I

.field private updateOnLayout:Z

.field private useInternalBrowser:Z

.field private userAgent:Ljava/lang/String;

.field private viewVisibility:I

.field private webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

.field private webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const-class v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->TAG:Ljava/lang/String;

    .line 3306
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 321
    const/16 v0, 0x32

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->CloseAreaSizeDp:I

    .line 322
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->OrientationReset:I

    .line 325
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 330
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    .line 334
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    .line 335
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 338
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 339
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    .line 340
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 343
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    .line 344
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    .line 345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 349
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 350
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 353
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 354
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    .line 355
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    .line 356
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 357
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    .line 358
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    .line 359
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    .line 360
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 361
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    .line 362
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 363
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    .line 366
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 369
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 370
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 371
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 372
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    .line 376
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 377
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 378
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    .line 382
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 385
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 386
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->androidAid:Ljava/lang/String;

    .line 951
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationObserver:Ljava/util/Observer;

    .line 1200
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 3345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    .line 440
    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->init(Z)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 463
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    const/16 v0, 0x32

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->CloseAreaSizeDp:I

    .line 322
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->OrientationReset:I

    .line 325
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 330
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    .line 334
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    .line 335
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 338
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 339
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    .line 340
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 343
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    .line 344
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    .line 345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 349
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 350
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 353
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 354
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    .line 355
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    .line 356
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 357
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    .line 358
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    .line 359
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    .line 360
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 361
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    .line 362
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 363
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    .line 366
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 369
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 370
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 371
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 372
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    .line 376
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 377
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 378
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    .line 382
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 385
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 386
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->androidAid:Ljava/lang/String;

    .line 951
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationObserver:Ljava/util/Observer;

    .line 1200
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 3345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    .line 464
    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->applyAttributeSet(Landroid/util/AttributeSet;)V

    .line 465
    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->init(Z)V

    .line 466
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 476
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    const/16 v0, 0x32

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->CloseAreaSizeDp:I

    .line 322
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->OrientationReset:I

    .line 325
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 330
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    .line 334
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    .line 335
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 338
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 339
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    .line 340
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 343
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    .line 344
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    .line 345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 349
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 350
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 353
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 354
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    .line 355
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    .line 356
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 357
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    .line 358
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    .line 359
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    .line 360
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 361
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    .line 362
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 363
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    .line 366
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 369
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 370
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 371
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 372
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    .line 376
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 377
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 378
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    .line 382
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 385
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 386
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->androidAid:Ljava/lang/String;

    .line 951
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationObserver:Ljava/util/Observer;

    .line 1200
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 3345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    .line 477
    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->applyAttributeSet(Landroid/util/AttributeSet;)V

    .line 478
    invoke-virtual {p0, v3}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->init(Z)V

    .line 479
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 451
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 321
    const/16 v0, 0x32

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->CloseAreaSizeDp:I

    .line 322
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->OrientationReset:I

    .line 325
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 330
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 331
    const/4 v0, 0x4

    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    .line 334
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    .line 335
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 338
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 339
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    .line 340
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 343
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    .line 344
    iput v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    .line 345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 349
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 350
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 353
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 354
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    .line 355
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$MRAIDHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    .line 356
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 357
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    .line 358
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    .line 359
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    .line 360
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 361
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    .line 362
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 363
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    .line 366
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;

    invoke-direct {v0, p0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$WebViewHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    .line 369
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 370
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 371
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 372
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    .line 376
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 377
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 378
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    .line 382
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 385
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 386
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->androidAid:Ljava/lang/String;

    .line 951
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationObserver:Ljava/util/Observer;

    .line 1200
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$3;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 3345
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3346
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    .line 452
    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->init(Z)V

    .line 453
    return-void
.end method

.method static synthetic access$1000(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->openInternalBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->intentAvailable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->openUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton()V

    return-void
.end method

.method static synthetic access$1800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/ui/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->initMRAIDBridge(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;)Lcom/pubmatic/sdk/banner/mraid/Bridge;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetRichMediaAd()V

    return-void
.end method

.method static synthetic access$2502(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$302(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->richMediaListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->update()V

    return-void
.end method

.method static synthetic access$3500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/pubmatic/sdk/banner/PMBannerAdView;Z)Z
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/WebView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/mraid/WebView;)Lcom/pubmatic/sdk/banner/mraid/WebView;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetMRAIDOrientation()V

    return-void
.end method

.method static synthetic access$3900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->prepareCloseButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalUpdate()V

    return-void
.end method

.method static synthetic access$4000(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderTwoPartExpand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setMRAIDOrientation()V

    return-void
.end method

.method static synthetic access$4200(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdController;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderAdDescriptor(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderText(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderRichMedia(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V

    return-void
.end method

.method private addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 1328
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1330
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1333
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1336
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1341
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForMandatoryParams()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdController;->checkMandatoryParams()Z

    move-result v0

    return v0
.end method

.method private closeInternalBrowser()V
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 1952
    :cond_0
    return-void
.end method

.method private createDefaultAdRequest(Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 3352
    .line 3357
    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3383
    :goto_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->createRRFormatter()V

    .line 3395
    :goto_1
    return-void

    .line 3359
    :pswitch_0
    const-string v0, "com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest"

    .line 3360
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3361
    const-string v0, "createMoceanBannerAdRequest"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3362
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/AdRequest;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3364
    const-string v0, "setAttributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3365
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 3384
    :catch_0
    move-exception v0

    .line 3385
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 3369
    :pswitch_1
    :try_start_1
    const-string v0, "com.pubmatic.sdk.banner.pubmatic.PubMaticBannerAdRequest"

    .line 3370
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3371
    const-string v0, "createPubMaticBannerAdRequest"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3373
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/AdRequest;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3375
    const-string v0, "setAttributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3376
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 3386
    :catch_1
    move-exception v0

    .line 3387
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 3388
    :catch_2
    move-exception v0

    .line 3389
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 3390
    :catch_3
    move-exception v0

    .line 3391
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 3392
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 3357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createRRFormatter()V
    .locals 1

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->getFormatter()Ljava/lang/String;

    move-result-object v0

    .line 3414
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3415
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/RRFormatter;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3426
    :cond_0
    :goto_0
    return-void

    .line 3416
    :catch_0
    move-exception v0

    .line 3417
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3418
    :catch_1
    move-exception v0

    .line 3419
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 3420
    :catch_2
    move-exception v0

    .line 3421
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 3422
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private fetchImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1559
    const/4 v0, 0x5

    .line 1561
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;

    invoke-direct {v3, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V

    .line 1559
    invoke-static {v0, p2, v1, v2, v3}, Lcom/pubmatic/sdk/banner/ImageRequest;->create(ILjava/lang/String;Ljava/lang/String;ZLcom/pubmatic/sdk/banner/ImageRequest$Handler;)Lcom/pubmatic/sdk/banner/ImageRequest;

    .line 1587
    return-void
.end method

.method private findLocation(Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 886
    if-nez p1, :cond_1

    .line 887
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    if-eqz v0, :cond_0

    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 894
    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 893
    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 894
    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    .line 894
    iput-object v6, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$LocationListener;

    throw v0

    .line 900
    :cond_1
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 901
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 903
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 904
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 905
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 906
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 907
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 909
    const-wide/32 v2, 0x927c0

    const/high16 v4, 0x41a00000    # 20.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->enableLocationDetection(JFLandroid/location/Criteria;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 3215
    const/4 v1, 0x0

    .line 3217
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3218
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 3219
    check-cast v0, Landroid/app/Activity;

    .line 3222
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3281
    if-nez v0, :cond_0

    const-string v0, ""

    .line 3282
    :goto_0
    return-object v0

    .line 3281
    :cond_0
    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initMRAIDBridge(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 2

    .prologue
    .line 1955
    if-nez p1, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 1959
    :cond_0
    monitor-enter p1

    .line 1960
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    if-nez v0, :cond_1

    .line 1961
    monitor-exit p1

    goto :goto_0

    .line 2002
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1962
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    if-nez v0, :cond_2

    .line 1963
    monitor-exit p1

    goto :goto_0

    .line 1966
    :cond_2
    iget-object v0, p1, Lcom/pubmatic/sdk/banner/mraid/Bridge;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1967
    monitor-exit p1

    goto :goto_0

    .line 1970
    :cond_3
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    if-eq v0, v1, :cond_4

    .line 1971
    monitor-exit p1

    goto :goto_0

    .line 1975
    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setPlacementType(Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;)V

    .line 1977
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setMRAIDSupportedFeatures(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    .line 1979
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-ne p1, v0, :cond_5

    .line 1980
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1990
    :goto_1
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 2001
    :goto_2
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->sendReady()V

    .line 2002
    monitor-exit p1

    goto :goto_0

    .line 1982
    :pswitch_0
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    goto :goto_1

    .line 1986
    :pswitch_1
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    goto :goto_1

    .line 1995
    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setExpandProperties(Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;)V

    .line 1997
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 1998
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setState(Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initUserAgent()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    const-string v0, "MASTAdView/5.0.0.1 (Android)"

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    .line 590
    :cond_0
    return-void
.end method

.method private final intentAvailable(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 3226
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3227
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3229
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3230
    const/4 v0, 0x1

    .line 3233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalUpdate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 1125
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isInternalBrowserOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iput-boolean v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 1198
    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    if-eqz v0, :cond_1

    .line 1131
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1144
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    if-eqz v0, :cond_2

    .line 1145
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1159
    :cond_2
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdController;->getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;

    move-result-object v0

    .line 1160
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWidth()I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getHeight()I

    move-result v2

    .line 1166
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isInterstitial()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1167
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1168
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/common/AdRequest;->setWidth(I)V

    .line 1169
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdRequest;->setHeight(I)V

    .line 1180
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdRequest;->createRequest(Landroid/content/Context;)V

    .line 1184
    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1185
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdRequest;->setLocation(Landroid/location/Location;)V

    .line 1186
    :cond_4
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->androidAid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1190
    :cond_5
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdController;->getRRFormatter()Lcom/pubmatic/sdk/common/RRFormatter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/common/RRFormatter;->formatRequest(Lcom/pubmatic/sdk/common/AdRequest;)Lcom/pubmatic/sdk/common/network/HttpRequest;

    move-result-object v0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad request body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getPostData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1195
    new-instance v1, Lcom/pubmatic/sdk/common/network/HttpHandler;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->networkListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    invoke-direct {v1, v2, v0}, Lcom/pubmatic/sdk/common/network/HttpHandler;-><init>(Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;Lcom/pubmatic/sdk/common/network/HttpRequest;)V

    .line 1196
    invoke-static {}, Lcom/pubmatic/sdk/banner/Background;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1139
    :pswitch_2
    iput-boolean v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    goto/16 :goto_0

    .line 1153
    :pswitch_3
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto/16 :goto_1

    .line 1171
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->getWidth()I

    move-result v3

    if-gtz v3, :cond_7

    .line 1172
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/AdRequest;->setWidth(I)V

    .line 1175
    :cond_7
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1176
    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/common/AdRequest;->setHeight(I)V

    goto/16 :goto_2

    .line 1131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1145
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private openInternalBrowser(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->dismiss()V

    .line 1914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 1916
    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;

    invoke-direct {v2, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$10;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/common/ui/BrowserDialog$Handler;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 1936
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->show()V

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    if-eqz v0, :cond_2

    .line 1941
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;->onInternalBrowserPresented(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1943
    :cond_2
    return-void
.end method

.method private openUrl(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    invoke-interface {v0, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;->onOpenUrl(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1878
    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$9;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1906
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performClickTracking()V

    goto :goto_0
.end method

.method private performAdTracking()V
    .locals 4

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    :cond_0
    return-void

    .line 1477
    :cond_1
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v0, :cond_0

    .line 1478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 1480
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImpressionTrackers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImpressionTrackers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1482
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performClickTracking()V
    .locals 4

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1548
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 1555
    :cond_1
    return-void
.end method

.method private prepareCloseButton()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2191
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setCloseImage(Landroid/graphics/drawable/Drawable;)V

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2197
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_2

    .line 2201
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2234
    :cond_2
    :pswitch_0
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    if-gez v0, :cond_5

    .line 2250
    :cond_3
    :goto_0
    :pswitch_1
    return-void

    .line 2203
    :pswitch_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_2

    .line 2204
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2205
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton()V

    goto :goto_0

    .line 2214
    :pswitch_3
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v0

    .line 2215
    iget-boolean v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v1, :cond_4

    .line 2216
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v0

    .line 2219
    :cond_4
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;->useCustomClose()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2220
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton()V

    goto :goto_0

    .line 2238
    :cond_5
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    if-nez v0, :cond_6

    .line 2239
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton()V

    goto :goto_0

    .line 2243
    :cond_6
    invoke-static {}, Lcom/pubmatic/sdk/banner/Background;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$11;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$11;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iget v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 2201
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private renderAdDescriptor(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1348
    if-nez p1, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderable is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_0
    check-cast p1, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1354
    iput-boolean v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->invokeTracking:Z

    .line 1355
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 1356
    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 1358
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1359
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1360
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 1361
    invoke-direct {p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->fetchImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    .line 1438
    :cond_1
    :goto_0
    return-void

    .line 1365
    :cond_2
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1366
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1368
    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1377
    :cond_3
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1379
    const-string v2, "thirdparty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1380
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1382
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1384
    invoke-direct {p0, v1, v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->verifyThirdPartyRendering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1385
    invoke-direct {p0, p1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->fetchImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :cond_4
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1392
    invoke-direct {p0, v1, v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->verifyThirdPartyRendering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1393
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$6;

    invoke-direct {v0, p0, p1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView$6;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1401
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1402
    const-string v0, "client_side_external_campaign"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    if-eqz v0, :cond_1

    .line 1405
    invoke-static {v1}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->parseDescriptor(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;

    move-result-object v0

    .line 1407
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1409
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    .line 1410
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 1411
    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 1409
    invoke-interface {v1, p0, v2, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onReceivedThirdPartyRequest(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing third party content descriptor.  Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto/16 :goto_0

    .line 1423
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1424
    const-string v0, "Ad descriptor missing ad content"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1426
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onFailedToReceiveAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1433
    :cond_7
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private renderImage(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetTextAd()V

    .line 1592
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetRichMediaAd()V

    .line 1594
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getImageView()Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 1596
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1599
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1601
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1602
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1607
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1609
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->prepareCloseButton()V

    .line 1610
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1612
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    if-eqz v0, :cond_1

    .line 1613
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onReceivedAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1615
    :cond_1
    return-void

    .line 1603
    :cond_2
    instance-of v0, p2, Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    check-cast p2, Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    invoke-virtual {v0, p2}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setImageGifDecoder(Lcom/pubmatic/sdk/banner/ui/GifDecoder;)V

    goto :goto_0
.end method

.method private renderRichMedia(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1661
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetImageAd()V

    .line 1662
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetTextAd()V

    .line 1664
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1666
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1669
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeInit:Z

    .line 1672
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 1674
    invoke-virtual {p1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1675
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/AdRequest;->getAdServerURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/pubmatic/sdk/banner/mraid/WebView;->loadFragment(Ljava/lang/String;Lcom/pubmatic/sdk/banner/mraid/Bridge;Ljava/lang/String;)V

    .line 1677
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1678
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1680
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onReceivedAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1683
    :cond_0
    return-void
.end method

.method private renderText(Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1627
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetImageAd()V

    .line 1628
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetRichMediaAd()V

    .line 1630
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getTextView()Landroid/widget/TextView;

    .line 1632
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1635
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1637
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1641
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->prepareCloseButton()V

    .line 1642
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1644
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;->onReceivedAd(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    .line 1647
    :cond_0
    return-void
.end method

.method private renderTwoPartExpand(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartExpand:Z

    .line 1724
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 1725
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setHandler(Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;)V

    .line 1726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridgeInit:Z

    .line 1727
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 1728
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getExpandProperties()Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setExpandProperties(Lcom/pubmatic/sdk/banner/mraid/ExpandProperties;)V

    .line 1730
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0, p1, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->loadUrl(Ljava/lang/String;Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    .line 1732
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 1733
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->addView(Landroid/view/View;)V

    .line 1734
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->show()V

    .line 1735
    return-void
.end method

.method private resetImageAd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1618
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/ui/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1622
    :cond_0
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1623
    return-void
.end method

.method private resetMRAIDOrientation()V
    .locals 3

    .prologue
    .line 2179
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2180
    if-nez v0, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    const/16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 2185
    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private resetRichMediaAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1687
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_3

    .line 1688
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    .line 1690
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->dismiss()V

    .line 1692
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1697
    if-eqz v0, :cond_1

    .line 1698
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1701
    :cond_1
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    .line 1702
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    .line 1705
    :cond_2
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    .line 1708
    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    if-eqz v0, :cond_4

    .line 1709
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 1710
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1714
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->clearHistory()V

    .line 1717
    :cond_4
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1718
    return-void

    .line 1712
    :cond_5
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->clearView()V

    goto :goto_0
.end method

.method private resetTextAd()V
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    .line 1655
    return-void
.end method

.method private setAdrequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 2

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdRequest object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getChannel()Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V

    .line 420
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/BannerAdController;->setAdRequest(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 423
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/AdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    if-eqz v0, :cond_1

    .line 424
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->findLocation(Z)V

    .line 426
    :cond_1
    return-void
.end method

.method private setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V
    .locals 1

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->initController(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V

    .line 554
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 556
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->checkForMandatoryParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAttributes:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 563
    :cond_0
    return-void
.end method

.method private setMRAIDOrientation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2132
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2133
    if-nez v0, :cond_1

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    iget v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    const/16 v2, -0x8000

    if-ne v1, v2, :cond_2

    .line 2138
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidOriginalOrientation:I

    .line 2141
    :cond_2
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getOrientationProperties()Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;

    move-result-object v1

    .line 2143
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->getForceOrientation()Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    move-result-object v2

    .line 2144
    sget-object v3, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2155
    :goto_1
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/OrientationProperties;->getAllowOrientationChange()Z

    move-result v1

    if-ne v1, v5, :cond_3

    .line 2156
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2146
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 2149
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 2158
    :cond_3
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->None:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    if-ne v2, v1, :cond_0

    .line 2159
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2161
    packed-switch v1, :pswitch_data_1

    .line 2169
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2163
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2166
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2161
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMRAIDSupportedFeatures(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2006
    if-nez p1, :cond_0

    .line 2041
    :goto_0
    return-void

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    if-eqz v0, :cond_9

    .line 2016
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    invoke-interface {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldSupportSMS(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2017
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    invoke-interface {v3, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldSupportPhone(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;

    move-result-object v5

    .line 2018
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    invoke-interface {v3, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldSupportCalendar(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2019
    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    invoke-interface {v3, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;->shouldSupportStorePicture(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Ljava/lang/Boolean;

    move-result-object v3

    .line 2022
    :goto_1
    if-nez v0, :cond_8

    .line 2023
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.SEND_SMS"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v6, v0

    .line 2025
    :goto_3
    if-nez v5, :cond_1

    .line 2026
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v5, v0

    .line 2028
    :cond_1
    if-nez v4, :cond_2

    .line 2029
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "android.permission.READ_CALENDAR"

    .line 2030
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 2029
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v4, v0

    .line 2032
    :cond_2
    if-nez v3, :cond_7

    .line 2033
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2036
    :goto_7
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->SMS:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V

    .line 2037
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Tel:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V

    .line 2038
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Calendar:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V

    .line 2039
    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->StorePicture:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V

    .line 2040
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->InlineVideo:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {p1, v0, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setSupportedFeature(Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2023
    goto :goto_2

    :cond_4
    move v0, v2

    .line 2026
    goto :goto_4

    :cond_5
    move v0, v2

    .line 2030
    goto :goto_5

    :cond_6
    move v1, v2

    .line 2033
    goto :goto_6

    :cond_7
    move-object v0, v3

    goto :goto_7

    :cond_8
    move-object v6, v0

    goto :goto_3

    :cond_9
    move-object v4, v3

    move-object v5, v3

    move-object v0, v3

    goto/16 :goto_1
.end method

.method private setViewVisibility(I)V
    .locals 2

    .prologue
    .line 1774
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    if-ne v0, p1, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1777
    :cond_1
    iput p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->viewVisibility:I

    .line 1780
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    if-lez v0, :cond_0

    .line 1782
    if-nez p1, :cond_2

    .line 1783
    iget-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->startUpdateTimer(J)V

    goto :goto_0

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->remainingDelay:J

    .line 1787
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3291
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3292
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 3293
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 3294
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 3296
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v2, v0

    .line 3297
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3300
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3302
    :goto_1
    return-object v0

    .line 3301
    :catch_0
    move-exception v0

    .line 3302
    const-string v0, ""

    goto :goto_1
.end method

.method private showCloseButton()V
    .locals 4

    .prologue
    .line 2255
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 2257
    if-nez v1, :cond_0

    .line 2259
    :try_start_0
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/WebView;

    const-string v2, "/close_button.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 2260
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    :goto_0
    if-nez v0, :cond_1

    .line 2311
    :goto_1
    :pswitch_0
    return-void

    .line 2263
    :catch_0
    move-exception v0

    .line 2264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading built in close button.  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v2}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 2272
    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v1, :cond_2

    .line 2273
    sget-object v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2301
    :cond_2
    :pswitch_1
    sget-object v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 2307
    :pswitch_2
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setCloseImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2276
    :pswitch_3
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v1, v2, :cond_2

    .line 2277
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setCloseImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2287
    :pswitch_4
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidExpandDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v1, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->setCloseImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2292
    :pswitch_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 2293
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2295
    :cond_3
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeCloseArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2301
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized startUpdateTimer(J)V
    .locals 7

    .prologue
    .line 1053
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    invoke-static {}, Lcom/pubmatic/sdk/banner/Background;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$2;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$2;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iget v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    :cond_0
    monitor-exit p0

    return-void

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update()V
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->update(Z)V

    .line 999
    return-void
.end method

.method private update(Z)V
    .locals 2

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getChannel()Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->checkForMandatoryParams()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required parameters are not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1021
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1024
    :cond_2
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    if-lez v0, :cond_3

    .line 1025
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->startUpdateTimer(J)V

    .line 1028
    :cond_3
    if-eqz p1, :cond_4

    .line 1029
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeInternalBrowser()V

    .line 1031
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_4

    .line 1032
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    if-eqz v0, :cond_4

    .line 1033
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1048
    :cond_4
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalUpdate()V

    .line 1049
    return-void

    .line 1041
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_0

    .line 1033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V
    .locals 17

    .prologue
    .line 2044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 2046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidTwoPartWebView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 2049
    :cond_0
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->isShown()Z

    move-result v13

    .line 2051
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getRootView()Landroid/view/View;

    move-result-object v11

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2056
    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v9

    .line 2057
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v6

    .line 2059
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 2060
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2061
    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v8

    .line 2062
    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v5

    .line 2064
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2065
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getLocationOnScreen([I)V

    .line 2066
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v4

    .line 2067
    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v2

    .line 2069
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 2070
    sget-object v3, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidResizeLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 2071
    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2072
    const/4 v3, 0x0

    iget v12, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aput v12, v10, v3

    .line 2073
    const/4 v3, 0x1

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aput v1, v10, v3

    .line 2077
    :goto_0
    const/4 v1, 0x0

    aget v1, v10, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v3

    .line 2078
    const/4 v1, 0x1

    aget v1, v10, v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v1

    .line 2080
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    invoke-static {v10}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v10

    .line 2081
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    invoke-static {v7}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v7

    .line 2082
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v12}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v12

    .line 2083
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v11

    .line 2087
    sget-object v14, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    invoke-virtual/range {p2 .. p2}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 2109
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v15, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v14, v15, :cond_2

    .line 2110
    const/4 v4, 0x0

    .line 2111
    const/4 v2, 0x0

    move v5, v2

    move v6, v4

    move v8, v7

    move v9, v10

    move v11, v7

    move v12, v10

    move v2, v7

    move v4, v10

    .line 2120
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setScreenSize(II)V

    .line 2121
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setMaxSize(II)V

    .line 2122
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v12, v11}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setDefaultPosition(IIII)V

    .line 2126
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v1, v9, v8}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setCurrentPosition(IIII)V

    .line 2127
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setViewable(Z)V

    .line 2128
    return-void

    .line 2075
    :cond_1
    invoke-virtual {v1, v10}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getLocationOnScreen([I)V

    goto :goto_0

    :pswitch_1
    move v1, v2

    move v3, v4

    move v5, v6

    move v8, v9

    .line 2096
    goto :goto_1

    .line 2103
    :pswitch_2
    const/4 v3, 0x0

    .line 2104
    const/4 v1, 0x0

    move v5, v7

    move v8, v10

    .line 2106
    goto :goto_1

    :cond_2
    move/from16 v16, v11

    move v11, v6

    move v6, v4

    move v4, v12

    move v12, v9

    move v9, v8

    move v8, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_2

    .line 2087
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateOnLayout()V
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout:Z

    .line 578
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->update()V

    .line 580
    :cond_0
    return-void
.end method

.method private verifyThirdPartyRendering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    const-string v2, "<script"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1450
    goto :goto_0

    .line 1458
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1460
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1461
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1463
    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 1468
    goto :goto_0
.end method


# virtual methods
.method protected applyAttributeSet(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAttributes:Landroid/util/AttributeSet;

    .line 484
    const-string v0, "logLevel"

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/PMLogger;->setLogLevel(Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 496
    :cond_0
    :goto_0
    const-string v0, "updateInterval"

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 501
    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setUpdateInterval(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_1
    :goto_1
    const-string v0, "channel"

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    const-string v1, "pubmatic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 512
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V

    .line 519
    :goto_2
    return-void

    .line 489
    :cond_2
    const-string v1, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/PMLogger;->setLogLevel(Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0

    .line 492
    :cond_3
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->None:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/PMLogger;->setLogLevel(Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v0, "Invalid value of updateInterval set in XML. Valid range is 12 to 120 seconds. Eg: updateInterval=\"12\""

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_1

    .line 513
    :cond_4
    const-string v1, "phoenix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 514
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V

    goto :goto_2

    .line 517
    :cond_5
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V

    goto :goto_2
.end method

.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->checkMandatoryParams()Z

    move-result v0

    goto :goto_0
.end method

.method public closeInterstitial()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->dismiss()V

    .line 1299
    :cond_1
    return-void
.end method

.method public enableLocationDetection(JFLandroid/location/Criteria;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 944
    if-nez p5, :cond_0

    if-nez p4, :cond_0

    .line 945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria or provider required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/LocationDetector;->getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/LocationDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/LocationDetector;->addObserver(Ljava/util/Observer;)V

    .line 949
    return-void
.end method

.method public execute(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setAdrequest(Lcom/pubmatic/sdk/common/AdRequest;)V

    .line 989
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->update()V

    .line 990
    return-void
.end method

.method public getActivityListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    return-object v0
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdRequestParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adRequestDefaultParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getChannel()Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    return-object v0
.end method

.method public getCloseButtonCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCloseButtonDelay()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    return v0
.end method

.method public getFeatureSupportHandler()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 1499
    const/4 v0, 0x0

    .line 1500
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getHeight()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1503
    :cond_0
    return v0
.end method

.method public getImageView()Lcom/pubmatic/sdk/banner/ui/ImageView;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/banner/ui/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 2

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1492
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getWidth()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1495
    :cond_0
    return v0
.end method

.method public getInternalBrowserListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getRRFormatter()Lcom/pubmatic/sdk/common/RRFormatter;
    .locals 1

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    return-object v0
.end method

.method public getRequestListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    return-object v0
.end method

.method public getRichMediaListener()Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->richMediaListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    return-object v0
.end method

.method public getShowCloseButton()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    .line 1312
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    return v0
.end method

.method public getUseInternalBrowser()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    if-nez v0, :cond_0

    .line 1320
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    .line 1321
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webViewHandler:Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/WebView;->setHandler(Lcom/pubmatic/sdk/banner/mraid/WebView$Handler;)V

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    return-object v0
.end method

.method protected init(Z)V
    .locals 2

    .prologue
    .line 522
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 524
    if-eqz p1, :cond_0

    .line 525
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 526
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    .line 529
    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->initUserAgent()V

    .line 531
    return-void
.end method

.method protected initController(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V
    .locals 3

    .prologue
    .line 534
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/pubmatic/sdk/banner/BannerAdController;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAttributes:Landroid/util/AttributeSet;

    invoke-direct {v0, p1, v1, v2}, Lcom/pubmatic/sdk/banner/BannerAdController;-><init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    .line 537
    :cond_0
    return-void
.end method

.method public isAndoridIdEnabled()Z
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isAndroidIdEnabled:Z

    return v0
.end method

.method public isInline()Z
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInternalBrowserOpen()Z
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/ui/BrowserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x1

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterstitial()Z
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    if-ne v0, v1, :cond_0

    .line 623
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationDetectionEnabled()Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 875
    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1739
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1741
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1742
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1796
    if-nez v0, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_2

    .line 1805
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1818
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    goto :goto_0

    .line 1813
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridgeHandler:Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge$Handler;->mraidClose(Lcom/pubmatic/sdk/banner/mraid/Bridge;)V

    goto :goto_1

    .line 1805
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1823
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    if-eqz v0, :cond_2

    .line 1824
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/WebView;->layout(IIII)V

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_2

    .line 1829
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->webView:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/mraid/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    :goto_0
    return-void

    .line 1833
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->getState()Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateMRAIDLayoutForState(Lcom/pubmatic/sdk/banner/mraid/Bridge;Lcom/pubmatic/sdk/banner/mraid/Consts$State;)V

    .line 1837
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    if-eqz v0, :cond_3

    .line 1838
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->imageView:Lcom/pubmatic/sdk/banner/ui/ImageView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pubmatic/sdk/banner/ui/ImageView;->layout(IIII)V

    .line 1841
    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1842
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1845
    :cond_4
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateOnLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 1850
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1851
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 1852
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1867
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1868
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1856
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-nez v1, :cond_0

    .line 1862
    :cond_0
    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1760
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1762
    if-nez p2, :cond_0

    .line 1763
    const-string v0, "Ad view is VISIBLE"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1764
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1769
    :goto_0
    invoke-direct {p0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setViewVisibility(I)V

    .line 1770
    return-void

    .line 1766
    :cond_0
    const-string v0, "Ad view is INVISIBLE"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 1746
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 1748
    if-eqz p1, :cond_0

    .line 1749
    const-string v0, "Window focus gain ad is VISIBLE"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1750
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setViewVisibility(I)V

    .line 1756
    :goto_0
    return-void

    .line 1752
    :cond_0
    const-string v0, "Window focus lost ad is INVISIBLE"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 1753
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->setViewVisibility(I)V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 3323
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->filter:Landroid/content/IntentFilter;

    .line 3324
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3326
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3327
    new-instance v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ScreenReceiver;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3328
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3330
    :cond_1
    return-void
.end method

.method public removeContent()V
    .locals 2

    .prologue
    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 1105
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetRichMediaAd()V

    .line 1106
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetImageAd()V

    .line 1107
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->resetTextAd()V

    .line 1109
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->placementType:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1119
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdController:Lcom/pubmatic/sdk/banner/BannerAdController;

    .line 1120
    return-void

    .line 1111
    :pswitch_0
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->removeAllViews()V

    goto :goto_0

    .line 1115
    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->removeAllViews()V

    goto :goto_0

    .line 1109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1076
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->deferredUpdate:Z

    .line 1077
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 1078
    iput-boolean v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 1080
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->removeContent()V

    .line 1082
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1084
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->adUpdateIntervalFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1089
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1092
    :cond_1
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeInternalBrowser()V

    .line 1093
    iput-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->browserDialog:Lcom/pubmatic/sdk/common/ui/BrowserDialog;

    .line 1095
    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->findLocation(Z)V

    .line 1096
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->unregisterReceiver()V

    .line 1097
    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 3237
    if-nez p1, :cond_0

    .line 3259
    :goto_0
    return-void

    .line 3241
    :cond_0
    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$12;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$12;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/Runnable;)V

    .line 3251
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3252
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 3253
    check-cast v0, Landroid/app/Activity;

    .line 3254
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3256
    :cond_1
    const-string v0, "Context not instance of Activity, unable to run on UI thread."

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method

.method public sendClickTracker()V
    .locals 4

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v0, :cond_1

    const-string v0, "thirdparty"

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1534
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1539
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mClickTrackerSent:Z

    .line 1541
    :cond_1
    return-void
.end method

.method public sendImpression()V
    .locals 4

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    if-eqz v0, :cond_1

    const-string v0, "thirdparty"

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImpressionTrackers()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImpressionTrackers()Ljava/util/ArrayList;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getImpressionTrackers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1516
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->userAgent:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/pubmatic/sdk/common/network/AdTracking;->invokeTrackingUrl(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mImpressionTrackerSent:Z

    .line 1523
    :cond_1
    return-void
.end method

.method public setActivityListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->activityListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$ActivityListener;

    .line 637
    return-void
.end method

.method public setAdRequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 2

    .prologue
    .line 3399
    if-nez p1, :cond_0

    .line 3400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdRequest object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3402
    :cond_0
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 3404
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->createRRFormatter()V

    .line 3405
    return-void
.end method

.method public setAndroidIdEnabled(Z)V
    .locals 0

    .prologue
    .line 975
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isAndroidIdEnabled:Z

    .line 976
    return-void
.end method

.method public setCloseButtonCustomDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonCustomDrawable:Landroid/graphics/drawable/Drawable;

    .line 819
    return-void
.end method

.method public setCloseButtonDelay(I)V
    .locals 0

    .prologue
    .line 797
    iput p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->closeButtonDelay:I

    .line 798
    return-void
.end method

.method public setFeatureSupportHandler(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->featureSupportHandler:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$FeatureSupportHandler;

    .line 656
    return-void
.end method

.method public setInternalBrowserListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->internalBrowserListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$InternalBrowserListener;

    .line 675
    return-void
.end method

.method public setLocationDetectionEnabled(Z)V
    .locals 0

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mRetrieveLocationInfo:Z

    .line 926
    return-void
.end method

.method public setMraidViewable(Z)V
    .locals 1

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    if-eqz v0, :cond_0

    .line 3340
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mraidBridge:Lcom/pubmatic/sdk/banner/mraid/Bridge;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/banner/mraid/Bridge;->setViewable(Z)V

    .line 3342
    :cond_0
    return-void
.end method

.method public setRequestListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->requestListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RequestListener;

    .line 693
    return-void
.end method

.method public setRichMediaListener(Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->richMediaListener:Lcom/pubmatic/sdk/banner/PMBannerAdView$BannerAdViewDelegate$RichMediaListener;

    .line 711
    return-void
.end method

.method public setShowCloseButton(Z)V
    .locals 0

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showCloseButton:Z

    .line 778
    return-void
.end method

.method public setUpdateInterval(I)V
    .locals 2

    .prologue
    const/16 v1, 0x78

    const/16 v0, 0xc

    .line 744
    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 745
    iput v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 746
    const-string v0, "Valid update interval time is between 12 to 120 sec. Setting update interval to minimum 12 seconds"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    if-le p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    .line 750
    iput p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad Update interval set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0

    .line 753
    :cond_2
    if-le p1, v1, :cond_0

    .line 754
    iput v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->updateInterval:I

    .line 755
    const-string v0, "Valid update interval time is between 12 to 120 sec. Setting update interval to maximum 120 seconds"

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/common/PMLogger;->logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V

    goto :goto_0
.end method

.method public setUseInternalBrowser(Z)V
    .locals 0

    .prologue
    .line 840
    iput-boolean p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->useInternalBrowser:Z

    .line 841
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->showInterstitialWithDuration(I)V

    .line 1259
    return-void
.end method

.method public showInterstitialWithDuration(I)V
    .locals 5

    .prologue
    .line 1262
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showInterstitial requires interstitial instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1271
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDialog:Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$ExpandDialog;->show()V

    .line 1273
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->prepareCloseButton()V

    .line 1274
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->performAdTracking()V

    .line 1276
    if-lez p1, :cond_2

    .line 1277
    invoke-static {}, Lcom/pubmatic/sdk/banner/Background;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$4;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView$4;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->interstitialDelayFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1287
    :cond_2
    return-void
.end method

.method public statusBarHeightDp()I
    .locals 6

    .prologue
    .line 3262
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 3264
    const/16 v0, 0x19

    .line 3265
    if-eqz v1, :cond_0

    .line 3266
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3269
    if-lez v2, :cond_0

    .line 3270
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3271
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 3270
    invoke-static {v0}, Lcom/pubmatic/sdk/banner/BannerUtils;->pxToDp(F)I

    move-result v0

    .line 3275
    :cond_0
    return v0
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3334
    invoke-virtual {p0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3336
    :cond_0
    return-void
.end method
