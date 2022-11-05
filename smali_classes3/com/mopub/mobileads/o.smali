.class Lcom/mopub/mobileads/o;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# instance fields
.field private a:Lorg/w3c/dom/Document;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v2, "Ad"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 94
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 95
    new-instance v3, Lcom/mopub/mobileads/d;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mopub/mobileads/d;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 97
    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "xmlString cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const-string v0, "<\\?.*\\?>"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<MPMoVideoXMLDocRoot>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 73
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 74
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    .line 75
    return-void
.end method

.method b()Lcom/mopub/mobileads/VastTracker;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v2, "Error"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v0, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method c()Ljava/util/List;
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
    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v1, "MP_TRACKING_URL"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getStringDataAsList(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    return-object v1
.end method

.method d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v1, "MoPubCtaText"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v1, "MoPubSkipText"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v1, "MoPubCloseIcon"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/o;->a:Lorg/w3c/dom/Document;

    const-string v1, "MoPubForceOrientation"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingStringData(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->getForceOrientation(Ljava/lang/String;)Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    return-object v0
.end method
