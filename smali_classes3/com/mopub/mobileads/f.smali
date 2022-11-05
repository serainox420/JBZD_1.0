.class Lcom/mopub/mobileads/f;
.super Ljava/lang/Object;
.source "VastCompanionAdXmlManager.java"


# instance fields
.field private final a:Lorg/w3c/dom/Node;

.field private final b:Lcom/mopub/mobileads/VastResourceXmlManager;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "companionNode cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    .line 42
    new-instance v0, Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastResourceXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/mopub/mobileads/f;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    .line 43
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v1, "adSlotID"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/mopub/mobileads/VastResourceXmlManager;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/f;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

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
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v2, "CompanionClickTracking"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 109
    :cond_0
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

    .line 110
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 115
    goto :goto_0
.end method

.method g()Ljava/util/List;
    .locals 5
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
    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    move-object v0, v1

    .line 149
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-string v2, "Tracking"

    const-string v3, "event"

    const-string v4, "creativeView"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 145
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 149
    goto :goto_0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/f;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/f;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/f;->b:Lcom/mopub/mobileads/VastResourceXmlManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastResourceXmlManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
