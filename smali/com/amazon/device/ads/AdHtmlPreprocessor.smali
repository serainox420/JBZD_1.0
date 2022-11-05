.class Lcom/amazon/device/ads/AdHtmlPreprocessor;
.super Ljava/lang/Object;
.source "AdHtmlPreprocessor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private final bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

.field private final bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    .line 28
    iput-object p3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 29
    sget-object v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 30
    iput-object p5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    .line 31
    return-void
.end method

.method private addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSDKBridgeList;->addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    .line 40
    return-void
.end method

.method private addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    const-string v0, "<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)"

    invoke-static {v0, p1}, Lcom/amazon/device/ads/StringUtils;->getFirstMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v0, ""

    .line 146
    const-string v2, "<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"\'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"\']"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta name=\"viewport\" content=\"width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", initial-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/amazon/device/ads/AdUtils2;->getViewportInitialScale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", minimum-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", maximum-scale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<script type=\'text/javascript\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</script>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-string v0, ""

    .line 107
    const-string v1, ""

    .line 109
    const-string v2, "\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string v0, "<!DOCTYPE html>"

    .line 114
    :cond_0
    const-string v2, "<[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v0, "</html>"

    .line 121
    :goto_0
    const-string v2, "<[Hh][Ee][Aa][Dd][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<head></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_1
    const-string v2, "<[Bb][Oo][Dd][Yy][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public preprocessHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/BridgeSelector;->getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .line 55
    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v0, v2}, Lcom/amazon/device/ads/AdSDKBridgeFactory;->createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getAdWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getAdHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v1, ""

    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdSDKBridgeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSDKBridge;

    .line 72
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/AdControlAccessor;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 76
    :cond_2
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_3
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->hasNativeExecution()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v4

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, p2, v0}, Lcom/amazon/device/ads/AdControlAccessor;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0
.end method
