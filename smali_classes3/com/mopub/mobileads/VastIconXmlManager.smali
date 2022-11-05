.class public Lcom/mopub/mobileads/VastIconXmlManager;
.super Ljava/lang/Object;
.source "VastIconXmlManager.java"


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ICON_CLICKS:Ljava/lang/String; = "IconClicks"

.field public static final ICON_CLICK_THROUGH:Ljava/lang/String; = "IconClickThrough"

.field public static final ICON_CLICK_TRACKING:Ljava/lang/String; = "IconClickTracking"

.field public static final ICON_VIEW_TRACKING:Ljava/lang/String; = "IconViewTracking"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final a:Lorg/w3c/dom/Node;

.field private final b:Lcom/mopub/mobileads/VastResourceXmlManager;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    .line 39
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 40
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "offset"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    const-string v2, "Invalid VAST icon offset format: %s:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method d()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "duration"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    const-string v2, "Invalid VAST icon duration format: %s:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method e()Lcom/mopub/mobileads/VastResourceXmlManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    if-nez v0, :cond_0

    move-object v0, v1

    .line 125
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v2, "IconClickTracking"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 120
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string v1, "IconClickThrough"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconXmlManager;->a:Lorg/w3c/dom/Node;

    const-string v1, "IconViewTracking"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 147
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    return-object v1
.end method
