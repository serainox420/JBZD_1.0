.class public Lcom/mopub/mobileads/VastExtensionXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionXmlManager.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIDEO_VIEWABILITY_TRACKER:Ljava/lang/String; = "MoPubViewabilityTracker"


# instance fields
.field private final a:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    .line 28
    return-void
.end method


# virtual methods
.method a()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v2, "MoPubViewabilityTracker"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    new-instance v2, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 46
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->a()Ljava/lang/Integer;

    move-result-object v1

    .line 47
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->b()Ljava/lang/Integer;

    move-result-object v3

    .line 48
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->c()Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTracker;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
