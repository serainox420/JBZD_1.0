.class public Lcom/openx/model/vast/CompanionAds;
.super Lcom/openx/model/vast/VASTParserBase;
.source "CompanionAds.java"


# static fields
.field public static final VAST_COMPANION:Ljava/lang/String; = "Companion"

.field public static final VAST_COMPANIONADS:Ljava/lang/String; = "CompanionAds"

.field private static final serialVersionUID:J = -0xe7ea9d341ef28ccL


# instance fields
.field public companionAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Companion;",
            ">;"
        }
    .end annotation
.end field

.field public required:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/CompanionAds;->companionAds:Ljava/util/ArrayList;

    .line 23
    const-string v0, "CompanionAds"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "required"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/CompanionAds;->required:Ljava/lang/String;

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "Companion"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/openx/model/vast/CompanionAds;->companionAds:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Companion;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Companion;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "Companion"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/CompanionAds;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method
