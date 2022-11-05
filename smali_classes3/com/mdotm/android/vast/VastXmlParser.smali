.class public Lcom/mdotm/android/vast/VastXmlParser;
.super Ljava/lang/Object;
.source "VastXmlParser.java"


# instance fields
.field public final EVENT_COMPLETE:Ljava/lang/String;

.field public final EVENT_CREATIVE_VIEW:Ljava/lang/String;

.field public final EVENT_FIRST_QUARTILE:Ljava/lang/String;

.field public final EVENT_MID_POINT:Ljava/lang/String;

.field public final EVENT_MUTE:Ljava/lang/String;

.field public final EVENT_PAUSE:Ljava/lang/String;

.field public final EVENT_RESUME:Ljava/lang/String;

.field public final EVENT_SKIP:Ljava/lang/String;

.field public final EVENT_START:Ljava/lang/String;

.field public final EVENT_THIRD_QUARTILE:Ljava/lang/String;

.field public final EVENT_UNMUTE:Ljava/lang/String;

.field public final MEDIA_DELIVERY_TYPE_PROGRESSIVE:Ljava/lang/String;

.field public final MEDIA_DELIVERY_TYPE_STREAM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field public final TAG_AD:Ljava/lang/String;

.field public final TAG_AD_TITLE:Ljava/lang/String;

.field public final TAG_API_FRAMEWORK_ID:Ljava/lang/String;

.field public final TAG_BODY:Ljava/lang/String;

.field public final TAG_CLICK_THROUGH:Ljava/lang/String;

.field public final TAG_CLICK_TRACKING:Ljava/lang/String;

.field public final TAG_CLOSE_BTN_LOC:Ljava/lang/String;

.field public final TAG_COMPANION:Ljava/lang/String;

.field public final TAG_COMPANIONADS:Ljava/lang/String;

.field public final TAG_COMPANION_CLICK_THROUGH:Ljava/lang/String;

.field public final TAG_COMPANION_CLICK_TRACKING:Ljava/lang/String;

.field public final TAG_COUNTER_OFFSET:Ljava/lang/String;

.field public final TAG_COUNTER_SIZE:Ljava/lang/String;

.field public final TAG_COUNTER_STROKE:Ljava/lang/String;

.field public final TAG_COVER_IMAGE:Ljava/lang/String;

.field public final TAG_CREATIVE:Ljava/lang/String;

.field public final TAG_CREATIVES:Ljava/lang/String;

.field public final TAG_CTA:Ljava/lang/String;

.field public final TAG_ClOSE_BTN_SIZE:Ljava/lang/String;

.field public final TAG_DELIVERY:Ljava/lang/String;

.field public final TAG_DESCRIPTION:Ljava/lang/String;

.field public final TAG_DURATION:Ljava/lang/String;

.field public final TAG_ERROR:Ljava/lang/String;

.field public final TAG_EVENT:Ljava/lang/String;

.field public final TAG_HEIGHT:Ljava/lang/String;

.field public final TAG_HTML_CLICK_TRACKING:Ljava/lang/String;

.field public final TAG_HTML_RESOURCE:Ljava/lang/String;

.field public final TAG_ICON:Ljava/lang/String;

.field public final TAG_ICONS:Ljava/lang/String;

.field public final TAG_ICON_CLICK:Ljava/lang/String;

.field public final TAG_ICON_CLICK_THROUGH:Ljava/lang/String;

.field public final TAG_ICON_CLICK_TRACKING:Ljava/lang/String;

.field public final TAG_ICON_DURATION:Ljava/lang/String;

.field public final TAG_ICON_STATIC_RESOURCE:Ljava/lang/String;

.field public final TAG_ICON_VIEW_TRACKING:Ljava/lang/String;

.field public final TAG_ID:Ljava/lang/String;

.field public final TAG_IMPRESSION:Ljava/lang/String;

.field public final TAG_IN_LINE:Ljava/lang/String;

.field public final TAG_LINEAR:Ljava/lang/String;

.field public final TAG_MEDIA_FILE:Ljava/lang/String;

.field public final TAG_MEDIA_FILES:Ljava/lang/String;

.field public final TAG_NATIVE:Ljava/lang/String;

.field public final TAG_NATIVE_CLICKS:Ljava/lang/String;

.field public final TAG_NONLINEAR:Ljava/lang/String;

.field public final TAG_NONLINEAR_ADS:Ljava/lang/String;

.field public final TAG_OFFSET:Ljava/lang/String;

.field public final TAG_OVERLAY_ID:Ljava/lang/String;

.field public final TAG_PROGRAM:Ljava/lang/String;

.field public final TAG_SKIP_OFFSET:Ljava/lang/String;

.field public final TAG_STATIC_RESOURCE:Ljava/lang/String;

.field public final TAG_TITLE:Ljava/lang/String;

.field public final TAG_TRACKING:Ljava/lang/String;

.field public final TAG_TRACKING_EVENTS:Ljava/lang/String;

.field public final TAG_TYPE:Ljava/lang/String;

.field public final TAG_VALUE_VIDEO_MP4:Ljava/lang/String;

