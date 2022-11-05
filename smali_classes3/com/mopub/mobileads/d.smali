.class Lcom/mopub/mobileads/d;
.super Ljava/lang/Object;
.source "VastAdXmlManager.java"


# instance fields
.field private final a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/d;->a:Lorg/w3c/dom/Node;

    .line 32
    return-void
.end method


# virtual methods
.method a()Lcom/mopub/mobileads/h;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/d;->a:Lorg/w3c/dom/Node;

    const-string v1, "InLine"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Lcom/mopub/mobileads/h;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/h;-><init>(Lorg/w3c/dom/Node;)V

    .line 46
    :cond_0
    return-object v0
.end method

.method b()Lcom/mopub/mobileads/n;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/d;->a:Lorg/w3c/dom/Node;

    const-string v1, "Wrapper"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/mopub/mobileads/n;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/n;-><init>(Lorg/w3c/dom/Node;)V

    .line 61
    :cond_0
    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/d;->a:Lorg/w3c/dom/Node;

    const-string v1, "sequence"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
