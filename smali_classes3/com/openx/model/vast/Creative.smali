.class public Lcom/openx/model/vast/Creative;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Creative.java"


# static fields
.field private static final VAST_COMPANIONADS:Ljava/lang/String; = "CompanionAds"

.field public static final VAST_CREATIVE:Ljava/lang/String; = "Creative"

.field private static final VAST_CREATIVEEXTENSTONS:Ljava/lang/String; = "CreativeExtensions"

.field private static final VAST_LINEAR:Ljava/lang/String; = "Linear"

.field private static final VAST_NONLINEARADS:Ljava/lang/String; = "NonLinearAds"

.field private static final serialVersionUID:J = -0x2a857d8e831f545fL


# instance fields
.field public adID:Ljava/lang/String;

.field public apiFramework:Ljava/lang/String;

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

.field public creativeExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/CreativeExtension;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public linear:Lcom/openx/model/vast/Linear;

.field public nonLinearAds:Lcom/openx/model/vast/NonLinearAds;

.field public sequence:Ljava/lang/String;


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

    .line 29
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 31
    const-string v0, "Creative"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "id"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->id:Ljava/lang/String;

    .line 34
    const-string v0, "sequence"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->sequence:Ljava/lang/String;

    .line 35
    const-string v0, "adID"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->adID:Ljava/lang/String;

    .line 36
    const-string v0, "apiFramework"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->apiFramework:Ljava/lang/String;

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    const-string v1, "CreativeExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v0, "CreativeExtensions"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/openx/model/vast/CreativeExtensions;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/CreativeExtensions;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/CreativeExtensions;->creativeExtenstions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->creativeExtensions:Ljava/util/ArrayList;

    .line 49
    const-string v0, "CreativeExtensions"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v0, "Linear"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/openx/model/vast/Linear;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Linear;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->linear:Lcom/openx/model/vast/Linear;

    .line 55
    const-string v0, "Linear"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "CompanionAds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const-string v0, "CompanionAds"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/openx/model/vast/CompanionAds;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/CompanionAds;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/CompanionAds;->companionAds:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->companionAds:Ljava/util/ArrayList;

    .line 61
    const-string v0, "CompanionAds"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "NonLinearAds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    const-string v0, "NonLinearAds"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/openx/model/vast/NonLinearAds;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/NonLinearAds;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Creative;->nonLinearAds:Lcom/openx/model/vast/NonLinearAds;

    .line 67
    const-string v0, "NonLinearAds"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Creative;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 75
    :cond_5
    return-void
.end method