.field public final TAG_VALUE_VIDEO_MPEG:Ljava/lang/String;

.field public final TAG_VIDEO_CLICKS:Ljava/lang/String;

.field public final TAG_WIDTH:Ljava/lang/String;

.field public final TAG_XPOS:Ljava/lang/String;

.field public final TAG_YPOS:Ljava/lang/String;

.field private isLinear:Z

.field private mdotMNativeAd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/nativeads/MdotMNativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "SampleXMLParser"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "Ad"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_AD:Ljava/lang/String;

    .line 31
    const-string v0, "id"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ID:Ljava/lang/String;

    .line 32
    const-string v0, "AdTitle"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_AD_TITLE:Ljava/lang/String;

    .line 33
    const-string v0, "Description"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DESCRIPTION:Ljava/lang/String;

    .line 34
    const-string v0, "InLine"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_IN_LINE:Ljava/lang/String;

    .line 35
    const-string v0, "Error"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ERROR:Ljava/lang/String;

    .line 36
    const-string v0, "Impression"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_IMPRESSION:Ljava/lang/String;

    .line 37
    const-string v0, "Creatives"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CREATIVES:Ljava/lang/String;

    .line 38
    const-string v0, "Creative"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CREATIVE:Ljava/lang/String;

    .line 39
    const-string v0, "Linear"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_LINEAR:Ljava/lang/String;

    .line 40
    const-string v0, "CompanionAds"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COMPANIONADS:Ljava/lang/String;

    .line 41
    const-string v0, "Native"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_NATIVE:Ljava/lang/String;

    .line 42
    const-string v0, "Title"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TITLE:Ljava/lang/String;

    .line 43
    const-string v0, "body"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_BODY:Ljava/lang/String;

    .line 44
    const-string v0, "CoverImage"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COVER_IMAGE:Ljava/lang/String;

    .line 45
    const-string v0, "CallToAction"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CTA:Ljava/lang/String;

    .line 46
    const-string v0, "NativeClicks"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_NATIVE_CLICKS:Ljava/lang/String;

    .line 47
    const-string v0, "NonLinearAds"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_NONLINEAR_ADS:Ljava/lang/String;

    .line 48
    const-string v0, "NonLinear"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_NONLINEAR:Ljava/lang/String;

    .line 49
    const-string v0, "StaticResource"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_STATIC_RESOURCE:Ljava/lang/String;

    .line 50
    const-string v0, "Companion"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COMPANION:Ljava/lang/String;

    .line 51
    const-string v0, "CompanionClickThrough"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COMPANION_CLICK_THROUGH:Ljava/lang/String;

    .line 52
    const-string v0, "CompanionClickTracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COMPANION_CLICK_TRACKING:Ljava/lang/String;

    .line 53
    const-string v0, "HTMLResource"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_HTML_RESOURCE:Ljava/lang/String;

    .line 54
    const-string v0, "ClickTracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_HTML_CLICK_TRACKING:Ljava/lang/String;

    .line 55
    const-string v0, "Duration"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DURATION:Ljava/lang/String;

    .line 56
    const-string v0, "TrackingEvents"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TRACKING_EVENTS:Ljava/lang/String;

    .line 57
    const-string v0, "Tracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TRACKING:Ljava/lang/String;

    .line 58
    const-string v0, "event"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_EVENT:Ljava/lang/String;

    .line 59
    const-string v0, "skipoffset"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_SKIP_OFFSET:Ljava/lang/String;

    .line 60
    const-string v0, "counteroffset"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COUNTER_OFFSET:Ljava/lang/String;

    .line 61
    const-string v0, "counterstroke"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COUNTER_STROKE:Ljava/lang/String;

    .line 62
    const-string v0, "countersize"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_COUNTER_SIZE:Ljava/lang/String;

    .line 64
    const-string v0, "closebutton"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ClOSE_BTN_SIZE:Ljava/lang/String;

    .line 65
    const-string v0, "closelocation"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CLOSE_BTN_LOC:Ljava/lang/String;

    .line 66
    const-string v0, "id"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_OVERLAY_ID:Ljava/lang/String;

    .line 67
    const-string v0, "apiFramework"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_API_FRAMEWORK_ID:Ljava/lang/String;

    .line 68
    const-string v0, "VideoClicks"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VIDEO_CLICKS:Ljava/lang/String;

    .line 69
    const-string v0, "ClickThrough"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CLICK_THROUGH:Ljava/lang/String;

    .line 70
    const-string v0, "ClickTracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_CLICK_TRACKING:Ljava/lang/String;

    .line 71
    const-string v0, "MediaFiles"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_MEDIA_FILES:Ljava/lang/String;

    .line 72
    const-string v0, "MediaFile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_MEDIA_FILE:Ljava/lang/String;

    .line 74
    const-string v0, "Icons"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICONS:Ljava/lang/String;

    .line 75
    const-string v0, "Icon"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON:Ljava/lang/String;

    .line 76
    const-string v0, "IconClicks"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_CLICK:Ljava/lang/String;

    .line 77
    const-string v0, "IconClickTracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_CLICK_TRACKING:Ljava/lang/String;

    .line 78
    const-string v0, "IconClickThrough"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_CLICK_THROUGH:Ljava/lang/String;

    .line 79
    const-string v0, "IconViewTracking"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_VIEW_TRACKING:Ljava/lang/String;

    .line 80
    const-string v0, "StaticResource"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_STATIC_RESOURCE:Ljava/lang/String;

    .line 82
    const-string v0, "type"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_TYPE:Ljava/lang/String;

    .line 83
    const-string v0, "width"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_WIDTH:Ljava/lang/String;

    .line 84
    const-string v0, "height"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_HEIGHT:Ljava/lang/String;

    .line 85
    const-string v0, "program"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_PROGRAM:Ljava/lang/String;

    .line 86
    const-string v0, "duration"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_ICON_DURATION:Ljava/lang/String;

    .line 87
    const-string v0, "offset"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_OFFSET:Ljava/lang/String;

    .line 88
    const-string v0, "xPosition"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_XPOS:Ljava/lang/String;

    .line 89
    const-string v0, "yPosition"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_YPOS:Ljava/lang/String;

    .line 91
    const-string v0, "video/mp4"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VALUE_VIDEO_MP4:Ljava/lang/String;

    .line 92
    const-string v0, "video/mpeg"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_VALUE_VIDEO_MPEG:Ljava/lang/String;

    .line 93
    const-string v0, "delivery"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->TAG_DELIVERY:Ljava/lang/String;

    .line 95
    const-string v0, "start"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_START:Ljava/lang/String;

    .line 96
    const-string v0, "creativeView"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_CREATIVE_VIEW:Ljava/lang/String;

    .line 97
    const-string v0, "firstQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_FIRST_QUARTILE:Ljava/lang/String;

    .line 98
    const-string v0, "midpoint"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_MID_POINT:Ljava/lang/String;

    .line 99
    const-string v0, "thirdQuartile"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_THIRD_QUARTILE:Ljava/lang/String;

    .line 100
    const-string v0, "mute"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_MUTE:Ljava/lang/String;

    .line 101
    const-string v0, "unmute"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_UNMUTE:Ljava/lang/String;

    .line 102
    const-string v0, "pause"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_PAUSE:Ljava/lang/String;

    .line 103
    const-string v0, "resume"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_RESUME:Ljava/lang/String;

    .line 104
    const-string v0, "skip"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_SKIP:Ljava/lang/String;

    .line 105
    const-string v0, "complete"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->EVENT_COMPLETE:Ljava/lang/String;

    .line 107
    const-string v0, "progressive"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->MEDIA_DELIVERY_TYPE_PROGRESSIVE:Ljava/lang/String;

    .line 108
    const-string v0, "stream"

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->MEDIA_DELIVERY_TYPE_STREAM:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->isLinear:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastXmlParser;->mdotMNativeAd:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private getMediaDeliveryType(Lorg/w3c/dom/Node;)I
    .locals 3

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    const-string v1, "progressive"

    .line 1189
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1189
    if-eqz v1, :cond_1

    .line 1190
    const/4 v0, 0x1

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1191
    :cond_1
    const-string v1, "stream"

    .line 1192
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private parseNodeChildren(Lcom/mdotm/android/vast/VastAd;Lorg/w3c/dom/Node;)V
    .locals 23

    .prologue
    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    .line 171
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 172
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v3, v2, :cond_0

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " child parsing done"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    return-void

    .line 173
    :cond_0
    invoke-interface {v10, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 174
    const-string v4, "AdTitle"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    .line 176
    const-string v2, "SampleXMLParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad title = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "Description"

    .line 178
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 178
    if-eqz v4, :cond_4

    .line 179
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 180
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 181
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 180
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    .line 182
    :cond_3
    const-string v2, "SampleXMLParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "description = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_4
    const-string v4, "Error"

    .line 184
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/CharacterData;

    if-eqz v4, :cond_1

    .line 187
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 186
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 188
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 189
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v4, "SampleXMLParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_5
    const-string v4, "Impression"

    .line 194
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 194
    if-eqz v4, :cond_6

    .line 195
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/CharacterData;

    if-eqz v4, :cond_1

    .line 197
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 196
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 198
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 199
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v4, "SampleXMLParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "impression = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_6
    const-string v4, "Creatives"

    .line 204
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 204
    if-eqz v4, :cond_1

    .line 206
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 207
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 208
    invoke-interface {v11, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 209
    const-string v5, "Creative"

    .line 210
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 210
    if-eqz v5, :cond_7

    .line 212
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 213
    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v5, v2, :cond_8

    .line 207
    :cond_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 215
    :cond_8
    invoke-interface {v12, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 216
    const-string v2, "SampleXMLParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inside creatives name"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-static {v2, v6}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v2, "Linear"

    .line 219
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 219
    if-eqz v2, :cond_f

    .line 220
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mdotm/android/vast/VastXmlParser;->isLinear:Z

    .line 221
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mdotm/android/vast/VastAd;->isNonLinear:Z

    .line 224
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 225
    new-instance v14, Lcom/mdotm/android/vast/LinearAd;

    invoke-direct {v14}, Lcom/mdotm/android/vast/LinearAd;-><init>()V

    .line 226
    const/4 v6, 0x1

    iput v6, v14, Lcom/mdotm/android/vast/LinearAd;->adType:I

    .line 229
    const-string v6, "skipoffset"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 230
    if-eqz v6, :cond_9

    .line 231
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nodeOffset"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iput-object v6, v14, Lcom/mdotm/android/vast/LinearAd;->skipOffset:Ljava/lang/String;

    .line 237
    :cond_9
    const-string v6, "counteroffset"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 238
    if-eqz v6, :cond_a

    .line 239
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "counter offset"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iput-object v6, v14, Lcom/mdotm/android/vast/LinearAd;->counteroffset:Ljava/lang/String;

    .line 246
    :cond_a
    const-string v6, "countersize"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 247
    if-eqz v6, :cond_b

    .line 248
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 249
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "counter size"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object v6, v14, Lcom/mdotm/android/vast/LinearAd;->countersize:Ljava/lang/String;

    .line 254
    :cond_b
    const-string v6, "counterstroke"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_c

    .line 256
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nodeOffset"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iput-object v7, v14, Lcom/mdotm/android/vast/LinearAd;->counterstroke:Ljava/lang/String;

    .line 269
    :cond_c
    const-string v6, "closebutton"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_d

    .line 272
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "closebtn"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iput-object v6, v14, Lcom/mdotm/android/vast/LinearAd;->closeBtnSize:Ljava/lang/String;

    .line 279
    :cond_d
    const-string v6, "closelocation"

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_e

    .line 282
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "closeLoc"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iput-object v2, v14, Lcom/mdotm/android/vast/LinearAd;->closeBtnLocation:Ljava/lang/String;

    .line 289
    :cond_e
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 290
    const/4 v2, 0x0

    move v6, v2

    .line 291
    :goto_4
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 290
    if-lt v6, v2, :cond_13

    .line 605
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_f
    const-string v2, "CompanionAds"

    .line 611
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 611
    if-eqz v2, :cond_10

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Inside companion static image"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 616
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mdotm/android/vast/VastXmlParser;->isLinear:Z

    if-eqz v2, :cond_32

    .line 619
    const-string v2, "Inside companion static image"

    .line 618
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    .line 622
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Inside companion ad"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 626
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    const/4 v2, 0x0

    move v6, v2

    .line 629
    :goto_5
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 628
    if-lt v6, v2, :cond_27

    .line 966
    :cond_10
    const-string v2, "Native"

    .line 968
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 967
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 968
    if-eqz v2, :cond_12

    .line 970
    new-instance v2, Lcom/mdotm/android/vast/MdotMVastNative;

    invoke-direct {v2}, Lcom/mdotm/android/vast/MdotMVastNative;-><init>()V

    .line 971
    new-instance v8, Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-direct {v8}, Lcom/mdotm/android/nativeads/MdotMNativeAd;-><init>()V

    .line 973
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    .line 974
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setNativeImpressionTrackingURL(Ljava/util/ArrayList;)V

    .line 981
    :cond_11
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 982
    const/4 v2, 0x0

    move v6, v2

    .line 983
    :goto_6
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 982
    if-lt v6, v2, :cond_3a

    .line 1130
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setAdType(I)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mdotm/android/vast/VastXmlParser;->mdotMNativeAd:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_12
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_3

    .line 293
    :cond_13
    invoke-interface {v15, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 294
    const-string v7, "Duration"

    .line 296
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 296
    if-eqz v7, :cond_15

    .line 298
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 297
    iput-object v2, v14, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    .line 291
    :cond_14
    :goto_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_4

    .line 301
    :cond_15
    const-string v7, "TrackingEvents"

    .line 303
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 303
    if-eqz v7, :cond_18

    .line 305
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 306
    new-instance v8, Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    invoke-direct {v8}, Lcom/mdotm/android/vast/LinearAdTrackingEvents;-><init>()V

    .line 307
    const/4 v2, 0x0

    .line 308
    :goto_8
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 307
    if-lt v2, v9, :cond_16

    .line 320
    invoke-virtual {v14, v8}, Lcom/mdotm/android/vast/LinearAd;->setTrackingEvents(Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V

    goto :goto_7

    .line 310
    :cond_16
    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 311
    const-string v16, "Tracking"

    .line 313
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    .line 312
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 313
    if-eqz v16, :cond_17

    .line 314
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/mdotm/android/vast/VastXmlParser;->setLinearTrackingEvent(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V

    .line 308
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 321
    :cond_18
    const-string v7, "VideoClicks"

    .line 323
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 323
    if-eqz v7, :cond_1b

    .line 325
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 326
    const/4 v2, 0x0

    move v7, v2

    .line 327
    :goto_9
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 326
    if-ge v7, v2, :cond_14

    .line 329
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 330
    const-string v9, "ClickThrough"

    .line 332
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 331
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 332
    if-eqz v9, :cond_1a

    .line 334
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 333
    instance-of v9, v9, Lorg/w3c/dom/CharacterData;

    .line 334
    if-eqz v9, :cond_19

    .line 336
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 335
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 338
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 340
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v9, "SampleXMLParser"

    .line 343
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "TAG_CLICK_THROUGH "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v9, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    :cond_19
    :goto_a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_9

    .line 349
    :cond_1a
    const-string v9, "ClickTracking"

    .line 351
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 350
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 351
    if-eqz v9, :cond_19

    .line 353
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 352
    instance-of v9, v9, Lorg/w3c/dom/CharacterData;

    .line 353
    if-eqz v9, :cond_19

    .line 355
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 354
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 357
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 359
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->videoClickTracking:Ljava/util/ArrayList;

    .line 360
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v9, "SampleXMLParser"

    .line 362
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "TAG_CLICK_TRACKING "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v9, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 370
    :cond_1b
    const-string v7, "MediaFiles"

    .line 372
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 371
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 372
    if-eqz v7, :cond_1e

    .line 376
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 377
    const/4 v2, 0x0

    move v7, v2

    .line 378
    :goto_b
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 377
    if-ge v7, v2, :cond_14

    .line 380
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 381
    const-string v9, "MediaFile"

    .line 383
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 382
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 383
    if-eqz v9, :cond_1d

    .line 387
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 389
    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 394
    const-string v17, "video/mp4"

    .line 396
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 395
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    .line 396
    if-nez v17, :cond_1c

    .line 397
    const-string v17, "video/mpeg"

    .line 399
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 398
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 399
    if-eqz v16, :cond_1d

    .line 404
    :cond_1c
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    .line 403
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v16, v0

    .line 404
    if-eqz v16, :cond_1d

    .line 409
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 408
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 411
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 414
    const-string v16, "delivery"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mdotm/android/vast/VastXmlParser;->getMediaDeliveryType(Lorg/w3c/dom/Node;)I

    move-result v9

    .line 416
    new-instance v16, Lcom/mdotm/android/vast/AdResource;

    invoke-direct/range {v16 .. v16}, Lcom/mdotm/android/vast/AdResource;-><init>()V

    .line 417
    move-object/from16 v0, v16

    iput v9, v0, Lcom/mdotm/android/vast/AdResource;->delivery:I

    .line 418
    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/mdotm/android/vast/AdResource;->url:Ljava/lang/String;

    .line 419
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    .line 378
    :cond_1d
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_b

    .line 430
    :cond_1e
    const-string v7, "Icons"

    .line 432
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 432
    if-eqz v7, :cond_14

    .line 436
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 437
    const/4 v2, 0x0

    move v7, v2

    .line 438
    :goto_c
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 437
    if-ge v7, v2, :cond_14

    .line 440
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 441
    const-string v2, "Icon"

    .line 443
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 443
    if-eqz v2, :cond_1f

    .line 444
    new-instance v2, Lcom/mdotm/android/vast/VastIcons;

    invoke-direct {v2}, Lcom/mdotm/android/vast/VastIcons;-><init>()V

    iput-object v2, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    .line 448
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 450
    const-string v8, "program"

    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 453
    const-string v8, "width"

    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 454
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v9, Lcom/mdotm/android/vast/VastIcons;->iconWidth:I

    .line 456
    const-string v8, "height"

    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 457
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lcom/mdotm/android/vast/VastIcons;->iconHeight:I

    .line 459
    const-string v9, "duration"

    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 460
    iget-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    move-object/from16 v18, v0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/mdotm/android/vast/VastIcons;->iconDuration:Ljava/lang/String;

    .line 462
    const-string v9, "offset"

    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 463
    iget-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    move-object/from16 v18, v0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/mdotm/android/vast/VastIcons;->iconOffset:Ljava/lang/String;

    .line 465
    const-string v9, "xPosition"

    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 466
    iget-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    move-object/from16 v18, v0

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/mdotm/android/vast/VastIcons;->iconXpos:Ljava/lang/String;

    .line 468
    const-string v9, "yPosition"

    invoke-interface {v2, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 469
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/mdotm/android/vast/VastIcons;->iconYpos:Ljava/lang/String;

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Icon Height"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 476
    const/4 v2, 0x0

    move v8, v2

    .line 477
    :goto_d
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 476
    if-lt v8, v2, :cond_20

    .line 438
    :cond_1f
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_c

    .line 478
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Icon child size"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 482
    const-string v2, "StaticResource"

    .line 484
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 483
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 484
    if-eqz v2, :cond_21

    .line 485
    const-string v2, "Icon  has Static Resourece"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 486
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 487
    if-eqz v2, :cond_21

    .line 490
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 489
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 492
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 494
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v20, "Icon resourece"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iput-object v2, v9, Lcom/mdotm/android/vast/VastIcons;->iconResource:Ljava/lang/String;

    .line 497
    const/4 v9, 0x0

    .line 499
    :try_start_0
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 513
    :goto_e
    if-eqz v2, :cond_21

    .line 515
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 516
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 517
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 518
    iget-object v2, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v2, Lcom/mdotm/android/vast/VastIcons;->iconImagebyteArray:[B

    .line 524
    :cond_21
    const-string v2, "IconViewTracking"

    .line 526
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 525
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 526
    if-eqz v2, :cond_22

    .line 527
    const-string v2, "Icon  has Static Resourece"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 528
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 529
    if-eqz v2, :cond_22

    .line 532
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 531
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 534
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 536
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v20, "Icon TAG_ICON_VIEW_TRACKING"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v9, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    iget-object v9, v9, Lcom/mdotm/android/vast/VastIcons;->iconCreativeView:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_22
    const-string v2, "IconClicks"

    .line 545
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 544
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 545
    if-eqz v2, :cond_23

    .line 548
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 549
    const/4 v2, 0x0

    move v9, v2

    .line 550
    :goto_f
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 549
    if-lt v9, v2, :cond_24

    .line 477
    :cond_23
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_d

    .line 502
    :catch_0
    move-exception v2

    .line 506
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v2, v9

    goto/16 :goto_e

    .line 507
    :catch_1
    move-exception v2

    .line 511
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v9

    goto/16 :goto_e

    .line 552
    :cond_24
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 554
    const-string v2, "IconClickThrough"

    .line 556
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    .line 555
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 556
    if-eqz v2, :cond_25

    .line 558
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 557
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 558
    if-eqz v2, :cond_25

    .line 561
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 560
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 563
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 565
    iget-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/mdotm/android/vast/VastIcons;->iconClickThrough:Ljava/lang/String;

    .line 566
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Icon through"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    :cond_25
    const-string v2, "IconClickTracking"

    .line 573
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    .line 572
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 573
    if-eqz v2, :cond_26

    .line 575
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 574
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 575
    if-eqz v2, :cond_26

    .line 578
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 577
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 580
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 582
    iget-object v0, v14, Lcom/mdotm/android/vast/LinearAd;->icon:Lcom/mdotm/android/vast/VastIcons;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mdotm/android/vast/VastIcons;->iconClickTracking:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Icon tracking"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    :cond_26
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_f

    .line 631
    :cond_27
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 633
    const-string v7, "Companion"

    .line 635
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 634
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 635
    if-eqz v7, :cond_28

    .line 638
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Inside companion tag"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 639
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 638
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 637
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Inside companion child size "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    .line 646
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 645
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    new-instance v15, Lcom/mdotm/android/vast/Companion;

    invoke-direct {v15}, Lcom/mdotm/android/vast/Companion;-><init>()V

    .line 650
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickThrough:Ljava/lang/String;

    .line 651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickTracking:Ljava/util/ArrayList;

    .line 652
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionCreativeViewList:Ljava/util/ArrayList;

    .line 654
    const/4 v2, 0x0

    move v7, v2

    .line 655
    :goto_10
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 654
    if-lt v7, v2, :cond_29

    .line 840
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_28
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_5

    .line 658
    :cond_29
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Inside companion"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 664
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 663
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    const-string v2, "StaticResource"

    .line 669
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 668
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 669
    if-eqz v2, :cond_2c

    .line 670
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->staticResource:Ljava/lang/String;

    .line 671
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    .line 672
    const/4 v2, 0x0

    sput-object v2, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    .line 674
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 673
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 674
    if-eqz v2, :cond_2a

    .line 676
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 675
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 678
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 679
    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->staticResource:Ljava/lang/String;

    .line 682
    const-string v8, "SampleXMLParser"

    .line 683
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " inside TAG_STATIC_RESOURCE = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 683
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 682
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    const/4 v8, 0x0

    .line 687
    :try_start_1
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 701
    :goto_11
    if-eqz v2, :cond_2a

    .line 703
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 704
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 705
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 706
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    .line 713
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "staticResource"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 714
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 713
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    :cond_2b
    :goto_12
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_10

    .line 690
    :catch_2
    move-exception v2

    .line 694
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v2, v8

    goto :goto_11

    .line 695
    :catch_3
    move-exception v2

    .line 699
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v8

    goto :goto_11

    .line 717
    :cond_2c
    const-string v2, "HTMLResource"

    .line 719
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 718
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 719
    if-eqz v2, :cond_2e

    .line 720
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->staticResource:Ljava/lang/String;

    .line 721
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionImageByteArray:[B

    .line 722
    const/4 v2, 0x0

    sput-object v2, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    .line 724
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 723
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 724
    if-eqz v2, :cond_2d

    .line 726
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 725
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 728
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 729
    sput-object v2, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    .line 732
    const-string v8, "SampleXMLParser"

    .line 733
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " inside TAG_HTML_RESOURCE = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 733
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-static {v8, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "htmlResource"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 759
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 758
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 757
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    .line 763
    :cond_2e
    const-string v2, "CompanionClickThrough"

    .line 765
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 764
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 765
    if-eqz v2, :cond_2f

    .line 767
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 766
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 767
    if-eqz v2, :cond_2b

    .line 769
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 768
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 771
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 772
    iput-object v2, v15, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickThrough:Ljava/lang/String;

    .line 775
    const-string v8, "SampleXMLParser"

    .line 776
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, " inside TAG_COMPANION_CLICK_THROUGH = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 776
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-static {v8, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 780
    :cond_2f
    const-string v2, "CompanionClickTracking"

    .line 782
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 781
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 782
    if-eqz v2, :cond_30

    .line 784
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 783
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 784
    if-eqz v2, :cond_2b

    .line 786
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 785
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 788
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 791
    const-string v8, "SampleXMLParser"

    .line 792
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, " inside TAG_COMPANION_CLICK_TRACKING = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 792
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 791
    move-object/from16 v0, v16

    invoke-static {v8, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    iget-object v8, v15, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickTracking:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 799
    :cond_30
    const-string v2, "TrackingEvents"

    .line 801
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 800
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 801
    if-eqz v2, :cond_2b

    .line 803
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 805
    const-string v2, "SampleXMLParser"

    .line 806
    const-string v8, " inside Tracking event"

    .line 805
    invoke-static {v2, v8}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    const/4 v2, 0x0

    move v8, v2

    .line 808
    :goto_13
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 807
    if-ge v8, v2, :cond_2b

    .line 811
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 812
    const-string v17, "Tracking"

    .line 814
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    .line 813
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    .line 814
    if-eqz v17, :cond_31

    .line 816
    const-string v17, "SampleXMLParser"

    .line 817
    const-string v18, " inside Tracking"

    .line 816
    invoke-static/range {v17 .. v18}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    .line 818
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    move/from16 v17, v0

    .line 819
    if-eqz v17, :cond_31

    .line 821
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 820
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 823
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 824
    iget-object v0, v15, Lcom/mdotm/android/vast/Companion;->companionCreativeViewList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 825
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    const-string v17, "SampleXMLParser"

    .line 829
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " inside TAG_COMPANION_CLICK_TRACKING = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    :cond_31
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_13

    .line 845
    :cond_32
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mdotm/android/vast/VastAd;->isNonLinear:Z

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Inside companion ad"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Inside companion ad"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 854
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 853
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 851
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    const/4 v2, 0x0

    move v6, v2

    .line 857
    :goto_14
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 856
    if-ge v6, v2, :cond_10

    .line 859
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 862
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Inside companion"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    .line 863
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 862
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 861
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    const-string v7, "Companion"

    .line 867
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 866
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 867
    if-eqz v7, :cond_36

    .line 869
    const-string v7, "Inside companion"

    .line 868
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 874
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 876
    new-instance v14, Lcom/mdotm/android/vast/Companion;

    invoke-direct {v14}, Lcom/mdotm/android/vast/Companion;-><init>()V

    .line 877
    const/4 v7, 0x3

    iput v7, v14, Lcom/mdotm/android/vast/Companion;->adType:I

    .line 881
    const-string v7, "skipoffset"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 882
    if-eqz v7, :cond_33

    .line 884
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 883
    iput-object v15, v14, Lcom/mdotm/android/vast/Companion;->skipOffset:Ljava/lang/String;

    .line 887
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "nodeMap"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 888
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 887
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 886
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    :cond_33
    const-string v7, "closelocation"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 894
    if-eqz v7, :cond_34

    .line 897
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "nodeMap"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 898
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 897
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 896
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 900
    iput-object v7, v14, Lcom/mdotm/android/vast/Companion;->closeBtnLocation:Ljava/lang/String;

    .line 904
    :cond_34
    const-string v7, "closebutton"

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 905
    if-eqz v2, :cond_35

    .line 907
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 906
    iput-object v7, v14, Lcom/mdotm/android/vast/Companion;->closeBtnSize:Ljava/lang/String;

    .line 910
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "nodeMap"

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 910
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 909
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    :cond_35
    const/4 v2, 0x0

    move v7, v2

    .line 916
    :goto_15
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 915
    if-lt v7, v2, :cond_37

    .line 857
    :cond_36
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_14

    .line 919
    :cond_37
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v16, "Inside companion"

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 924
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 923
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    const-string v2, "HTMLResource"

    .line 927
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 926
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 927
    if-eqz v2, :cond_38

    .line 929
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 928
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 932
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "htmlResource "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 932
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 934
    sput-object v2, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    .line 938
    :cond_38
    const-string v2, "ClickTracking"

    .line 940
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 939
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 940
    if-eqz v2, :cond_39

    .line 943
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 942
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 943
    if-eqz v2, :cond_39

    .line 945
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 944
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 947
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 948
    iget-object v15, v14, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTracking:Ljava/util/ArrayList;

    .line 949
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    const-string v15, "SampleXMLParser"

    .line 952
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "TAG_CLICK_TRACKING "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 952
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    invoke-static {v15, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    :cond_39
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_15

    .line 985
    :cond_3a
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "Inside Native"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 989
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 988
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    const-string v2, "Icon"

    .line 996
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 995
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 996
    if-eqz v2, :cond_3b

    .line 998
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 997
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 998
    if-eqz v2, :cond_3b

    .line 1001
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1000
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1003
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1004
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1005
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Native Icon"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setIcon(Ljava/lang/String;)V

    .line 1011
    :cond_3b
    const-string v2, "body"

    .line 1013
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1012
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1013
    if-eqz v2, :cond_3c

    .line 1015
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1014
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1015
    if-eqz v2, :cond_3c

    .line 1018
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1017
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1020
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1022
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Native body"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setBody(Ljava/lang/String;)V

    .line 1028
    :cond_3c
    const-string v2, "CoverImage"

    .line 1030
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1029
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1030
    if-eqz v2, :cond_3d

    .line 1032
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1031
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1032
    if-eqz v2, :cond_3d

    .line 1035
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1034
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1037
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1039
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Native cover"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setCoverImage(Ljava/lang/String;)V

    .line 1045
    :cond_3d
    const-string v2, "Title"

    .line 1047
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1046
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1047
    if-eqz v2, :cond_3e

    .line 1049
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1048
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1049
    if-eqz v2, :cond_3e

    .line 1052
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1051
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1054
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1056
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Native title"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setTitle(Ljava/lang/String;)V

    .line 1062
    :cond_3e
    const-string v2, "CallToAction"

    .line 1064
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1063
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1064
    if-eqz v2, :cond_3f

    .line 1066
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1065
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1066
    if-eqz v2, :cond_3f

    .line 1069
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1068
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1071
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1073
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Native CTA"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setCallToAction(Ljava/lang/String;)V

    .line 1079
    :cond_3f
    const-string v2, "NativeClicks"

    .line 1081
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 1080
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1081
    if-eqz v2, :cond_40

    .line 1083
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1084
    const/4 v2, 0x0

    move v7, v2

    .line 1085
    :goto_16
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 1084
    if-lt v7, v2, :cond_41

    .line 983
    :cond_40
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_6

    .line 1087
    :cond_41
    invoke-interface {v13, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 1089
    const-string v2, "ClickThrough"

    .line 1091
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 1090
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1091
    if-eqz v2, :cond_42

    .line 1093
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1092
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1093
    if-eqz v2, :cond_42

    .line 1096
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1095
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1098
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1099
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1100
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Native ClickThrough"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setNativeClickThrough(Ljava/lang/String;)V

    .line 1106
    :cond_42
    const-string v2, "ClickTracking"

    .line 1108
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    .line 1107
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1108
    if-eqz v2, :cond_43

    .line 1110
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1109
    instance-of v2, v2, Lorg/w3c/dom/CharacterData;

    .line 1110
    if-eqz v2, :cond_43

    .line 1113
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1112
    check-cast v2, Lorg/w3c/dom/CharacterData;

    .line 1115
    invoke-interface {v2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1117
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Native ClickTracking"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v8, v2}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->setNativeClickTrackingURL(Ljava/lang/String;)V

    .line 1085
    :cond_43
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_16
.end method

.method private setLinearTrackingEvent(Lorg/w3c/dom/Node;Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V
    .locals 3

    .prologue
    .line 1150
    .line 1151
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1153
    const-string v1, "event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1154
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1155
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/CharacterData;

    if-eqz v0, :cond_0

    .line 1157
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1156
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 1158
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1160
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->start:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    const-string v2, "creativeView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1163
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->creativeView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1164
    :cond_2
    const-string v2, "firstQuartile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1165
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->firstQuartile:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_3
    const-string v2, "midpoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1167
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->midPoint:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1168
    :cond_4
    const-string v2, "thirdQuartile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1169
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->thirdQuartile:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    :cond_5
    const-string v2, "complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1171
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->complete:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    :cond_6
    const-string v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1173
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->mute:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    :cond_7
    const-string v2, "unmute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1175
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->unMute:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1176
    :cond_8
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1177
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->pause:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1178
    :cond_9
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1179
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->resume:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_a
    const-string v2, "skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p2, Lcom/mdotm/android/vast/LinearAdTrackingEvents;->skip:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public parseResponse(Ljava/lang/String;)Lcom/mdotm/android/vast/VastAd;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The response is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/mdotm/android/vast/VastAd;

    invoke-direct {v0}, Lcom/mdotm/android/vast/VastAd;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 117
    :cond_0
    const-string v1, "The response is : null"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 166
    :cond_1
    :goto_0
    return-object v0

    .line 121
    :cond_2
    invoke-virtual {v0, v3}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 124
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 127
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 129
    new-instance v3, Lorg/xml/sax/InputSource;

    .line 130
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 129
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    .line 133
    const-string v3, "Ad"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 135
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    move v3, v2

    .line 137
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 138
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 140
    if-eqz v5, :cond_3

    .line 141
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    .line 142
    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v1, v6, :cond_4

    .line 137
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 143
    :cond_4
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 144
    const-string v7, "InLine"

    .line 145
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 145
    if-eqz v7, :cond_5

    .line 146
    invoke-direct {p0, v0, v6}, Lcom/mdotm/android/vast/VastXmlParser;->parseNodeChildren(Lcom/mdotm/android/vast/VastAd;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 142
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :catch_0
    move-exception v1

    .line 154
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 155
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 158
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 159
    :catch_2
    move-exception v1

    .line 160
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    :catch_3
    move-exception v1

    .line 163
    invoke-virtual {v0, v2}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
