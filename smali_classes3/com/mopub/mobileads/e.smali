.class abstract Lcom/mopub/mobileads/e;
.super Ljava/lang/Object;
.source "VastBaseInLineWrapperXmlManager.java"


# instance fields
.field protected final a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    .line 32
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
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
    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    const-string v1, "Impression"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
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

    .line 46
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    return-object v1
.end method

.method b()Ljava/util/List;
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
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    const-string v2, "Error"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    move-object v0, v1

    .line 74
    :goto_0
    return-object v0

    .line 68
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

    .line 69
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    const-string v2, "Creatives"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    move-object v0, v1

    .line 104
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string v2, "Creative"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 94
    if-nez v0, :cond_1

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 99
    const-string v3, "Linear"

    invoke-static {v0, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    new-instance v3, Lcom/mopub/mobileads/i;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/i;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 104
    goto :goto_0
.end method

.method d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    const-string v2, "Creatives"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v2, "Creative"

    invoke-static {v0, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 128
    const-string v3, "CompanionAds"

    invoke-static {v0, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 133
    const-string v3, "Companion"

    invoke-static {v0, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 139
    new-instance v4, Lcom/mopub/mobileads/f;

    invoke-direct {v4, v0}, Lcom/mopub/mobileads/f;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method e()Lcom/mopub/mobileads/VastExtensionParentXmlManager;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/e;->a:Lorg/w3c/dom/Node;

    const-string v1, "Extensions"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 155
    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method
